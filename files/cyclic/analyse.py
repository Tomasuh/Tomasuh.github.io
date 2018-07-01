import pandas
import sqlite3
import dbcommands
import numpy as np
import time
import matplotlib.pyplot as plt

db_obj = dbcommands.the_db()

posts = db_obj.fetch_posts()

df = pandas.DataFrame(data=posts, columns = ["key",\
											 "title",\
											 "user",\
											 "date",\
											 "size",\
											 "syntax",\
											 "expire",\
											 "scrape_url",\
											 "full_url"])
df["size"] = df["size"].astype(int)

df = df.sort_values(by='date',ascending=True)


threshold = 10 - 1
max_diff_sec = 60

complete_ranges = []

for _, user_df in df.groupby("user"):
	user = user_df["user"].iloc[0]
	diff_middle = None
	timestamps = []
	repeated_intervals = 0

	the_range = []

	# Loop over grouped users
	for __, row in user_df.iterrows():
		current_ts = row["date"]

		success = True
		nr = 0
		while nr < len(timestamps):
			diff_to = (current_ts - timestamps[nr]).total_seconds()

			avg_diff = diff_to/(len(timestamps) - nr)

			if len(timestamps) == 1:
				diff_middle = avg_diff

			elif avg_diff > diff_middle + max_diff_sec or avg_diff < diff_middle - max_diff_sec:
				success = False
				break

			nr += 1

		if success:
			timestamps.append(current_ts)
			the_range.append((row["title"], current_ts, row["full_url"]))
			repeated_intervals += 1

		else:
			if repeated_intervals >= threshold:
				complete_ranges.append((row["user"], diff_middle, the_range))
				the_range = the_range[:-1]
			repeated_intervals = 0
			timestamps = timestamps[:-1]



for user, diff_avg, cyclic_range in complete_ranges:
	df_c = pandas.DataFrame(data=cyclic_range, columns = ["title",\
											 "time",\
											 "url"])

	for title, time, url in cyclic_range:
		print "%s %s %s %s" % (user, time, url, title)

	plt.plot(df_c['time'], [diff_avg/60] * len(df_c['time']), 'ro')
	plt.ylabel("Avg interval minutes")
	plt.text(0.6, 0.8, user, fontsize=14, transform=plt.gcf().transFigure)

	plt.show()
	