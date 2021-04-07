echo "*** REWRITING THE SCRIPT ***"
sed -i -e "/cd art/d" lazy.sh
sed -i -e "/cd -/d" lazy.sh
sed -i "1 i\cd $HOME/ly" lazy.sh

echo "*** MAKING LZ COPY ***"
cp lazy.sh lz
chmod +x lz

echo "*** YOU MUST BE SUDO TO MAKE IT EXECUTABLE BY TYPING LZ ***"
sudo mv lz /usr/bin

echo "*** COPYING THE ART ***"
cd $HOME
mkdir ly
cd -
mv README.txt $HOME/ly
cd art
mv hello.txt $HOME/ly
mv l.txt $HOME/ly
