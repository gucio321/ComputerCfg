## NVIDIA drivers installation

<details><summary>DEPRECATED (see docs/nvidia.txt)</summary>
- add nvidia repo `sudo dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/fedora37/x86_64/cuda-fedora37.repo`
- install drivers `sudo dnf module install nvidia-driver:latest-dkms`
- reboot
- If appliable, add keys NVIDIA driver key `mokutil --import /var/lib/dkms/mok.pub`
- reboot and follow the instructions
- should work
</details>
