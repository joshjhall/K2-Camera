# K2-Camera
A work around to get the camera working in fluidd.

#### This requires root access to be enabled on the printer.
<br>

[placeholder video]<br>
[![https://www.youtube.com/watch?v=qKrKXGRXfWs](https://img.youtube.com/vi/qKrKXGRXfWs/0.jpg)](https://www.youtube.com/watch?v=qKrKXGRXfWs)

https://www.youtube.com/watch?v=qKrKXGRXfWs<br>



<hr>


## Install Commands
```sh
python -c "from six.moves import urllib; urllib.request.urlretrieve('https://github.com/DnG-Crafts/K2-Camera/archive/refs/heads/main.zip', 'main.zip')" 
python -c "import shutil; shutil.unpack_archive('main.zip', '')"
rm main.zip
service moonraker stop
sh K2-Camera-main/install.sh
service moonraker start

```






<hr>

if you wish to restore the printer to its original configuration then run the commands below

## Restore Commands
```sh
service moonraker stop
sh K2-Camera-main/restore.sh
service moonraker start

```


