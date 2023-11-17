# Workspace

A module to simplify the creation of a Terraform Cloud workspace.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.50.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/0.50.0/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_pool_id"></a> [agent\_pool\_id](#input\_agent\_pool\_id) | The ID of the agent pool to use for this workspace. Defaults to ''. Should not be changed, unless you know what you are doing. | `string` | `""` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Whether destroy plans are allowed for this workspace. Defaults to 'false'. Should not be changed, unless you know what you are doing. | `bool` | `false` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Whether to automatically apply changes when a Terraform plan is successful. Defaults to 'true'. Should not be changed, unless you know what you are doing. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the workspace | `string` | n/a | yes |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | The execution mode to use for this workspace. Defaults to 'remote'. Should not be changed, unless you know what you are doing. | `string` | `"remote"` | no |
| <a name="input_file_triggers_enabled"></a> [file\_triggers\_enabled](#input\_file\_triggers\_enabled) | Whether to enable file triggers for this workspace. Defaults to 'true'. Should not be changed, unless you know what you are doing. | `bool` | `true` | no |
| <a name="input_global_accessable_state"></a> [global\_accessable\_state](#input\_global\_accessable\_state) | Whether the state of this workspace should be accessable by all other workspaces. Defaults to 'false'. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the workspace | `string` | n/a | yes |
| <a name="input_organization_github_app_installation_id"></a> [organization\_github\_app\_installation\_id](#input\_organization\_github\_app\_installation\_id) | The ID of the GitHub App Installation. Should not be changed, unless you know what you are doing. | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | The name of the organization. Should not be changed, unless you know what you are doing. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project. E.g. 'tfe\_project.<resource-name>.id' | `string` | n/a | yes |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | A list of workspace IDs to be used as data sources. Defaults to '[]'. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags of the workspace | `set(string)` | n/a | yes |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of Terraform to use for this workspace. | `string` | n/a | yes |
| <a name="input_trigger_prefix_paths"></a> [trigger\_prefix\_paths](#input\_trigger\_prefix\_paths) | A list of trigger prefixes. These prefixes determite which paths should trigger a run. Defaults to '[]'. If working\_directory is set, this variable will be merged with the working\_directory variable. | `list(string)` | `[]` | no |
| <a name="input_vcs_git_branch"></a> [vcs\_git\_branch](#input\_vcs\_git\_branch) | The git branch of the workspace. Defaults to 'main'. | `string` | `"main"` | no |
| <a name="input_vcs_git_repository"></a> [vcs\_git\_repository](#input\_vcs\_git\_repository) | The git repository of the workspace. | `string` | n/a | yes |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | The working directory of the workspace. Defaults to ''. This should be the path to the directory containing the Terraform configuration files. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | n/a |
<!-- END_TF_DOCS -->
