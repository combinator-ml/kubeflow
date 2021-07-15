module "kubeflow" {
  source = "./terraform-module-kubeflow"

  kubeflow_operator_version = "1.2.0"
  kubeflow_version          = "1.1.0"
  use_cert_manager          = true
  install_istio             = true
  install_cert_manager      = true
  domain_name               = "kubeflow.local"
  letsencrypt_email         = "hello@combinator.ml"
  #kubeflow_components = ["jupyter", "pipelines"]

  # default login is admin@kubeflow.org and 12341234
}
