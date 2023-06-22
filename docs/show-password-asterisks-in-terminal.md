# Show password asterisks in terminal

Run the following command to open the visudo config:

```
sudo visudo
```

Then, place the second line of the follow code directly after the first line as follows to show asterisks when typing passwords:

```
Defaults    env_reset
Defaults    pwfeedback
```

