for existingF in $(find ./* -name '*.md'); do
  rm $existingF
done

for f in $(find ../* -name '*.md'); do 
	f2=${f%.md} # Remove the .md extension
	f3=${f2:2} # Remove the two dots from something like ../index

	fOut=${f:1} # Remove the one extra . from something like ../index.md
echo -n '---
page:
  headHtml: |
    <meta http-equiv="refresh" content="0; url='$f3'">
---' > $fOut
done