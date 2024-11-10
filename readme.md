# For Lain

## Motivation
Prototype a homelab that is using GitOps in kind w/ Flux.
Image automation 
Currently running a few services on VMs and also have a Kubernetes cluster on a single beefy client running Proxmox.

## Tech
[kind](https://kind.sigs.k8s.io/)
[FluxCD](https://fluxcd.io/)
[Helm](https://helm.sh/)
[Github Actions](https://github.com/features/actions/)
[Kustomize](https://kustomize.io/)
[SOPS](https://getsops.io/)

## Bootstrap command
```sh
flux bootstrap github \
--token-auth \
--owner=xssxrt \
--branch=main \
--components source-controller,kustomize-controller,helm-controller,notification-controller \
--components-extra image-reflector-controller,image-automation-controller \
--private=false \
--personal=true \
--repository=kind-lain \
--path=clusters/staging
```

