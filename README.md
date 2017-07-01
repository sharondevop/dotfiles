# dotfiles
All of my local dotfiles

## Cloning Our Dotfiles to Another Machine
Ultimately, we’re going to come to a point where we want to use our customized dotfiles on another server or workstation. That is, after all, one of the primary benefits of using Git to manage our dotfiles. To do this, it’s as simple as running the following command from our home directory:

git clone git://github.com/sharondevop/dotfiles.git

Once the repository has been cloned to our home directory, simply change to the dotfiles directory, make the makesymlinks.sh script executable, and run the script, like so:

```
cd ~/dotfiles
chmod +x makesymlinks.sh
./makesymlinks.sh
```
