resource "tfe_workspace" "this" {
  // Search related Workspace settings
  name        = var.name
  description = var.description
  tag_names   = var.tags
  // Organization related settings
  organization = var.organization_name
  project_id   = var.project_id
  // Workspace related settings
  allow_destroy_plan    = var.allow_destroy_plan
  auto_apply            = var.auto_apply
  file_triggers_enabled = var.file_triggers_enabled
  trigger_prefixes      = distinct(concat(var.trigger_prefix_paths, [var.working_directory]))
  working_directory     = var.working_directory
  vcs_repo {
    identifier                 = var.vcs_git_repository
    branch                     = var.vcs_git_branch
    github_app_installation_id = var.organization_github_app_installation_id
  }
  // not every workspace needs to be a remote state consumer
  // of this workspace.
  global_remote_state = var.global_accessable_state
  // a list of workspace IDs to be used as data sources
  remote_state_consumer_ids = var.remote_state_consumer_ids
  // Terraform version to use
  terraform_version = var.terraform_version

  // set agent specific settings
  agent_pool_id  = var.execution_mode == "agent" ? var.agent_pool_id : null
  execution_mode = var.execution_mode
}

output "workspace_id" {
  value = tfe_workspace.this.id
}
