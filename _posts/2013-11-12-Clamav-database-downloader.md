---
layout: post
title: "Clamav database downloader"
date: 2013-11-12
comments: true
categories:
---

I’ve been writing a simple AV in python and used the Clamav signature database ( one of few av databases you can come by ). Though it is a bit of a hack grabbing it as you need to remove the first 512 bytes from the file as thats the Clamav signature.

With it removed it’s just a simple .tar.gz file!

I’ve made a python script with support for both download the whole database and update it.
Though it may look a bit messy it works flawlessy, if you use it correct ;) Give a comment with error messages if it fails.

```python
#Clamav database fetcher and unpacker.
#Made by Tomasuh/Axel Olsson at tomsonsec.com
#For contact: tomasuh [at] tomsonsec.com
import sys,tarfile,os,shutil,stat,urllib2,random 
class ClamAvDatabase(object):

    wantedFiles = ["main.db","main.fp","main.hdb","main.info","main.mdb","main.ndb","main.zmd"]
 
    def __init__(self):
        if len (sys.argv) != 2:
            print "Usage:" + sys.argv[0] + " maindb/update"
            sys.exit()
 
        if sys.argv[1]=="maindb":
            self.dlDatabase("http://db.local.clamav.net/main.cvd")
            self.cleanup()
            self.removeHeader()
            self.extractFiles("clamavDB")
        elif sys.argv[1]=="update":
            self.dlDatabase("http://db.local.clamav.net/daily.cvd")
            directoryName = self.tempPath()
            self.removeHeader()
            self.extractFiles(directoryName)
            self.updateFiles(directoryName,"clamavDB/")
            self.rmPath(directoryName)
            sys.exit()
 
    #Downloads specified url and saves to test.cv
    def dlDatabase(self,url):
        self.makeWritable("","test.cvd")
        dl = urllib2.urlopen(url)
        meta = dl.info()
        fileSize = int(meta.getheaders("Content-Length")[0])
        fileDataSave=""
        print "Downloading database, this might take a minute or two."
        #I know this aint memory sufficent for shit, but hey, I hope you can spare 60 MB of RAM.
        while True:
            fileData = dl.read(8024)
            if not fileData:
                break
            fileDataSave+=fileData
            progress = ((len(fileDataSave)*10/fileSize))
            sys.stdout.write ("\r"+"["+"*" * progress + " " * (10 - progress)+ "]")
            sys.stdout.flush()
        print "\n"
        with open("test.cvd","wb") as f:
            f.write(fileDataSave)
 
    #Makes file writable if not.
    def makeWritable(self,directory,fileN):
        if os.path.isfile(directory+fileN):
            if(not os.access(directory+fileN,os.W_OK)):
                os.chmod(directory+fileN, stat.S_IWRITE)
 
    #Cleanup from last download
    def cleanup(self):
        if os.access("clamavDB", os.F_OK):
            answ = raw_input("Directory clamavDB already exists, remove previous db files to avoid collisions? yes/no/abort\n")
            if answ=="yes":
                #Would be so more neat with just a rmtree for
                #the whole clamavDB and recreate the directory,
                #but wth, I want this to look good (and keep unassociated files)
                self.makeWritable("clamavDB","")
 
                for fileOrDirectory in os.listdir("clamavDB"):
                    #We only need to remove the ones we are gonna replace.
                    if fileOrDirectory in self.wantedFiles:
                        self.makeWritable("clamavDB/", fileOrDirectory)
                        if os.path.isdir("clamavDB/"+fileOrDirectory):
                            shutil.rmtree("clamavDB/"+fileOrDirectory,True)
                        else:
                            os.remove("clamavDB/"+fileOrDirectory)
 
            elif answ=="no":
                print "Your fault if anything goes wrong but lets do this!"
 
            else:
                print "Aborting"
                sys.exit()
        else:
            os.mkdir("clamavDB")
 
    #Extracts the tar.gz
    def extractFiles(self,directory):
        extract = tarfile.open("test.cvd", "r:gz")
        try:
            for files in self.wantedFiles:
                extract.extract(files,directory)
        except: # add exact exception
            extract.extractall(directory)
 
        extract.close()
        self.makeWritable("","test.cvd")
        os.remove("test.cvd")
 
    #r+b mode dosn't seem to work with binary files, weird.
    def removeHeader (self):
        with open("test.cvd","rb") as f1:
            data = f1.read()[512:]
        with open("test.cvd", "wb") as f2:
            f2.write(data)
 
    #Fetches the update files with the correct file extension and appends them to the corresponding in the clamavDB directory.
    #(Observe that the only files who will be updated is the ones in wanted files)
    def updateFiles(self,inputDirectory,outputDirectory):
        for files in self.wantedFiles:
            fileExtension = files.find(".")
            self.makeWritable(inputDirectory,"daily"+files[fileExtension:])
            self.makeWritable(outputDirectory,files)
            with open(inputDirectory+"daily"+files[fileExtension:],"r") as f:
                with open(outputDirectory+files,"a") as f2:
                    f2.write(f.read())
 
    #A temporary path for storing the update files for a short time.
    def tempPath(self):
        directoryName = str(random.randint(10000,9999999))
        #print directoryName
        os.mkdir(directoryName)
        return str (directoryName+"/")
 
    #First we need to make the stuff inside the folder writable, after the folder itself, then we can remove it.
    def rmPath(self,directory):
        for files in os.listdir(directory):
            self.makeWritable(directory, files)
        self.makeWritable(directory, "")
        shutil.rmtree(directory,True)
 
test = ClamAvDatabase()
```

