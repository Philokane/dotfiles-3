# New computer setup

---

## If second-hand
### Format the drive

1. Restart with cmd-R or cmd-D
2. Erase drive / 3x if second-hand
3. Reinstall MacOS

---

## First boot

### Change system password.

### System Prefs
```
  Network
      add Google DNS (https://developers.google.com/speed/public-dns/)
      8.8.8.8
      4.4.4.4
      add Open DNS (http://www.opendns.com/opendns-ip-addresses/)
      208.67.222.222
      208.67.220.220
```

### Setup SSH keys for Github

- Go to [Copy.com](http://www.copy.com)
- Download .ssh folder
- Unpack folder archive
- `rm -rf ~/.ssh && mv ~/Downloads/.ssh ~/.ssh`
- `ssh -T git@github.com`

### Clone dotfiles repo via SSH

```
cd ~
git clone git@github.com:phamann/dotfiles.git
mv -r dotfiles .dotfiles
```

### Run doftiles bootscript

```
cd ~/.dotfiles
script/bootstrap
```

### Post bootscript setup

- Restart iTerm
- Re-install [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
- `cd ~/.dotfiles/vim.symlink/bundle && git clone git://github.com/altercation/vim-colors-solarized.git`
- Test vim setup
- Test tmux setup
- Sync iTerm preferences via Copy

### Setup Chrome

- Login to [LastPass](https://lastpass.com/)
- Copy main Google account password to clipboard
- Login to Chrome
- Ensure all settings and extensions are syncing
- Repeat steps for Chrome Canary

### Install Copy

- Open Copy add
- Login using credentials form LastPass
- Setup sync
- Symlink Documents, Code, Personal

### Install virtual machines

- Download [ievms](//github.com/xdissent/ievms)
- `curl -s https://raw.github.com/xdissent/ievms/master/ievms.sh | bash`

----

## Additions

