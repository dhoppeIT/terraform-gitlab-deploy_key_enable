# terraform-gitlab-deploy_key_enable

Terraform module to manage the following Twingate resources:

* gitlab_deploy_key_enable

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_deploy_key" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-deploy-key/local"
  version = "1.0.0"

  project = "example-group-48165/example-project"
  title   = "Example (deploy key)"
}

module "gitlab_deploy_key_enable" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-deploy-key-enable/local"
  version = "1.0.0"


  project = "example-group-48165/example-project-2"
  key_id  = module.gitlab_deploy_key.deploy_key_id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_deploy_key_enable.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/deploy_key_enable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_can_push"></a> [can\_push](#input\_can\_push) | Can deploy key push to the project's repository | `bool` | `false` | no |
| <a name="input_key"></a> [key](#input\_key) | Deploy key | `string` | `null` | no |
| <a name="input_key_id"></a> [key\_id](#input\_key\_id) | The Gitlab key ID for the pre-existing deploy key | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The name or ID of the project to add the deploy key to | `string` | n/a | yes |
| <a name="input_title"></a> [title](#input\_title) | Deploy key's title | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
