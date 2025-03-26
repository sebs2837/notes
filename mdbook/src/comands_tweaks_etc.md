# Commands Tweaks etc.

Useful googling results / solutions for dedicated problems will life here.

## Tweaks

### Prevent MacBook from sleep in Battery-Mode aka Clamp-Shell-Mode

Disable display sleep and other energy savers in battery mode
```shell 
$ sudo pmset disablesleep 1
```
Enable
```shell 
$ sudo pmset disablesleep 0
```

### Trick apples security mechanism for downloaded executable

Avoid apple's security restriction aka quarantine-bit for downloaded executables

```shell
xattr -d com.apple.quarantine <executable>
```

```shell
$ cat <file1> > <file2>
$ chmod +x <file2>
```

### Using MacOs Keychain for ssh

1. Create a ssh key with passphrase 
```shell
ssh-keygen -t ed25519 -C "comment"
ssh-keygen -t rsa -b 4096 -C "comment"
```
2. Add the passphrase choosen in 1. to the Keychain
```shell
ssh-add --apple-use-keychain ~/.ssh/[private-key]
```
3. Configure ssh to use the keychain as passphrase provider `~/.ssh/config`
```raw
Host <host-name>
    UseKeychain yes
    AddKeysToAgent yes
    IdentityFile ~/.ssh/[private-key]
```
>> Optional: check if key is tstored
>>```shell
>>     security find-generic-password -s "SSH" -a ~/.ssh/[private-key]
>>```
