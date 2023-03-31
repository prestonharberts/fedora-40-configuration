# sptlrx

Source: https://github.com/raitonoberu/sptlrx

Run the following commands:

```
git clone https://github.com/raitonoberu/sptlrx
cd sptlrx
sudo dnf install go
go get
go build -ldflags '-w -s'
./sptlrx
```

Change the following in `~/.config/sptlrx/config.yaml`:

```
# config.yaml
player: mpris
```
