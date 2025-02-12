<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/0.63.0/docs/data-sources/project) | data source |
| [tfe_projects.all](https://registry.terraform.io/providers/hashicorp/tfe/0.63.0/docs/data-sources/projects) | data source |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/0.63.0/docs/data-sources/workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization"></a> [organization](#input\_organization) | n/a | `string` | n/a | yes |

## Environment Variable
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="environment_TFE_TOKEN"></a> [TFE_TOKEN](#environment\_TFE_TOKEN) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Workspaces"></a> [Workspaces](#output\_Workspaces) | n/a |
<!-- END_TF_DOCS -->