# Git

Run the following to create a public key ([source](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)):

```
ssh-keygen -t ed25519 -C "putemail@here.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

Add the output of the last line to your GitHub page's SSH keys. Clone using the following template ([source](https://docs.github.com/en/authentication/troubleshooting-ssh/using-ssh-over-the-https-port)):

```
git clone ssh://git@ssh.github.com:443/YOUR-USERNAME/YOUR-REPOSITORY.git
```

Run the following to finish setting up Git:

```
git config --global user.email "putemail@here.com"
git config --global user.name "Full Name"
```
