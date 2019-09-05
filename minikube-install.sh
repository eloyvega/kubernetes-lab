sudo minikube delete
sudo CHANGE_MINIKUBE_NONE_USER=true minikube start \
 --vm-driver=none \
 --memory=4096 \
 --cpus=2 \
 --kubernetes-version=v1.12.0 \
 --disk-size=15g \
 --extra-config=apiserver.enable-admission-plugins="LimitRanger,NamespaceExists,NamespaceLifecycle,ResourceQuota,ServiceAccount,DefaultStorageClass,MutatingAdmissionWebhook"
