

provider "kubernetes" {
  host                   = scaleway_k8s_cluster.kapsule_multi_az.kubeconfig[0].host
  token                  = scaleway_k8s_cluster.kapsule_multi_az.kubeconfig[0].token
  cluster_ca_certificate = base64decode(scaleway_k8s_cluster.kapsule_multi_az.kubeconfig[0].cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    host                   = scaleway_k8s_cluster.kapsule_multi_az.kubeconfig[0].host
    token                  = scaleway_k8s_cluster.kapsule_multi_az.kubeconfig[0].token
    cluster_ca_certificate = base64decode(scaleway_k8s_cluster.kapsule_multi_az.kubeconfig[0].cluster_ca_certificate)
  }
}


resource "helm_release" "argocd" {
  name  = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  version          = "4.9.7"
  create_namespace = true

  values = [
    file("argocd/application.yaml")
  ]
}
