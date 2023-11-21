project_path=`pwd`
apt-get update && apt-get upgrade

sudo apt-get install python3-pip
sudo pip3 install virtualenv

cd $project_path
virtualenv venv
source $project_path/venv/bin/activate
pip install setuptools
pip install -r r.txt

sudo ln -s $project_path/mydata.service /etc/systemd/system/

sudo systemctl start mydata