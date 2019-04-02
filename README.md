# Run Lazarus IDE inside docker container
Run command below before you run your container  
`xhost local:root`  

The above command allows root user to temporaly access X session of the current user

In order to run Lazarus IDE inside docker, it's possible to set parameters in two different ways:

1)
`docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged glaucosginez/lazarus`  
The problem in above command is the use o `--privileged` option, this option tell to docker that he grant access to host devices to the container

2)
`docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --security-opt seccomp=unconfined glaucosginez/lazarus`  

The above command is better than first because it uses `--security-opt seccomp=unconfined` instead `--privileged`

The `--privileged` or `--security-opt seccomp=unconfined` are required for the gdb debugger ro run correctly



References:

https://stackoverflow.com/questions/34856092/gdb-does-not-hit-any-breakpoints-when-i-run-it-from-inside-docker-container  
https://github.com/jessfraz/dockerfiles/issues/4  
https://wiki.archlinux.org/index.php/Running_GUI_applications_as_root  
https://blog.selectel.com/containers-security-seccomp/  
https://www.edivaldobrito.com.br/como-instalar-ide-lazarus-1-2-4-ubuntu/  
http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/  
