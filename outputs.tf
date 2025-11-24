output "id" {
  description = "The ID of this resource"
  value       = gitlab_deploy_key_enable.this.id
}

output "key" {
  description = "Deploy key"
  value       = gitlab_deploy_key_enable.this.key
}

output "title" {
  description = "Deploy key's title"
  value       = gitlab_deploy_key_enable.this.title
}
