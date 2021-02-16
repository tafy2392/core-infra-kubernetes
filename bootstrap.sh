#!/bin/bash

source "apps_list.env"

rm ./kustomization.yaml 2>&1 
for app in "${BOOTSTRAP_MANIFEST_APPS[@]}"
do
  echo $app
  IFS=": " read -r name src <<< "${app}"
  mkdir -p apps/$name
  wget $src -O  ./apps/$name/$name.yaml
  echo "- apps/$name/$name.yaml" >> ./kustomize.yaml
done 

cat <<EOF > ./temp.yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
EOF

cat ./temp.yaml ./kustomize.yaml > ./kustomization.yaml
rm ./temp.yaml ./kustomize.yaml
