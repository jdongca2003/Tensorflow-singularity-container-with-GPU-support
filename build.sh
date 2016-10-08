rm -f ubuntu_tensorflow_GPU.img
singularity create ubuntu_tensorflow_GPU.img
singularity expand --size 5000 ubuntu_tensorflow_GPU.img
singularity bootstrap ubuntu_tensorflow_GPU.img ubuntu.def
singularity exec -w ubuntu_tensorflow_GPU.img sh ./tensorflow.sh
