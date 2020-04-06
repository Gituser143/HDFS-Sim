cat data.txt | grep power | awk '{print $5}' > total.txt
tr '\n' ' : ' < total.txt > total1.txt
sed 's/\s\+/,/g' total1.txt > total2.txt

cat data.txt | grep bringing | awk '{print $1}' > bring.txt
tr '\n' ' : ' < bring.txt > bring1.txt
sed 's/\s\+/,/g' bring1.txt > bring2.txt

cat data.txt | grep distribution | awk '{print $1}' > distribution.txt
tr '\n' ' : ' < distribution.txt > distribution1.txt
sed 's/\s\+/,/g' distribution1.txt > distribution2.txt

cat data.txt | grep "initial Block access" | awk '{print $1}' > access.txt
tr '\n' ' : ' < access.txt > access1.txt
sed 's/\s\+/,/g' access1.txt > access2.txt

cat data.txt | grep "transferring" | awk '{print $1}' > transferring.txt
tr '\n' ' : ' < transferring.txt > transferring1.txt
sed 's/\s\+/,/g' transferring1.txt > transferring2.txt

cat data.txt | grep "balancing" | awk '{print $1}' > balancing.txt
tr '\n' ' : ' < balancing.txt > balancing1.txt
sed 's/\s\+/,/g' balancing1.txt > balancing2.txt

cat data.txt | grep "continued" | awk '{print $1}' > continued.txt
tr '\n' ' : ' < continued.txt > continued1.txt
sed 's/\s\+/,/g' continued1.txt > continued2.txt


Scilab
--> plot( x, y , "+-" ) ; plot ( x , z , "o-" ) ; plot (x , a ,"x-") ; plot(x , b , ".-") ; plot (x , c , "<-") ; plot (x ,d , ">-") ; plot( x , e ,"^-");
