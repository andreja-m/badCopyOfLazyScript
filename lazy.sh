# INTRO

cd art
cat hello.txt
read -t 1
cat l.txt
read -t 1

function lazy()
{
  clear
  cat l.txt
}

#PRINTING FUNCTIONS

function mainMenu()
{
  echo "options"
  echo "1) Accessories          2) Tools"
  echo "3) Editors              4) Pen-Test"
  echo "5) Programming          s) Scripts"
  echo "h) HELP                 pp) PersonalPref"
  echo "xx) exit"
}

function access()
{
  echo "=============Accessories==============="
  echo "1) cmatrix              2) neofetch"
  echo "3) sl                   4) hollywood"
  echo "5) cheat.sh             6) VLC Player"
  echo "00) back"
}

function tools()
{
  echo "=================Tools==================="
  echo "1) htop                 2) ifconfig"
  echo "3) netstat              4) nnn"
  echo "5) ncdu                 6) speedtest-cli"
  echo "7) terminator           8) git"
  echo "9) apache               10) nginx"
  echo "11)mariadb              12) docker"
  echo "00) back"
}

function editors()
{
  echo "===================Editors================"
  echo "1) vim                  2) sublime-text"
  echo "00) back"
}

function Pen-Test()
{
  echo "================Pen-Test================"
  echo "1) Metasploit"
  echo "00) back"
}

function programming()
{
  echo "===============PTHON=================="
  echo "1) SQLAlchemy           2)Flask"
  echo "3) Django               4) Virtualenv"
  echo "00) back"
}

function scripts()
{
  echo "=================doomguy==================="
  echo "1) awc                  2) docker LAMP/LAG"
  echo "3) getInfo              4) taskMaster"
  echo "5) passGen"
  echo "00) back"
}

function personalPref()
{
  echo "1) cl                   2) update system"
  echo "3) upgrade system       4) One-Line PortScanner"
  echo "5) parrotools"
  echo "00) back"
}

function error()
{
  echo "you don't have software installed"
  read -t 0.5
  echo "do you want to install tool?"
  echo "if you do press y [y/n]"
}

#SPINNER

spinner=( Ooooo oOooo ooOoo oooOo ooooO )

function spin()
{
  while [ 1 ]
  do
    for i in "${spinner[@]}"
    do
      echo -ne "\r$i"
      sleep 0.2
    done
  done
}

#BACK FUNCTIONS

function inputMainMenu()
{
  read INP
  if [ $INP -eq 1 ]
  then
    clear
    access
    inputAccess
    back
  elif [ $INP -eq 2 ]
  then
    clear
    tools
    inpuTools
    back
  elif [ $INP -eq 3 ]
  then
    clear
    editors
    inputEditors
    back
  elif [ $INP -eq 4 ]
  then
    clear
  	Pen-Test
  	inputPen-Test
    back
  elif [ $INP -eq 5 ]
  then
    clear
    programming
    inputProgramming
  elif [ $INP == s ]
  then
    clear
    scripts
    inputScripts
  elif [ $INP == pp ]
  then
    clear
    personalPref
    inputPP
  elif [ $INP == h ]
  then
  	cd -
  	clear
  	cat README.txt
  	read
  	cd art
  	back
  elif [ $INP == xx ]
  then
    clear
    exit
  else
    clear
    echo "unknown command"
    read -t 1
  fi
  back
}

function inputAccess()
{
  read INP
  if [ $INP -eq 1 ]
  then
    if command -v cmatrix
    then
      cmatrix
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt install cmatrix
      else
        back
      fi
    fi
  elif [ $INP -eq 2 ]
  then
    if command -v neofetch
    then
      neofetch
      read
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install neofetch
      else
        back
      fi
    fi
  elif [ $INP -eq 3 ]
  then
    if command -v sl
    then
      sl
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install sl
      else
        back
      fi
    fi
  elif [ $INP -eq 4 ]
  then
    if command -v hollywood
    then
      hollywood
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install hollywood
      else
        back
      fi
    fi
  elif [ $INP -eq 5 ]
  then
    curl cheat.sh
    read
  elif [ $INP -eq 6 ]
  then
    if command -v vlc
    then
      vlc
      back
    else
      sudo apt-get install vlc
    fi
  elif [ $INP -eq 00 ]
  then
    back
  else
    clear
    echo "unknown command"
    read -t 1
    back
  fi
}

function inpuTools()
{
  read INP
  if [ $INP -eq 1 ]
  then
    if command -v htop
    then
      htop
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install htop
      else
        back
      fi
    fi
  elif [ $INP -eq 2 ]
  then
    if command -v ifconfig
    then
      ifconfig
      read
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install ifconfig
      else
        back
      fi
    fi
  elif [ $INP -eq 3 ]
  then
    if command -v netstat
    then
      netstat
      read
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install netstat
      else
        back
      fi
    fi
  elif [ $INP -eq 4 ]
  then
    if command -v nnn
    then
      nnn
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install nnn
      else
        back
      fi
    fi
  elif [ $INP -eq 5 ]
  then
    if command -v ncdu
    then
      ncdu
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt install ncdu
      else
        back
      fi
    fi
  elif [ $INP -eq 6 ]
  then
    if command -v speedtest
    then
      speedtest
      echo
      echo "DONE"
      read
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt install speedtest-cli
      else
        back
      fi
    fi
  elif [ $INP -eq 7 ]
  then
    if command -v terminator
    then
      terminator
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install terminator
      else
        back
      fi
    fi
  elif [ $INP -eq 8 ]
  then
    if command -v git
    then
      git
      read
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install git
      else
        back
      fi
    fi
  elif [ $INP -eq 9 ]
  then
    if command -v apache2
    then
      apache2 -v
      read
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install apache2
      else
        back
      fi
    fi
  elif [ $INP -eq 10 ]
  then
    if command -v nginx
    then
      nginx -v
      read
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install nginx
      else
        back
      fi
    fi
  elif [ $INP -eq 11 ]
  then
    if command -v mariadb
    then
      mariadb --version
      read
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install mariadb-server
      else
        back
      fi
    fi
  elif [ $INP -eq 12 ]
  then
    if command -v docker
    then
      docker
      read
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install docker.io
      else
        back
      fi
    fi
  elif [ $INP -eq 123 ]
  then
    echo "YOU HAVE FOUND SECRET PLACE"
    if command -v wireshark
    then
      wireshark
      back
    else
      echo "unfortunately you dont have wireshark installed..."
      echo "do you want to install wireshark [y/n]"
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install wireshark
      else
        back
      fi
    fi
  elif [ $INP -eq 00 ]
  then
    back
  else
    clear
    echo "command unknown"
    read -t 1
    back
  fi
}

