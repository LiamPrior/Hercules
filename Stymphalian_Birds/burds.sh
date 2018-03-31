GIT()
{
    touch ./$DIRECTORY/.gitignore
    echo "*.DS_Store" >> ./$DIRECTORY/.gitignore
    echo ".AppleDouble" >> ./$DIRECTORY/.gitignore
    echo ".LSOverride" >> ./$DIRECTORY/.gitignore
    echo "a.out" >> ./$DIRECTORY/.gitignore
    echo "._*" >> ./$DIRECTORY/.gitignore
    echo ".DocumentRevisions-V100" >> ./$DIRECTORY/.gitignore
    echo ".fseventsd" >> ./$DIRECTORY/.gitignore
    echo ".Spotlight-V100" >> ./$DIRECTORY/.gitignore
    echo ".TemporaryItems" >> ./$DIRECTORY/.gitignore
    echo ".Trashes" >> ./$DIRECTORY/.gitignore
    echo ".VolumeIcon.icns" >> ./$DIRECTORY/.gitignore
    echo ".com.apple.timemachine.donotpresent" >> ./$DIRECTORY/.gitignore
    echo ".AppleDB" >> ./$DIRECTORY/.gitignore
    echo ".AppleDesktop" >> ./$DIRECTORY/.gitignore
    echo ".apdisk" >> ./$DIRECTORY/.gitignore
}

CLONELINK()
{
	read -p "Provide Github link: " link
	cd ./$DIRECTORY
	git clone $link libft
	cd ..
}

SRCS()
{
	echo "Creating SRCS!"
	mkdir ./$DIRECTORY/SRCS
}

INCLUDES()
{
	echo "Creating Includes!"
	mkdir ./$DIRECTORY/includes
}

INIT()
{
	echo "initializing repo!"
	git init ./$DIRECTORY/
}

DIR()
{
	echo "Directory Created!"
	mkdir ./$DIRECTORY/
	touch ./$DIRECTORY/Makefile
}

START()
{
	DIR
	read -p "Do you want git init this directory? (y/n) " yn
	case $yn in
		[Yy] ) INIT ;;
		[Nn] ) echo "\033[7;49;93m!!!Okay!!!\033[0;49;39m"
	esac
	read -p "Include Includes? (y\n) " yn
	case $yn in
		[Yy] ) INCLUDES ;;
		[Nn] ) echo "\033[7;49;93m!!!Okay!!!\033[0;49;39m"
	esac
	read -p "Include SRCS? (y/n) " yn
	case $yn in
		[Yy] ) SRCS ;; 
		[Nn] ) echo "\033[7;49;93m!!!Okay!!!\033[0;49;39m"
	esac
	read -p "Include .gitignore? (y/n) " yn
	case $yn in
		[Yy] ) GIT ;;
		[Nn] ) echo "\033[7;49;93m!!!OKAY JEEZ!!!\033[0;49;39m"
	esac
	read -p "Include Libft or other? (y/n) " yn
	case $yn in
		[Yy] ) CLONELINK ;;
		[Nn] ) echo "\033[7;49;93m!!!okay!!!\033[0;49;39m"
	esac
	echo "\033[0;49;92mfinished!\033[0;49;39m"
}

if [ "$1" ] && [ "$2" ]; then
	DIRECTORY=$2
	if ! [ -d $DIRECTORY ]; then
		if [ "$1" ] && [ "$DIRECTORY" != "" ]; then
			START
		fi
	elif [ -d $DIRECTORY ]; then
		echo "Error: Directory Already exists!"
	fi
else
	echo "Usage: (file type), (directory name)!"
	exit
fi
