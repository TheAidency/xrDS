checkStartState() {
  if [ "$stS" == 0 ]; then
    echo "0" > displaystate
    echo "1" > startstate
    return
  fi
}

checkStartState
dS=$(<displaystate)  
if [ "$dS" == 0 ] 
then
xrandr --output DisplayPort-0 --panning 1920x1080 --scale 1.2
echo "1" > displaystate
else
xrandr --output DisplayPort-0 --panning 1600x900 --scale 1
echo "0" > displaystate
fi
