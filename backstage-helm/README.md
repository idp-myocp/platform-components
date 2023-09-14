# Backstage-Helm

This chart bootstraps a new [Backstage](https://backstage.io/) application using the [Helm](https://helm.sh) package manager.

Resources within this directory should work with Helm version 3+.

## Installing the Chart

The first step is adding Backstage Helm Chart and its dependent repository. Then build the package and install the helm chart.


```console
$ git clone https://github.com/57800-hydroquebec/platform-components.git

$ cd platform-components

$ oc new-project backstage

$ helm repo add bitnami https://charts.bitnami.com/bitnami

$ helm repo add backstage https://backstage.github.io/charts

$ helm dependency build ./backstage-helm

$ helm install backstage ./backstage-helm --namespace backstage --set global.clusterRouterBase=$(ocp dns)
```
