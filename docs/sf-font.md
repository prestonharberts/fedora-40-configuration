# SF Font

Run the following commands in terminal (source: https://github.com/gonzaru/san-francisco-fonts):

```
git clone https://github.com/gonzaru/san-francisco-fonts.git
cd san-francisco-fonts
mkdir -p ~/.local/share/fonts
cp SF* ~/.local/share/fonts/ -r
fc-cache -v -f
fc-list -f '%{family}\n' | grep '^SF ' | uniq
```
