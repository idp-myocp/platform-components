# IDP Platform Components

GitOps manifest for an Internal Developer Platform built on OpenShift

## Bootstrapping

1. Edit `argocd/bootstrap/platform-root.yaml` and configure the target OpenShift cluster base domain.

1. Provision the root ArgoCD Application

   `oc apply -k argocd/bootstrap`
