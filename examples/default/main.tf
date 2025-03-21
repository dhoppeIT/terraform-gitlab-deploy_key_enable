module "gitlab_deploy_key_enable" {
  source = "../../"

  project = "example-group-48165/example-project"
  key_id  = "17283318"
}
