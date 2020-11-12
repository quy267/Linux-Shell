#!/bin/bash
while read -r line; do
  echo "$line" | cut -f -3
done
