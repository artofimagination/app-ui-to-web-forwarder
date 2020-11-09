# Forwarding tool of App UI to web browser
Docker image to forward 2D/3D App UI to a webbrowser using [xpra] (https://xpra.org/) 

# How to use?
Create a docker image for the desired app to be run in the browser.

Call the following to run the app:
 - ```/usr/bin/xpra start --daemon=no --start-child=<appname>```
 
See the example docker file and entry poin scripts for more info.
 - ```docker-entrypoint.sh.example```
 - ```Dockerfile.example```

# More info regarding to xpra and running 3D GUI from docker
 https://github.com/ffeldhaus/docker-xpra-html5-gpu-minimal

 https://github.com/NVIDIA/nvidia-container-runtime

 https://github.com/NVIDIA/nvidia-docker

 https://xpra.org/

 https://medium.com/@pigiuz/hw-accelerated-gui-apps-on-docker-7fd424fe813e
