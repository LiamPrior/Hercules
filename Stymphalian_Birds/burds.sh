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

LIBFT()
{
	# read -p "whats the Github link?" PATH
	# cd ./$DIRECTORY
	# git clone $PATH
	# cd ..
	cd ./$DIRECTORY
	git clone https://github.com/LiamPrior/libft.git
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

DIR()
{
	echo "Directory Created!"
	mkdir ./$DIRECTORY/
}

START()
{
	DIR
	read -p "Include Includes? (y\n)" yn
	case $yn in
		[Yy] ) INCLUDES ;;
		[Nn] ) echo "!!!Okay!!!" ;;
	esac
	read -p "Include SRCS? (y/n)" yn
	case $yn in
		[Yy] ) SRCS ;; 
		[Nn] ) echo "!!!Okay!!!" ;;
	esac
	read -p "Include .gitignore? (y/n)" yn
	case $yn in
		[Yy] ) GIT ;;
		[Nn] ) echo "!!!OKAY JEEZ!!!"
	esac
	read -p "Include Libft or other? (y/n)" yn
	case $yn in
		[Yy] ) LIBFT ;;
		[Nn] ) echo "!!!okay!!!" ;;
	esac
}

if [ "$1" ] && [ "$2" ]; then
	DIRECTORY=$2
	if [ "$2" != "" ] && ([ "$1" = "C" ] || [ "$1" = "c" ]); then
		START
	elif [ "$1" != "c" ] || [ "$1" != "C" ] && [ $2 != "" ]; then
		echo "This program mainly works with C files!"
		DIR
		GIT
	fi
else
	echo "Usage: (file type), (directory name)!"
	exit
fi
