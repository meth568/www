#!/bin/sh

rm ../recipies/*
for f in *.md; do
  pandoc "$f" -o "../recipies/${f%.md}.html" 
done
echo "<p><strong>All Pages</strong></p>" >> ../recipies/index.html
find ../recipies/ -name '*.html' -exec echo '<br/><a href={}>{}<a/></br>' >> ../recipies/index.html \;
