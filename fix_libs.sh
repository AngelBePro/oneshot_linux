if [ -d backuplibs ]; then
	echo "Backup folder already exists."
else
	mkdir backuplibs
fi

if [ -f librt.so* ]; then
	rm librt.so*
	cp *.so* ./backuplibs
	ln -s /usr/lib/librt.so* ./backuplibs
else
	echo "No libs found."
fi

for i in *.so*; do
	[ -e /usr/lib32/$i ] && ln -sf /usr/lib32/$i $i
done

# _______ in this case is the clover app for the tower puzzle, but as to not spoil I leave it mysterious with the original name of the app
echo "Fixing _______ app libs"
if [ -d ~/.local/share/Oneshot ]; then
	echo "Game data folder already exists."
else
	mkdir ~/.local/share/Oneshot
fi

# For some reason doesn't work with symlinks so we use hard links instead
ln ./base_library.zip ./backuplibs/* ~/.local/share/Oneshot
ln -s $PWD/images $PWD/PyQt5 ~/.local/share/Oneshot
