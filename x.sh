#!/bin/bash

# Renaming files in the sections directory

# Specify the new names for the files
new_names=(
  "2-importance.md"
  "3-hash-functions.md"
  "4-verification-techniques.md"
  "5-challenges-benefits.md"
  "6-limitations-considerations.md"
  "7-conclusion.md"
  "8-lab-exercise.md"
  "intro.md"
  "works-cited.md"
)

# Specify the old names for the files
old_names=(
  "II.md"
  "III.md"
  "IV.md"
  "V.md"
  "VI.md"
  "VII.md"
  "VIII.md"
  "intro.md"
  "workscited.md"
)

# Loop through the files and rename them
for ((i=0; i<${#new_names[@]}; i++)); do
  old_name="sections/${old_names[i]}"
  new_name="sections/${new_names[i]}"
  mv "$old_name" "$new_name"
done

echo "Files renamed successfully!"

