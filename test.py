from lxml import html, etree
import requests

res = requests.get("https://priem.guap.ru/rating/1_20_1_1_1_f").text
tree = html.fromstring(res)
items = tree.xpath('//tr[@class = "pk-rating-list-success"]')
for n, i in enumerate(items):
    print(n+1,etree.tostring(i.xpath('.//td')[3]))

