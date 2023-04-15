---------------------------
System-wide GUI Frameworks
---------------------------

For GTK:

Inside of --> ~/.Xresources write: Xft.dpi: 120
Inside of --> ~/.profile write: export GDK_DPI_SCALE=1.25

FOR QT:

Inside of --> ~/.profile write: QT_AUTO_SCREEN_SCALE_FACTOR=1

---------------------------
Specific apps
---------------------------

Chromium/Ungoogled-Chromium/Google-Chrome
Inside of --> ~/.config/chromium-flags.conf write: --force-device-scale-factor=1.25

There have been changes from Luke's dotfiles, to this dotfiles work properly
it is strongly recommended to install these packages:

- picom
- oh my zsh (from the website)
- chromium/ungoogled-chromium
- streamlink
- net-tools
- links


Tips:
- To automatically open mpv inside newsboat press ',' and then 'v'
- To automatically open newsboat press 'Meta+n'
- To view the Phoronix article completely 'using links' press ',' and then 'w'
 
