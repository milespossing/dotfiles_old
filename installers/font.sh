rm -rf /tmp/font.zip /tmp/font
wget --output-document /tmp/font.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip
unzip /tmp/font.zip -d /tmp/font
font_dir=$HOME/.local/share/fonts/FiraMono
mkdir -p $font_dir
cp -f /tmp/font/*.otf $font_dir
