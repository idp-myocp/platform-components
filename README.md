# IDP Platform Components

GitOps manifest for an Internal Developer Platform built on OpenShift

## Bootstrapping

1. Provision OpenShift GitOps

   `oc apply -k argocd/bootstrap`

1. Edit `argocd/platform-root.yaml` and customize the configuration (see [Configuration Guide](#configuration-guide))

1. Provision the root ArgoCD Application

   `oc apply -f argocd/platform-root.yaml`

## Configuration Guide

### Cluster Base URL

Several platform component charts need to know the base domain of the OpenShift router. Typically, this includes everything after `*.apps.` for any given OpenShift Route host, assuming a wildcard domain is in use.

Example:

```yaml
  source:
    ...
    helm:
      parameters:
        - name: clusterBaseUrl
          value: cluster-xxxxx.xxxxx.sandbox0000.opentlc.com
```

### GitHub Access Token

In order to read GitHub URLs, Backstage needs an GitHub access token provided. An access token can be generated using the GitHub UI under `Settings -> Developer Settings -> Personal Access Tokens`.

Example:

```yaml
  source:
    ...
    helm:
      parameters:
        - name: "github.token"
          value: ghp_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```