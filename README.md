# Final Project Assignment 1: Exploration (FP1)
DUE Friday, March 11, 2016

## My Library: bencode
My name: Krin Yongvongphaiboon

#About API
The API that I'm using is called "bencode", it is simply parsing the bencoding format of the BitTorrent network protocol into basic Racket data types. The format interpretation is based on the undated [**BitTorrent protocol documentation Web page**](http://www.bittorrent.com/protocol.html).

# How to install
First of all, bencode is not a builtin API which means it required you to install the package youself. I didn't know about this until I read the OPL group on [**uml-opl-spr16**](https://groups.google.com/forum/#!forum/uml-opl-spr16) and found out that it required additional installation. So here is not to import the API:
- Open DrRacket
- Go to File -> Package Manager
- There's going to be 5 tabs: Do What I Mean, Currently Installed, Avaliable from Catalog, Copy from Version, and Settings. Click on Avaliable from Catolog tab.
- Go on filter and search any API you want (in this case I just typed "torrent").
- The list of API will pop up, click on the one you want and hit "install"
- Once finished, you should see the message "raco setup: --- post-installing collections ---"
![alt tag](http://i68.tinypic.com/oieucn.png)

# Runing the code
First of all, I went on internet and fine an example .torrent code. I found it [**here**](http://sample-file.bazadanni.com/2012/01/torrent.html). To retrive the torrent file you need to get the path of the file. The code to retrive .torrent file is: 
```racket
(unbencode (open-input-file path))
```
Edit "path" to the path of the torrent file. It have to be string. The sameple torrent file given me this information:
```
'((dictionary
   (#"announce" . #"udp://tracker.openbittorrent.com:80")
   (#"creation date" . 1327049827)
   (#"info"
    dictionary
    (#"length" . 20)
    (#"name" . #"sample.txt")
    (#"piece length" . 65536)
    (#"pieces" . #"\\\305\346R\276\r\346\362x\5\263\4d\377\233\0\364\211\360\311")
    (#"private" . 1))))
```
![alt tag](http://i67.tinypic.com/10ooh2v.png)


