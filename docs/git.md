# Git

Run the following to create a public key ([source](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)):

```
ssh-keygen -t ed25519 -C "putemail@here.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

Add the output of the last line to your GitHub page's SSH keys. Push any commits with this line (using the SSH clone link):

```
git push git@github.com:username/repo.git
```
