#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    word_count="$(wc -w "${f}" | cut -d' ' -f1)"
    echo "Processing $f file..."
    echo "size: $SIZE"
    echo "word count: $word_count"
  fi
done


