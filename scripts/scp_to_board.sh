if [ $# != 1 ]; then
   echo "Usage: $0 board_IP"
   exit 1
fi

echo "Coying scripts to $1:/home/ai-blox/"
scp -r ${PWD}/../scripts ai-blox@$1:/home/ai-blox/
echo "Copying done"

