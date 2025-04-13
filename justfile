flux-init:
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

sop-git:
    git config diff.sopsdiffer.textconv "sops decrypt"

new-flux:
    flux bootstrap git \
        --url=ssh://git@github.com/xssxrt/kind-lain.git \
        --branch=main \
        --private-key-file="$(echo $HOME)/.ssh/xssxrt" \
        --components source-controller,kustomize-controller,helm-controller,notification-controller \
        --components-extra image-reflector-controller,image-automation-controller \
        --path=clusters/lain

install-kind-lb:
    go install sigs.k8s.io/cloud-provider-kind@latest

kind-lb:
    cloud-provider-kind
