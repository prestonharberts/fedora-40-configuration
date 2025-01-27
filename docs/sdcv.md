# sdcv (Stardict Console Version)

Run the following to install sdcv:

```
sudo dnf install sdcv -y
```

Run the following to install a dictionary:

```
cd ~/Downloads/
wget https://web.archive.org/web/20140917131745/http://abloz.com/huzheng/stardict-dic/dict.org/stardict-dictd_www.dict.org_gcide-2.4.2.tar.bz2
sudo mkdir -p /usr/share/stardict/dic
sudo tar -xvjf stardict-dictd_www.dict.org_gcide-2.4.2.tar.bz2 -C /usr/share/stardict/dic
```

Use like `sdcv <word>` or use my `def` script in my Bin folder.
