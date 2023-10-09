# Trimage

Run the following to install Trimage:

```
git clone https://github.com/Kilian/Trimage
cd Trimage
python setup.py build
sudo python setup.py install
sudo dnf install PyQt5 jpegoptim optipng pngcrush -y
```

Download advancecomp2.5.tar.gz from http://www.advancemame.it/download and extract it. Then, open it in terminal. Run the following:

```
./configure
make
make check
sudo -i
cd /home/USERNAME/Downloads/advancecomp-2.5/
make install
exit
```

Now, run `trimage` to start the program.
