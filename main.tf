resource "gitlab_deploy_key_enable" "this" {
  key_id  = var.key_id
  project = var.project

  can_push = var.can_push
}
