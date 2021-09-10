COUNTER=0
cd sub-860/coronal;
for file in *.png
do 
    [ -f "$file" ] && echo mv "$file" "${COUNTER}.png";
    mv "$file" "${COUNTER}.png";
    let COUNTER++;
done

for i in range(18):
    print("![image](visualisations/sub-860/coronal/{}.png".format(i) + ")")