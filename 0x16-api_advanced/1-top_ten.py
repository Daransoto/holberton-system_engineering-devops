#!/usr/bin/python3
""" Queries the Reddit API and prints the titles of the first 10 hot posts. """
import requests


def top_ten(subreddit):
    URL = "https://www.reddit.com/r/{}/hot.json"
    Headers = {"User-Agent": "Custom"}
    response = requests.get(URL.format(subreddit), headers=Headers)
    hot = response.json().get('data').get('children')
    if response.status_code != 200 or not hot:
        print("None")
    for post in hot[:10]:
        print(post.get('data').get('title'))
