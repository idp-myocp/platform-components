# Microcks-Helm

This chart bootstraps a new [Microcks](http://microcks.io) application using the [Helm](https://helm.sh) package manager.

Resources within this directory should work with Helm version 3+.

## Installing the Chart


```console
$ git clone https://github.com/57800-hydroquebec/platform-components.git

$ cd platform-components

$ oc new-project microcks

$ helm install microcks ./microcks-helm --namespace microcks --set microcks.url=microcks.$(ocp ip).nip.io --set keycloak.url=keycloak.$(ocp ip).nip.io
```
