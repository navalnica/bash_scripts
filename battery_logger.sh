b=`upower -e | grep "BAT"`
p=`upower -i $b | grep percentage`
p=$(echo $p | cut -d ' ' -f 2)
time=`date +%H:%M`

OUT_DIR='power_logs/'
OUT_FILE=`date +%d.%m.%y`'.txt'
if [ ! -d $OUT_DIR ]; then
    echo "output directory does not exist"
    echo "creating \"$OUT_DIR\" to save the output"
    mkdir $OUT_DIR 
fi
if [ ! -f $OUT_DIR/$OUT_FILE ]; then
    echo "output file \"$OUT_FILE\" does not exist"
    touch $OUT_DIR/$OUT_FILE
fi

OUT_PATH=$OUT_DIR$OUT_FILE
echo "log will be stored in \"./$OUT_PATH\""
echo $time - $p >> $OUT_PATH
