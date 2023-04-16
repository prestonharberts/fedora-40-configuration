# Fonts

Run the following commands in terminal to install the San Francisco fonts (source: https://github.com/gonzaru/san-francisco-fonts):

```
git clone https://github.com/gonzaru/san-francisco-fonts.git
cd san-francisco-fonts
mkdir -p ~/.local/share/fonts
cp SF* ~/.local/share/fonts/ -r
fc-cache -v -f
```

Download all Latin Modern Roman Regular, Bold, and Italic fonts from https://www.1001fonts.com/latin-modern-roman-font.html. Then, run the following commands:

```
mkdir ~/.fonts/ ~/.fonts/opentype/
mv ~/net/latin-modern-roman* ~/.fonts/opentype/
fc-cache -v -f 
```
