#how meny days to the end of year
days=`echo "366-\`date +%j\`" |bc`
function stars() {
if [ "$days" -gt "100" ]; then
  for i in `seq 36`; do
    echo -n "*"
  done
elif [ "$days" -lt "100" ] && [ $days -gt "9" ]; then
  for i in `seq 35`; do
    echo -n "*"
  done
else
  for i in `seq 34`; do
   echo -n "*"
 done
fi
}

stars
echo -e "\n* pozostalo $days dni do konca roku! *"
stars
echo -ne "\n"
