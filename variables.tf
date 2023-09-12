variable "name" {
  type        = string
  description = "The name of the workspace"
}

variable "description" {
  type        = string
  description = "The description of the workspace"
}

variable "tags" {
  type        = set(string)
  description = "The tags of the workspace"
}

variable "organization_name" {
  type        = string
  description = "The name of the organization. Should not be changed, unless you know what you are doing."
}

variable "organization_github_app_installation_id" {
  type        = string
  description = "The ID of the GitHub App Installation. Should not be changed, unless you know what you are doing."
}

variable "project_id" {
  type        = string
  description = "The ID of the project. E.g. 'tfe_project.<resource-name>.id'"
}

variable "allow_destroy_plan" {
  type        = bool
  description = "Whether destroy plans are allowed for this workspace. Defaults to 'false'. Should not be changed, unless you know what you are doing."
  default     = false
}

variable "auto_apply" {
  type        = bool
  description = "Whether to automatically apply changes when a Terraform plan is successful. Defaults to 'true'. Should not be changed, unless you know what you are doing."
  default     = true
}

variable "file_triggers_enabled" {
  type        = bool
  description = "Whether to enable file triggers for this workspace. Defaults to 'true'. Should not be changed, unless you know what you are doing."
  default     = true
}

variable "working_directory" {
  type        = string
  description = "The working directory of the workspace. Defaults to ''. This should be the path to the directory containing the Terraform configuration files."
  default     = ""
}

variable "trigger_prefix_paths" {
  type        = list(string)
  description = "A list of trigger prefixes. These prefixes determite which paths should trigger a run. Defaults to '[]'. If working_directory is set, this variable will be merged with the working_directory variable."
  default     = []
}

variable "vcs_git_repository" {
  type        = string
  description = "The git repository of the workspace."
}

variable "vcs_git_branch" {
  type        = string
  description = "The git branch of the workspace. Defaults to 'main'."
  default     = "main"
}

variable "global_accessable_state" {
  type        = bool
  description = "Whether the state of this workspace should be accessable by all other workspaces. Defaults to 'false'."
  default     = false
}

variable "remote_state_consumer_ids" {
  type        = list(string)
  description = "A list of workspace IDs to be used as data sources. Defaults to '[]'."
  default     = []
}

variable "terraform_version" {
  type        = string
  description = "The version of Terraform to use for this workspace."
}

variable "agent_pool_id" {
  type        = string
  description = "The ID of the agent pool to use for this workspace. Defaults to ''. Should not be changed, unless you know what you are doing."
  default     = ""
}

variable "execution_mode" {
  type        = string
  description = "The execution mode to use for this workspace. Defaults to 'remote'. Should not be changed, unless you know what you are doing."
  default     = "remote"

  validation {
    condition     = contains(["remote", "agent"], var.execution_mode)
    error_message = "execution_mode must be either 'remote' or 'agent'"
  }
}
