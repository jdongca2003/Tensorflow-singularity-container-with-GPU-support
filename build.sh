IMAGE="ubuntu_tensorflow_GPU.img"
DEF="ubuntu.def"
sudo rm -f $IMAGE
sudo singularity create $IMAGE
sudo singularity expand --size 5000 $IMAGE
sudo singularity bootstrap $IMAGE $DEF
sudo singularity exec -B `pwd`:/mnt -w $IMAGE sh /mnt/tensorflow.sh
