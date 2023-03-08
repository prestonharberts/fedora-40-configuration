# Trimage

Run the following to install Trimage:

```
git clone https://github.com/Kilian/Trimage
python setup.py build
sudo python setup.py install
sudo dnf install PyQt5 jpegoptim optipng pngcrush
```
Download advancecomp2.5.tar.gz from http://www.advancemame.it/download. Extract it, and open it in terminal. Run the following:

```
./configure
make
make check
sudo -i
make install
exit
```

Now, run `trimage` to start the program.
