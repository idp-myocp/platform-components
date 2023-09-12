# Microcks-Helm

This chart bootstraps a new [Microcks](http://microcks.io) application using the [Helm](https://helm.sh) package manager.

Resources within this directory should work with Helm version 3+ (which do not need the Tiller server-side component).

## Installing the Chart


```console
$ git clone https://github.com/microcks/microcks

$ cd install/kubernetes

$ helm install microcks ./microcks --namespace microcks \
   --set microcks.url=microcks.$(minikube ip).nip.io \
   --set keycloak.url=keycloak.$(minikube ip).nip.io 

NAME: microcks
LAST DEPLOYED: Thu Jul  7 10:01:06 2022
NAMESPACE: microcks
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
Thank you for installing microcks.

Your release is named microcks.

To learn more about the release, try:

  $ helm status microcks
  $ helm get microcks

Microcks is available at https://microcks.192.168.64.6.nip.io.

GRPC mock service is available at "microcks-grpc.192.168.64.6.nip.io".
It has been exposed using TLS passthrough on the Ingress controller, you should extract the certificate for your client using:

  $ kubectl get secret microcks-microcks-grpc-secret -n  -o jsonpath='{.data.tls\.crt}' | base64 -d > tls.crt

Keycloak has been deployed on https://keycloak.192.168.64.6.nip.io/auth to protect user access.
You may want to configure an Identity Provider or add some users for your Microcks installation by login in using the
username and password found into 'microcks-keycloak-admin' secret.
```
