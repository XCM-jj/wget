sudo -i
if command -v wget >/dev/null 2>&1; then 
  echo 'exists wget'
else
 curl https://github.com/XCM-jj/wget/archive/master.zip -L --output /tmp/wget.zip
  unzip /tmp/wget.zip -d /tmp/
  chmod +x /tmp/wget-master/wget
fi
wget -O /tmp/卡巴斯基for\ mac安装包.zip "https://megvii-my.sharepoint.cn/:u:/g/personal/wangchongyang_megvii_com/ESUaE18_b9lNhxre80DV_VoB8CwXrF2GBCCjY0nzJ-II8A?e=oJDtat?download=1"
cd /tmp/
ditto -V -x -k --sequesterRsrc --rsrc /tmp/卡巴斯基for\ mac安装包.zip .
cd 卡巴斯基for\ mac安装包/kesmac11.0.1.753
sudo ./install.sh --accept_eula
cd ../卡巴斯基for\ mac安装包/klnagentmac12.0.0.35
sudo ./install.sh --accept_eula -r 10.210.2.240
