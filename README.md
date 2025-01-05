# K2-Camera
A work around to get the camera working in fluidd.

#### This requires root access to be enabled on the printer.


<hr>


## Install Commands
```sh
python -c "from six.moves import urllib; urllib.request.urlretrieve('https://github.com/DnG-Crafts/K2-Camera/archive/refs/heads/main.zip', 'main.zip')" 
python -c "import shutil; shutil.unpack_archive('main.zip', '')"
rm main.zip
cd K2-Camera-main
service moonraker stop
sh install.sh
service moonraker start
```






<hr>

if you wish to restore the printer to its original configuration then run the commands below

## Restore Commands
```sh
cd K2-Camera-main
service moonraker stop
sh restore.sh
service moonraker start
```


