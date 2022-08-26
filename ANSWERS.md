# Deploying flask api in GKE Cluster

This is a simple project that will build, test, push and deploy flask api applications on GKE Cluster. So, please, follow these steps bellow: 

1- Fork this repo https://github.com/ralff2208/app-api

2- Change **PROJECT_ID** variable on **.github/workflows/app_deploy.yml** for your own project id on GCP

3- Create a service account with editor permissions and download the key (.json file)

4- Create a secret on github actions called **GOOGLE_CREDENTIALS** with the content in service account key file (.json)

5- Run the github actions pipeline

6- When pipeline finished, run these command to take the Public IP for the service: 
```
export SERVICE_IP=$(kubectl get svc -n tembici-app app-api-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
curl http://$SERVICE_IP/api/ping
```