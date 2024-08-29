# Fonts

## San Francisco fonts

Run the following commands in terminal to install the San Francisco fonts (source: https://github.com/gonzaru/san-francisco-fonts):

```
git clone https://github.com/gonzaru/san-francisco-fonts.git
cd san-francisco-fonts
mkdir -p ~/.local/share/fonts
cp SF* ~/.local/share/fonts/ -r
fc-cache -v -f
```

## Latin Modern Roman fonts

Download all Latin Modern Roman Regular, Bold, and Italic fonts from https://www.1001fonts.com/latin-modern-roman-font.html. Then, run the following commands:

```
mkdir -p ~/.fonts/ ~/.fonts/opentype/
mv ~/Downloads/latin-modern-roman* ~/.fonts/opentype/
fc-cache -v -f 
```

## Times New Roman and Microsoft fonts

To install Times New Roman and other Microsoft fonts, run the following:

```
cd ~/Downloads/
sudo yum install rpm-build cabextract ttmkfdir
wget http://corefonts.sourceforge.net/msttcorefonts-2.5-1.spec
rpmbuild -bb msttcorefonts-2.5-1.spec
sudo rpm -ivh $HOME/rpmbuild/RPMS/noarch/msttcorefonts-2.5-1.noarch.rpm
fc-cache -f -v
```

## Segoe fonts

Run the following to download the program to install the Segoe font family:

```
cd ~/Repos/
git clone https://github.com/SpudGunMan/segoe-ui-linux
cd segoe-ui-linux
```

Remove the function call that checks for an internet connection called `cekkoneksi` on line 189, then run the following:

```
chmod u+x install.sh
sudo ./install.sh
sudo fc-cache -fv
```

## Sabon fonts

Download Sabon font pack from https://www.dafontfree.io/sabon-font/. Then, run the following commands:

```
mkdir -p ~/.fonts/ ~/.fonts/opentype/
mv ~/Downloads/sabon\ font/Sabon\ Free/* ~/.fonts/opentype/
fc-cache -v -f 
```

## Bookerly fonts

Download Bookerly font pack from https://www.cufonfonts.com/font/bookerly. Then, run the following commands:

```
mkdir -p ~/.fonts/ ~/.fonts/truetype/
mv ~/Downloads/bookerly-cufonfonts/* ~/.fonts/truetype/
fc-cache -v -f 
```
