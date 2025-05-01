output=results-EV2.csv
echo "" > $output;
count=1
first=1
for f in results.EV2/*;do
  map=$(echo "$f" | cut -d "-" -f1);
  map=$(basename $map)
  version=$(echo "$f" | cut -d "-" -f2);
  version=${version%.csv}
  emissionMap=EV2
  if [[ $map == "acosta" ]]; then
    emissionMap=EV2
  fi
  echo "$map $version $emissionMap"
  python python/createColumExpDataset.py "$f" map $map "tmp$count"
  python python/createColumExpDataset.py "tmp$count" version $version "tmp$count"
  python python/createColumExpDataset.py "tmp$count" emissionMap $emissionMap "tmp$count"
  if [[ first -eq 0 ]]; then
    tail -n +2 "tmp$count" > "tmp$count".tmp && mv "tmp$count".tmp "tmp$count"
  fi
  first=0
  ((count+=1))
done;

for tmp in tmp*;do
  cat $tmp >> $output;
done

rm tmp*