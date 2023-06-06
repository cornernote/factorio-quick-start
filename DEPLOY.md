package
```sh
zip -r quick-start_1.0.0.zip ./src/
cp quick-start_1.0.0.zip ~/Library/Application\ Support/factorio/mods/
```
add symlink
```sh
ln -s ~/Sites/factorio-quick-start/src ~/Library/Application\ Support/factorio/mods/quick-start 
```

remove symlink
```sh
rm -f ~/Library/Application\ Support/factorio/mods/quick-start
```