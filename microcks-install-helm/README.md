# Microcks-Install-Helm

This chart bootstraps a new [Microcks](http://microcks.io) application using the [Helm](https://helm.sh) package manager.

Resources within this directory should work with Helm version 3+.

## Prerequisites

- First, make sure you have the Microcks Operator installed in the OpenShift cluster. You can do this by following the operator's installation documentation.
- Next Make sure you are installing the chart in the same namespace as the Microcks Operator. In this case we created and installed both the charts and operators in the "microcks" namespace.


## Installing the Chart


```console
$ helm install microcks ./microcks-install-helm --namespace microcks
```

3 default users are available in the microcks instance.


- user with password microcks123
- manager with password microcks123
- admin with password microcks123
