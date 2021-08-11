IFS=$'\n'

for f in $(find ./* -name '*.md'); do

f1=`basename $f` # Gets the basename
f2=${f1%.md} # Remove the .md extension

Expected1='<script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>'
Expected2='<meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">'
Expected3='<meta name="dc.identifier" content="'$f2'">'
Expected4='<script async src="https://hypothes.is/embed.js"></script>'
Exists1=`grep -c "$Expected1" "$f"`
Exists2=`grep -c "$Expected2" "$f"`
Exists3=`grep -c "$Expected3" "$f"`
Exists4=`grep -c "$Expected4" "$f"`
All=`expr $Exists1 + $Exists2 + $Exists3 + $Exists4 = 4`

if [ $All -eq 0 ]
then
  echo "$f2"
fi

done