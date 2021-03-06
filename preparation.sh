### go lang installation
wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.7.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
# mkdir ~/go
# mkdir ~/go/bin
mkdir ~/work/go
# export GOROOT=$HOME/go
# export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/work/go
export PATH=$PATH:$GOPATH/bin


### skicka installation
go get github.com/google/skicka
skicka init
skicka -no-browser-auth ls

### downlaod data
cd birdsong-generation-project/
skicka download java_song data/

### install dependencies for wave resample
pip install --user --upgrade pip
pip install --user -r requirements.txt

### resampling data
python resample.py -s data -d corpus

### clone tensorflow and install dependencies
git clone https://github.com/ibab/tensorflow-wavenet.git
git checkout b88b5ed95ff51dcb4d4a243fd7747e6f88c16cde
# 23d88970be6a109717dab04300afe4d6b26841af       # back to stable version
cd tensorflow-wavenet
pip install --user -r requirements.txt
pip install --user -U -r requirements.txt
cd ..

