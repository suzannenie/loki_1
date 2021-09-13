COUNTER=0
cd sub-860/axial;
for file in *.png
do 
    [ -f "$file" ] && echo mv "$file" "${COUNTER}.png";
    mv "$file" "${COUNTER}.png";
    let COUNTER++;
done
