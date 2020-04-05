cat data.txt | grep power | awk '{print $5}' > total.txt
tr '\n' ' : ' < total.txt > total1.txt
sed 's/\s\+/,/g' total1.txt > total2.txt

