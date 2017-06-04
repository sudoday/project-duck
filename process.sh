for run in {1..10}
do
echo test
osascript -e 'display notification "Lorem ipsum dolor sit amet" with title "Title"'
delay 10s
done
