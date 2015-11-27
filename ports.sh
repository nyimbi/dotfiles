#ports.sh
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
sudo port selfupdate

# Now install some useful utilities
sudo port -v install coreutils findutils moreutils osxutils renameutils xml-coreutils

# And other utilities I find useful
sudo port -v install p7zip lua pv xz tree pigz unrar file bzip2 txt2regex 

# Encryption stuff
sudo port -v install ccrypt aesutils openssl 

# Now all the stuff I use for my music (Easier to install the vlc dmg)
sudo port -v install ffmpeg mplayer flac lame


# Network utils
sudo port -v install netcat wget tor stunnel curl antinat

#And my usual math stuff
sudo port -v install octave maxima gnuplot grace octave-plot plplot 


#now for my sound and vision research stuff
sudo port -v install sox opencv portaudio sphinxbase pocketsphinx julius tesseract 


# And my document management stuff (LaTeX and allied)
# This takes a ridiculously long time
sudo port -v install kde4-kile pdfjam djvulibre df2djvu djvu2pdf pdf2htmlex okular odt2txt groff catdoc antiword mypaint


#Finally the programming languages
sudo port -v wxWidgets-3.0 qt5 gawk flex bison erlang elixir lua


#Now for the python stuff - neeed to make sure this works
sudo easy_install pip
sudo pip install numpy scipy sympy 