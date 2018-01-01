xinput --list
echo 'Please insert the touchscreen id: '
read touchscreen_id
xinput disable $touchscreen_id
