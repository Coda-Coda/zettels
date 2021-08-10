for existingF in $(find ./* -name '*.md'); do
  rm $existingF
done

IFS=$'\n'
for f in $(find ../* -name '*.md'); do 
	f2=${f%.md} # Remove the .md extension
	f3=${f2:2} # Remove the two dots from something like ../index

	fOut=`basename $f` # Gets the basename, for outputting in the _permalink directory.
echo -n '---
page:
  headHtml: |
    <meta http-equiv="refresh" content="0; url=/zettels'$f3'">
---' > "permalink_$fOut"
done