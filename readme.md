# For Lain

## Motivation
Prototype a homelab that is using GitOps in kind w/ Flux.

Image automation 

Currently running a few services on VMs and also have a Kubernetes cluster on a single beefy client running Proxmox.

Considering hardware options for bare metal nodes but will probably just grab more thin clients

Cookbook or reference for personal use

## Tech
[kind](https://kind.sigs.k8s.io/)

[FluxCD](https://fluxcd.io/)

[Helm](https://helm.sh/)

[Github Actions](https://github.com/features/actions/)

[Kustomize](https://kustomize.io/)

[SOPS](https://getsops.io/)


## Commands
### Bootstrap command
```
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

### SOPS - show diffs in cleartext w/ git
```
git config diff.sopsdiffer.textconv "sops decrypt"
```
NB: `.gitattributes` needs to be updated if a different serialzation langauge also needs to have secrets.

### Kind Load Balancer
Requires their `cloud-provider-kind` binary.

```
Install with:
go install sigs.k8s.io/cloud-provider-kind@latest

Enter nix shell, the flake has go and also adds go binaries to PATH.

Run with:
cloud-provider-kind
```

