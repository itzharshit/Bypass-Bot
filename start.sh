if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kccut/Bypass-Bot /KC-Bypass-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KC-Bypass-Bot
fi
cd /KC-Bypass-Bot
pip3 install -U -r requirements.txt
echo "Starting KC Films Bot...."
python3 main.py
