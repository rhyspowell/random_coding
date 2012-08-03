#!/bin/sh
url=http:// /feeds/deviceApp/article
i=1
list=("3015566.ece" "3015453.ece" "3015572.ece" "3015612.ece" "3015613.ece" "3015615.ece" "3015617.ece" "3015620.ece" "3015624.ece" "3015630.ece" "3015633.ece" "3015652.ece" "3015674.ece" "3015680.ece" "3015686.ece" "3015529.ece" "3015530.ece" "3015531.ece" "3015532.ece" "3015846.ece" "3015533.ece" "3015535.ece" "3015540.ece" "3015545.ece" "3015536.ece" "3015546.ece" "3015547.ece" "3015549.ece" "3015550.ece" "3015552.ece" "3015512.ece" "3015748.ece" "3015751.ece" "3015756.ece" "3015761.ece" "3015762.ece" "3015765.ece" "3015774.ece" "3015776.ece" "3015780.ece" "3015781.ece" "3015786.ece" "3015788.ece" "3015789.ece" "3015791.ece" "3015795.ece" "3015799.ece" "3015805.ece" "3015806.ece" "3015807.ece" "3015865.ece" "3015868.ece" "3015871.ece")


for server in "${list[@]}"
do
        curl -H "thetokenrequired" $url$server > feeds/$i.xml
i=$((i+1))
done
