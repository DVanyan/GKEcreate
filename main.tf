data "github_actions_public_key" "secret_cloud_token" {
  repository = "GKEcreate"
}

resource "github_actions_secret" "tf_secret" {
  repository       = "GKEcreate"
  secret_name      = "TF_CLOUD_TOKEN"
  plaintext_value  = var.tf_secret
}