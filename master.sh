#! /bin/sh

kubeadm init --pod-network-cidr=10.244.0.0/16
mkdir -p /home/shell/.kube
chown $(id -u shell):$(id -g shell) /home/shell/.kube
cp -i /etc/kubernetes/admin.conf /home/shell/.kube/config
chown $(id -u shell):$(id -g shell) /home/shell/.kube/config
sleep 30
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.yml
