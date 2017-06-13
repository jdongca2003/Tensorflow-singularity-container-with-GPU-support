IMAGE="tensorflow_gpu-1.1.0-cp27-linux_x86_64.img"
DEF="ubuntu.def"
sudo rm -f $IMAGE
sudo singularity create $IMAGE
sudo singularity expand --size 5000 $IMAGE
sudo singularity bootstrap $IMAGE $DEF
sudo singularity exec --nv -B `pwd`:/mnt -w $IMAGE sh /mnt/tensorflow.sh
