#!/bin/bash
echo -n "nhap vao duong dan cua file: "
read file
while ! test -d $file; do
    echo -n "Vui long nhap lai duong dan: "
    read file
done
    
cd $file
echo -n "Ban muon xoa toan bo thu muc? (Yes/No): "
read rep
case $rep in
    [yY]|[yY][eE][sS]) echo "Xoa toan bo thu muc";;
    [nN]|[nN][oO]) echo "Khong xoa thu muc";;
esac
if test "$rep" == "[yY]|[yY][eE][sS]";then
    rm $file
fi


mkdir -p BTTL/BTTL{1..9}
mkdir -p BTTH/BTTH{1..9}

touch BTTL/BTTL{1..9}/1752020.sh
touch BTTH/BTTH{1..9}/1752020.sh

chmod ugo+x BTTL/BTTL{1..9}/1752020.sh
chmod ugo+x BTTH/BTTH{1..9}/1752020.sh

for file in BTTL/BTTL{1..9}/* ; do
    echo "#! /bin/bash/
/* ================================================
* Ho va ten
* MSSV
* Ma bai tap
* ================================================ */" > $file 
done

echo "Thu muc da duoc tao xong"
