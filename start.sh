if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/shakir04/Kings-bot.git /Kings-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Kings-bot
fi
cd /Kings-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py