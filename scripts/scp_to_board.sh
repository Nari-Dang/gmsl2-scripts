if [ $# != 1 ]; then
   echo "Usage: $0 board_IP"
   exit 1
fi

echo "Copying /home/nari/presien/backup/workspace_on_board/gmsl2-scripts/scripts to $1:/home/ai-blox/"
scp -r /home/nari/presien/backup/workspace_on_board/gmsl2-scripts/scripts ai-blox@$1:/home/ai-blox/
echo "Copying done"

