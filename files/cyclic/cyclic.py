import requests
import json
import time
import dbcommands

def fetch():
	bulk_fetch_url = "https://scrape.pastebin.com/api_scraping.php"

	r = requests.get(bulk_fetch_url)

	if r.status_code != requests.codes.ok:
		print "Received status code %d" % r.status_code
		return None

	return json.loads(r.text)


def the_spider():
	interval_seconds = 60

	db_obj = dbcommands.the_db()

	while True:
		posts = fetch()

		for post in posts:
			if not post["user"]:
				continue

			db_obj.add_post(post)

		time.sleep(interval_seconds)
		print "Sleeped"

the_spider()