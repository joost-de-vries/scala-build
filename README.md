# scala-build
Vagrant + docker for building scala apps on java 8

Make sure Virtualbox and Vagrant are installed.  
I made this using Virtualbox 4.3.20 and Vagrant 1.7.2.  

`vagrant up`  
`vagrant ssh`  
`docker run -t -i local/sbt /bin/bash`  
Now `sbt` launcher is in your path.  
