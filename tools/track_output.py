#!/usr/bin/env python3

from optparse import OptionParser
import sys
import urllib.request
import json
import pprint
import re
import yaml

import pdb

# See whether CSV or JSON
parser = OptionParser()
parser.add_option("-c", "--csv", dest="should_csv", action="store_true", help="Export track as CSV file")
parser.add_option("-b", "--bullet", dest="should_bullet", action="store_true", help="Export track as Markdown-friendly bullet list with indentation")
parser.add_option("-u", "--urls-only", dest="should_urlsonly", action="store_true")
parser.add_option("-g", "--github-urls", dest="should_gh_urlsonly", action="store_true", help="Export the track as a list of Git URLs")
parser.add_option("-y", "--yaml", dest="should_yaml", action="store_true")
(options, args) = parser.parse_args()

# Ensure track ID
if len(args) < 1:
    print("We require a track (Integer) id as argument")
    sys.exit()

# Query JSON endpoint
url = "https://learn.co/api/v1/tracks/" + args[0]

# For accumulating paths
stack = []

def parse_obj_json(obj, output):
    if "children" in obj:
        if type(obj["children"]) is list and len(obj["children"]) > 0:
            output_key = obj.get("title")
            output[output_key] = {}
            [parse_obj_json(ch, output[output_key]) for ch in obj["children"]]
        elif type(obj["children"]) is list and len(obj["children"]) == 0:
            if not "children" in output:
                output["children"] = []

            # Deal with null HTTP
            url = obj.get("github_url", "")
            url = "http:" + url if len(url) > 0 else "None"

            output["children"].append({
                "title": obj.get("title"),
                "github_url": url
                })
            output["children"] = sorted(output["children"], key=lambda x: x["title"])
    return output

def csvify(obj):
    if "children" in obj:
        if type(obj["children"]) is list and len(obj["children"]) > 0:
            stack.append(quote_wrap(obj.get("title")))
            [csvify(ch) for ch in obj["children"]]
            stack.pop()
        elif type(obj["children"]) is list and len(obj["children"]) == 0:
            url = obj.get("github_url", "")
            url = quote_wrap(url) if len(url) > 0 else "None"
            print(",".join(stack[:] + [json.dumps(obj.get("title")), url]))

def bulletify(obj, indent=0):
    if "children" in obj:
        if type(obj["children"]) is list and len(obj["children"]) > 0:
            print((indent * ' ') + '+ ' + quote_wrap(obj.get("title")))
            [bulletify(ch, indent + 2) for ch in obj["children"]]
        elif type(obj["children"]) is list and len(obj["children"]) == 0:
            url = obj.get("github_url", "")
            url = quote_wrap(url) if len(url) > 0 else "None"
            print((indent * ' ') + '- ' + ",".join(stack[:] + [quote_wrap(obj.get("title")), url]))

def only_urls(obj, indent=0):
    if "children" in obj:
        if type(obj["children"]) is list and len(obj["children"]) > 0:
            [only_urls(ch, indent + 2) for ch in obj["children"]]
        elif type(obj["children"]) is list and len(obj["children"]) == 0:
            url = obj.get("github_url", "")
            print(url)

def only_ghurls(obj, indent=0):
    if "children" in obj:
        if type(obj["children"]) is list and len(obj["children"]) > 0:
            [only_ghurls(ch, indent + 2) for ch in obj["children"]]
        elif type(obj["children"]) is list and len(obj["children"]) == 0:
            url = obj.get("github_url", "")
            print(frobnicate_repo_url_to_git_url(url))

def frobnicate_repo_url_to_git_url(inp):
    org_and_repo = re.sub(r'https?://github.com/', '', inp)
    return 'git@github.com:' + org_and_repo + '.git'

def quote_wrap(s):
    return '"' + s + '"'

def recursively_drop_keys(struc={}, key=""):
    struc.pop(key, None)
    if 'children' in struc:
        if len(struc['children']) == 0:
            struc.pop('children', None)
        else:
            [ recursively_drop_keys(subtree, key) for subtree in struc['children'] ]

def yamlify(track_dict):
    unwanted_keys = ['published_batch_ids', 'id', 'created_at', 'track_id',
    'depth']
    for key in unwanted_keys:
        recursively_drop_keys(track_dict, key)
    print(yaml.dump(track_dict, sort_keys=False))

# Fetch data and parse the JSON
try:
    content = urllib.request.urlopen(url).read()
    struc = json.loads(content)
    if options.should_csv:
        csvify(struc)
    elif options.should_bullet:
        bulletify(struc)
    elif options.should_urlsonly:
        only_urls(struc)
    elif options.should_gh_urlsonly:
        only_ghurls(struc)
    elif options.should_yaml:
        yamlify(struc)
    else:
        print(json.dumps(parse_obj_json(struc, {}), sort_keys=True, indent=4))
except urllib.error.HTTPError as err:
    print("Unable to connect to {0} [{1}]".format(url, str(err)))
    sys.exit(1)



