# keyd

Install with the following commands:

```
git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
sudo systemctl enable keyd && sudo systemctl start keyd
cd .. && rm keyd -rf
```

Now, move the provided `productivity/default.conf` into `/etc/keyd/`, and run `sudo keyd reload`.
