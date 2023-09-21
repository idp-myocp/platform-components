# argocd

This config deploy an ArgoCD root application that triggers the deployment of Helm based applications

## Start the ArgoCD application

3 steps, apply the config, start the application and monitor the application

```console
$ kubectl apply -f root-application.yaml

$ argocd app sync root-application

$ argocd app get root-application
```
