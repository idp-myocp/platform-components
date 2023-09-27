# IDP Platform Components

GitOps manifest for an Internal Developer Platform built on OpenShift

## Bootstrapping

On a fresh OpenShift cluster where OpenShift GitOps is not installed:

1. Edit `argocd/bootstrap/platform-root.yaml` and configure the target OpenShift cluster base domain.

1. Apply the bootstrap manifest:
   
   `oc apply -k argocd/bootstrap`

If OpenShift GitOps is already installed:

1. Edit `argocd/bootstrap/platform-root.yaml` and configure the target OpenShift cluster base domain.

1. Apply the bootstrap manifest:
   
   `oc apply -f argocd/bootstrap/platform-root.yaml -n openshift-gitops`