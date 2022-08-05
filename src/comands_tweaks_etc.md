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

Avoid apple's security restriction for downloaded executables

```shell
$ cat <file1> > <file2>
$ chmod +x <file2>
```
