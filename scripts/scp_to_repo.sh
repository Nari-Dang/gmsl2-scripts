REPO=nari@192.168.98.253:/home/nari/presien/backup/workspace_on_board/gmsl2-scripts

if (( $# > 1 )); then
   echo "Usage: $0 repo_location"
   exit 1
fi


if (( $# == 1 )); then
   REPO=$1
fi

echo "Coying scripts to repo at $REPO"
scp -r ${PWD}/../scripts $REPO
echo "Copying done"

