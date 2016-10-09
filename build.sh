sudo rm -f ubuntu_tensorflow_GPU.img
sudo singularity create ubuntu_tensorflow_GPU.img
sudo singularity expand --size 5000 ubuntu_tensorflow_GPU.img
sudo singularity bootstrap ubuntu_tensorflow_GPU.img ubuntu.def
sudo singularity exec -B `pwd`:/mnt -w ubuntu_tensorflow_GPU.img sh /mnt/tensorflow.sh
