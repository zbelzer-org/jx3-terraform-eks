provider "aws" {
  region  = var.region
  profile = var.profile
}

module "eks-jx" {
  source               = "github.com/jenkins-x/terraform-aws-eks-jx?ref=v1.21.0"
  cluster_version      = var.cluster_version
  cluster_name         = var.cluster_name
  region               = var.region
  vault_user           = var.vault_user
  is_jx2               = false
  jx_git_url           = var.jx_git_url
  jx_bot_username      = var.jx_bot_username
  jx_bot_token         = var.jx_bot_token
  use_vault            = var.use_vault
  use_asm              = var.use_asm
  force_destroy        = var.force_destroy
  nginx_chart_version  = var.nginx_chart_version
  install_kuberhealthy = var.install_kuberhealthy
}
