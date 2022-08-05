# Notes on git

Some notes and shortcuts how to do things with git and which shortcuts there
are.

## Commands


Found on [dev.to](https://dev.to/gitlive/top-5-git-tips-tricks-8na)

`$ git commit --amend --no-edit`

> When to use it: 
>> Assume you just finished all your tasks and commited everything, but then 
you'll find something annoying ( one of those shitty typos).

> What it does:
>> Your change will be be added to your last commit meaning, the commit message
**won't be touched** but the **hash is updated**

`$ git add -p <filename>`

> When to use it:
>> You dedicated your time to fix or add lets say a feature after you
did a lot of stuff and stared into the abyss of coding for hours and hours
suddenly you notice... wait what I just did is more then planed and also touches
other stuff that shouldn't be in this commit. If there is only a way to take over
parts of my work.

> What it does:
>> The flag `-p` or `--patch` let you interactively choose parts of your changes
which should end up in you commit.


`$ git reflog` -> `$ git reset HEAD@{index}`

> When to use it:
>> "How did that happen", you stare at the mess that is presented to you after
a long and relaxing vacation. You whish you could go back in time ... but how and 
more important to which point in time ?

> What it does:
>> Well first you see what happend when you where away so now you can find your 
safe game. With the reset you reload your safe game and start with all your items.

`$ git config --global help.autocorrect <time-in-sec>`

> When to use it:
>> `git stut` ... `git stats`... `git satus` ... damn it, it is one of theses
days (usualy a monday - friday) an youre brain and your fingers are some how 
disconnected.

> What it does:
>> Plain and easy it is gits spell check where git after `<time-in-sec>` to 
guess your command, can be handy can be annoying depends on your brain and the 
magic `<time-in-sec>`


