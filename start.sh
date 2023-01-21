if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/918088529/prince /prince
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /prince
fi
cd /prince
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
