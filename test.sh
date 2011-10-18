#!/bin/bash

function spinspin {
  echo "Sleeping for $1 seconds."
  sleep $1
}

function writefile {
  echo "Writing to $1:"
  echo $2
  echo $2 > $1
}

writefile foo.txt "This is some text."
spinspin 2
writefile bar.txt "Yet more text."
spinspin 2
echo "Touching Guardfile"
touch Guardfile
spinspin 2
writefile baz.txt "This won't be shown."
spinspin 2
echo "Cleaning up"
rm -f bar.txt foo.txt baz.txt
