# Preferred Programs


### :memo: [Atom](https://atom.io/)
My current-favourite text editor  
`$ wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add`  
`$ sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'`  
`$ sudo apt install atom`  
`$ apm install autocomplete-emojis fonts pretty-json pigments sort-lines linter-stylelint linter-eslint atom-ide-terminal`  

<dl>
  <dt>Packages</dt>
  <dd>
    <a href="https://atom.io/packages/autocomplete-emojis">Autocomplete Emojis</a><br>
    <a href="https://atom.io/packages/fonts">Fonts, with Source Code Pro Medium Selected</a><br>
    <a href="https://atom.io/packages/pretty-json">Pretty JSON</a><br>
    <a href="https://atom.io/packages/pigments">Pigments</a><br>
    <a href="https://atom.io/packages/sort-lines">Sort Lines</a><br>
    <a href="https://atom.io/packages/linter-sass-lint">linter-sass-lint (old projects)</a><br>
    <a href="https://atom.io/packages/linter-sass-lint">linter-stylelint (new projects)</a><br>
    <a href="https://atom.io/packages/linter-eslint">linter-eslint</a><br>
    <a href="https://atom.io/packages/atom-ide-terminal">atom-ide-terminal</a> - other forks of this don't work(?)<br>
  </dd>
</dl>

If linter-eslint isn't working as expected, the scopes list probably needs `source.tsx` and/or other file types added.

### :speech_balloon: [Discord](https://discordapp.com/)
For text and video chatting to people, groups, and bots.  
`$ snap install discord`

### :office: [Slack](https://slack.com)
Like Discord but for work.  
`$ snap install slack --classic`

### :octocat: [Git](https://git-scm.com/)
Version control. Mostly used with [GitHub](https://github.com).  
`$ sudo apt install git`

### :file_folder: [Dropbox](https://github.com/dropbox/nautilus-dropbox)
Used to save the majority of my files to. Installed as Nautilus extension for nice integration.  
`$ sudo apt install nautilus-dropbox`

### :fox_face: [Firefox](http://firefox.com/)
My favourite web browser. With [uBlock Origin](https://addons.mozilla.org/en-GB/firefox/addon/ublock-origin/)

### :globe_with_meridians: [Chrome](https://www.chromium.org/Home)
My 2nd favourite web browser. Mainly used for compatibility and performance testing (hence the more popular Chrome over Chromium).  
`$ wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`
`$ sudo dpkg -i google-chrome-stable_current_amd64.deb`

### :nut_and_bolt: [Node](https://nodejs.org/) & [NPM](https://www.npmjs.com/)
JavaScript runtime and a nice package manager for it, via n.  
`$ curl -L https://git.io/n-install | bash`

### :computer: [GNOME Terminal](https://help.gnome.org/users/gnome-terminal/stable/)
Ubuntus default terminal emulator is pretty good.

### :gear: [Gnome Tweaks](https://wiki.gnome.org/action/show/Apps/Tweaks)
The desktop environment in Ubuntu is kind of funky. TODO: Tweaks list and link to it here.  
`$ sudo apt install gnome-tweaks`

### :keyboard: [Autokey](https://github.com/autokey/autokey)
For complex keyboard shortcuts so I can type '@extend', etc. faster.  
`$ sudo apt install autokey-gtk`  
[Fix for pasting blank lines if needed](https://www.codyeding.com/dbus-autokey-ubuntu/)

### All at once:
```
sudo apt install atom && apm install autocomplete-emojis fonts pretty-json linter-sass-lint pigments sort-lines && snap install discord && snap install slack --classic && sudo apt install git && sudo apt install nautilus-dropbox && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb && curl -L https://git.io/n-install | bash && sudo apt install gnome-tweaks && sudo apt install autokey-gtk
```
