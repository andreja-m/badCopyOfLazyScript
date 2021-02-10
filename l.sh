clear

cd art
cat hello.txt
read -t 1.25

cat l.txt
read -t 1.25

clear

cat l.txt
read -t 1
echo -------------------------------------------------------
echo

function main()
{
  select option in ifconfig netstat htop cmatrix neofetch clear exit
  do
    case $option in
      ifconfig)
      ifconfig;;
    netstat)
      netstat;;
     htop)
      htop;;
    cmatrix)
      cmatrix;;
    neofetch)
      neofetch ;;
    clear)
      clear;;
    exit)
      exit
      ;;
  esac
  echo "press enter to show menu again"
done
}

main


