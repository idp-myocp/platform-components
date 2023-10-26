# IDP Platform Components

GitOps manifest for an Internal Developer Platform built on OpenShift

## Bootstrapping

1. Provision OpenShift GitOps

   `oc apply -k argocd/bootstrap`

1. Edit `argocd/platform-root.yaml` and customize the configuration (see [Configuration Guide](#configuration-guide))

1. Provision the root ArgoCD Application

   `oc apply -f argocd/platform-root.yaml`

## Configuration Guide

Below are the critical configuration parameters that require user-provided values.

### GitOps Source

There are many ArgoCD Applications deployed in this demo which reference git repositories. You may be working in a fork of this repository, and perhaps in a feature branch. You can configure the location of your GitHub organization as well as your target git ref in one place.

Example:

```yaml
  source:
    ...
    helm:
      parameters:
        - name: gitOrg
          value: https://github.com/ghuser01
        - name: gitRef
          value: some-feature
```

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

### Backstage GitHub Access Token

In order to read GitHub URLs, Backstage needs an GitHub access token provided. An access token can be generated using the GitHub UI under `Settings -> Developer Settings -> Personal Access Tokens`.

Example:

```yaml
  source:
    ...
    helm:
      parameters:
        - name: "backstage.githubToken"
          value: ghp_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

### RH SSO Authentication

This setup is configured for RH SSO authentication.  The following users and groups will be created and can be used to login.  All have the password of `letmein`.  The keycloak org data sync is enabled and should sync the users and groups in backstage.

#### Users

- user-dev-1
- user-dev-2
- user-ops-1
- user-ops-2
- backstage-admin

#### Groups

- Developers
- Operators
- backstage-admins