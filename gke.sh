 1  gcloud config set compute/region us-east1
    2  gcloud config set compute/zone us-east1-b
    3  gcloud container clusters create --machine-type=e2-medium --zone=us-east1-b lab-cluster
    4  gcloud container clusters get-credentials lab-cluster
    5  kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0
    6  kubectl expose deployment hello-server --type=LoadBalancer --port 8080
