#!/usr/bin/env python

import json
import os
import urllib
import urllib2


BASE_URL = 'https://conda.binstar.org'
REPO = 'kalefranz'
ARCH = 'linux-64'

DEST_DIR = os.path.dirname(os.path.realpath(__file__))


def get_repodata():
    url = "{}/{}/{}/repodata.json".format(BASE_URL, REPO, ARCH)
    response = urllib2.urlopen(url)
    return json.loads(response.read())


def expand(path):
    return os.path.normpath(os.path.expanduser(os.path.expandvars(path)))


def download(filename, dest_dir):
    url = "{}/{}/{}/{}".format(BASE_URL, REPO, ARCH, filename)
    dest = os.path.join(dest_dir, filename)
    print url, dest
    urllib.urlretrieve(url, dest)
    # TODO verify download with md5


def main():
    destdir = expand(DEST_DIR)
    download('repodata.json', destdir)
    for filename in get_repodata()['packages'].keys():
        download(filename, destdir)


def main2():
    # get current repodata
    # get new repodata
    # create set
    # add to set keys new_repodata - current_repodata
    # add to set keys md5 in new_repodata != md5 in old_repodata
    pass

if __name__ == '__main__':
    main()

