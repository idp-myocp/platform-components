# IDP Platform Components

GitOps manifest for an Internal Developer Platform built on OpenShift

## Bootstrapping

1. Provision OpenShift GitOps

   `oc apply -k argocd/bootstrap`

1. Edit `argocd/platform-root.yaml` and configure the target OpenShift cluster base domain.

1. Provision the root ArgoCD Application

   `oc apply -f argocd/platform-root.yaml`
