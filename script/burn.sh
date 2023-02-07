#!/bin/bash
echo "Step 2: burn "
KEY=$(sed -n '/Asset Identifier:/p' /root/ironfish/log/mint.log| cut -d " " -f3)
echo $KEY
/usr/bin/ironfish wallet:burn --assetId $KEY --amount 1 --fee 0.00000001 --confirm