function inputEditors()
{
  read INP
  if [ $INP -eq 1 ]
  then
    if command -v vim
    then
      vim
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        sudo apt-get install vim
      else
        back
      fi
    fi
  elif [ $INP -eq 2 ]
  then
    if command -v subl
    then
      subl
      back
    else
      error
      read INP
      if [ $INP == y ]
      then
        echo "***	Installing GPG key...	***"
        wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
        echo "***	Ensuring apt is set up to work with https sources... ***"
        sudo apt-get install apt-transport-https
        echo "*** For Stqable relese press 1 and hit enter, for Dev relese press 2 and hit enter: ***"
        read INP
        if [ $INP -eq 1 ]
        then
          echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
        elif [ $INP -eq 2 ] 
          then
        echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
        else
          echo "your input in invalid command"
          back
        fi
        echo "	Updating apt sources and installing Sublime-Text 	***"
        read -t 1
        sudo apt-get update
        sudo apt-get install sublime-text
        subl
        back
      else
        back
      fi
    fi
  elif [ $INP -eq 00 ]
  then
    back
  else
    clear
    echo "unknown command"
    read -t 1
    back
  fi
}

function inputPen-Test()
{
	read INP
	if [ $INP -eq 1 ]
	then
		if command -v msfconsole
		then
			msfconsole
			back
		else
			error
			read INP
			if [ $INP == y ]
			then
				curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  				chmod 755 msfinstall && \
  				./msfinstall
  				back
  			else
  				back
  			fi
  		fi
    elif [ $INP -eq 00 ]
    then
      back
  	else
  		clear
  		echo "unknown command"
  		read -t 1
  		back
  	fi
}

function inputPP()
{
  read INP
  if [ $INP -eq 1 ]
  then
    touch cl
    chmod +x cl
    echo "clear" >> cl
    sudo mv cl /usr/bin
  elif [ $INP -eq 2 ]
  then
    sudo apt-get update
    echo "DONE"
    read -t 0.5
  elif [ $INP -eq 3 ]
  then
    sudo apt-get upgrade
    echo "DONE"
    read -t 0.5
  elif [ $INP -eq 4 ]
  then
    echo "enter ip adress"
    read INP
    for i in {1..65535};do (echo </dev/tcp/172.17.0.1/$i) &>/dev/null && echo -e "\n[+] Open port at:\t$i" || echo -n ".";done
    read
  elif [ $INP -eq 5 ]
  then
    sudo apt-get intsall parrot-tools
    echo "you are armed up"
    read
  elif [ $INP -eq 00 ]
  then
    back
  else
    clear
    echo "unknown command"
    read -t 1
    back
  fi
}

function inputProgramming()
{
  read INP
  if [ $INP -eq 1 ]
  then
    sudo apt-get install python3-sqlalchemy
    echo "DONE"
    read -t 0.5
  elif [ $INP -eq 2 ]
  then
    sudo apt-get install python3-flask
    echo "DONE"
    read -t 0.5
  elif [ $INP -eq 3 ]
  then
    sudo apt-get install python3-django
    echo "DONE"
    read -t 0.5
  elif [ $INP -eq 4 ]
  then
    sudo apt-get install python3-virtualenv
    echo "DONE"
    read -t 0.5
  elif [ $INP -eq 00 ]
  then
    back
  else
    clear
    echo "unknown command"
    read -t 1
    back
  fi
}

function inputScripts()
{
  echo "***WARNING*** scripts will be downloaded on desktop ***WARNING***"
  read INP
  if [ $INP -eq 1 ]
  then
    cd /$HOME/Desktop/
    git clone https://github.com/doomguy-369/apacheWheeleChair
    cd -
  elif [ $INP -eq 2 ]
  then
    cd /$HOME/Desktop/
    git clone https://github.com/doomguy-369/dockerLamp-LagContainter
    cd -
  elif [ $INP -eq 3 ]
  then
    cd /$HOME/Desktop/
    git clone https://github.com/doomguy-369/getInfo
    cd -
  elif [ $INP -eq 4 ]
  then
    cd /$HOME/Desktop/
    git clone https://github.com/doomguy-369/taskMaster
    cd -
  elif [ $INP -eq 5 ]
  then
    cd /$HOME/Desktop/
    git clone https://github.com/doomguy-369/passwordGenerator
    cd -
  elif [ $INP -eq 00 ]
  then
    back
  else
    clear
    echo "unknown command"
    read -t 1
    back
  fi
}

function back()
{
  lazy
  mainMenu
  inputMainMenu
}

back
