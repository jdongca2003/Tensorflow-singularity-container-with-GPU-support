# Tensorflow-singularity-container-with-GPU-support
This repository provides a bootstrap definition file to build Tensorflow (1.1.0) singularity container with Nvidia GPU support based on singularity 2.3 release. 

## How to build
 1. Install [singularity](http://singularity.lbl.gov/all-releases) 2.3 release. You can see the installation instructions on [singularity homepage](http://singularity.lbl.gov/install-linux) (section: Build an RPM from the source).
 2. Download cuda 8.0 (cuda_8.0.61_375.26_linux-run) and cudnn5.1 (cudnn-8.0-linux-x64-v5.1.tgz) (Here I assume that the nvidia driver has been installed in your host machine) and store the downloaded files and above scripts under the same folder.
 3. Run "sh build.sh" (assume that you have sudo access) 
 5. copy tensorflow_gpu-1.1.0-cp27-linux_x86_64.img into your own local folder and change its owner and group (sudo chown your_user_id:your_group_id tensorflow_gpu-1.1.0-cp27-linux_x86_64.img) so that you can run it with local user.
 6. Run "singularity exec --nv tensorflow_gpu-1.1.0-cp27-linux_x86_64.img python hello_world.py" to check whether it works (where flag '--nv' is used by singularity to automatically detect nvidia driver in the host machine since release 2.3). 
 
## Trouble shooting
#### I don't have root access. How can I install it?
Install virtualbox and vagrant. You can build container image inside a linux VM (e.g. ubuntu 14.04) and copy it into your host machine with Nvidia GPU card.

#### What additional package is required if you build it under CentOS ?
You need to install debootstrap pakcage (e.g sudo yum install epel-release; sudo yum install debootstrap ) 
