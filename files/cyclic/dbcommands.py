import sqlite3
import os.path
import datetime

class the_db:
	def __init__(self):
		exists = os.path.exists('./cyclic.db')

		self.conn = sqlite3.connect('cyclic.db')
		self.c = self.conn.cursor()

		if exists:
			return

		# If it's a new instance of the db we need to generate the layout

		sql = '''CREATE TABLE posts (key text PRIMARY KEY, 
		title text, 
		user text, 
		date integer, 
		size integer, 
		syntax text,
		expire integer, 
		scrape_url text, 
		full_url text)'''

		self.c.execute(sql)
		self.conn.commit()

	def post_exists(self, key):
		sql = '''SELECT COUNT(*) FROM posts WHERE key=?'''

		self.c.execute(sql, (key,))

		return self.c.fetchone()[0]==1

	def add_post(self, data):
		if self.post_exists(data["key"]):
			print "Post exists %s" % data["key"]
			return

		sql = '''INSERT INTO posts(key, title, user,date, size, syntax, expire, scrape_url, full_url)
				 VALUES (?,?,?,?,?,?,?,?,?)''' 
		param = (data["key"], \
		data["title"], \
		data["user"], \
		data["date"], \
		data["size"], \
		data["syntax"], \
		data["expire"], \
		data["scrape_url"], \
		data["full_url"])
		
		self.c.execute(sql, param)
		self.conn.commit()

	def fetch_posts(self):
		sql = '''SELECT * FROM posts'''

		self.c.execute(sql)

		rows =  self.c.fetchall()

		n = 0
		while n < len(rows):
			tmp = list(rows[n])
			tmp[3] = datetime.datetime.fromtimestamp(tmp[3])
			tmp[6] = datetime.datetime.fromtimestamp(tmp[6])
			rows[n] = tmp

			n += 1

		return rows


