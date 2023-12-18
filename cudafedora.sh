wget https://developer.download.nvidia.com/compute/cuda/12.3.1/local_installers/cuda-repo-fedora37-12-3-local-12.3.1_545.23.08-1.x86_64.rpm
rpm -i cuda-repo-fedora37-12-3-local-12.3.1_545.23.08-1.x86_64.rpm
dnf clean all
dnf -y install cuda-toolkit-12-3
