# General

`kubectl get all`

`kubectl apply -f archivo.yml`

# Pods

`kubectl run nginx --image nginx`

`kubectl create -f pod.yml`

`kubectl get pods`

`kubectl get pods -o wide`

`kubectl describe pod NOMBRE`

# ReplicationController

`kubectl create -f replication_controller.yml`

`kubectl get replicationcontroller`

# ReplicaSet

`kubectl create -f replicaset.yml`

`kubectl get replicaset`

`kubectl scale --replicas=6 -f replicaset.yml`

`kubectl scale --replicas=6 replicaset myapp-replicaset`

`kubectl delete replicaset myapp-replicaset`

# Deployments

`kubectl create -f deployment.yml`

`kubectl get deployments`


# Services

`kubectl create -f service.yml`

`kubectl delete -f service.yml`

`kubectl get services`