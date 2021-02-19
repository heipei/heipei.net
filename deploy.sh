#!/bin/sh

bundle exec jekyll build
rsync -Pvr --inplace _site/ webhost:/srv/heipei.net/
