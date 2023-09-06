# kubectl config use-context do-sfo2-dev-k8s-treetracker
# kustomize build overlays/dev | kubectl apply -n rabbitmq-cluster --wait -f -

kubectl config use-context docker-desktop 
kustomize build overlays/dev | kubectl apply -n rabbitmq-cluster --wait -f -

# context -> point to digital ocean -> just need to set up a context for local environment 
# when docker kubernetes is ready, can find a context insstalled by docker
# kubectl config get-contexts -> get the kubernetes by docker with context name "docker-desktop"

# need to find a namespace for rabbitmq, change the variables in deployment folder