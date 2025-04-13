# For Lain

## See `justfile`

## Motivation
Prototyping GitOps cluster w/ FluxCD and kind.

### Things to try
- Image automation 
- Secret handing w/ SOPS

## Tech
### [kind](https://kind.sigs.k8s.io/)
Kind Load Balancer
Requires their `cloud-provider-kind` binary.
```bash
Install with:
just install-kind-lb

Run with:
just kind-lb
```

### [FluxCD](https://fluxcd.io/)

### [Helm](https://helm.sh/)

### [Github Actions](https://github.com/features/actions/)

### [SOPS](https://getsops.io/)
Shows diffs in cleartext w/ git
```bash
just sops-git
```

