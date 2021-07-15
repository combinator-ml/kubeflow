module "kubeflow" {
  source = "../../"
}

resource "kubernetes_service" "istio_external" {
  metadata {
    name      = "istio-external"
    namespace = "istio-system"
  }
  spec {
    selector = {
      "app"   = "istio-ingressgateway"
      "istio" = "ingressgateway"
    }
    type = "NodePort"
    port {
      node_port   = 31380
      port        = 80
      target_port = 8080
    }
  }
  depends_on = [module.kubeflow]
}
