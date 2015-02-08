# scala-build
Vagrant + docker for building Scala applications on Oracle Java 8 on Ubuntu 14.04 LTS.  

Make sure Virtualbox and Vagrant are installed.  
I made this using Virtualbox 4.3.20 and Vagrant 1.7.2.  

`vagrant up`  
`vagrant ssh`  
`docker run -t -i local/sbt /bin/bash`  
Now `sbt` launcher is in your path.  
