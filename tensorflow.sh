cuda="cuda_8.0.61_375.26_linux-run"
cudnn="cudnn-8.0-linux-x64-v5.1.tgz"

sh /mnt/$cuda --toolkit --silent
tar xvf /mnt/$cudnn -C /usr/local

pip install --upgrade pip
pip install --upgrade tensorflow-gpu == 1.1.0
