## Core-Infra-Kubernetes
This is a repository containing coreapps which are essential for apps in kubernetes to achieve their intended objectives. This can be used acros a wide variety of projects.  A good example in this repo is an Ingress Controller for a bare metal hypervisor. The example apps are for an onsite scenario due to the limited budget I have at the moment. Argocd is for declarative CI.

To generate the manifests, please update the apps list with
"app-name: app_source"

Run the script ./bootstrap.sh to update everything

## ToDo
1. Expand the shell script to include helm sources as well as kustomize sources
2. Expand shell script to fix linting issues in kubernetes manifests
