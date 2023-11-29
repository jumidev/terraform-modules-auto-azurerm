# REQUIRED VARIABLES

variable "app_id" {
  description = "(REQUIRED) The ID of the Windows or Linux Web App. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "branch" {
  description = "The branch name to use for deployments. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "repo_url" {
  description = "The URL for the repository. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "github_action_configuration" {
  description = "A 'github_action_configuration' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# github_action_configuration block structure:
#   code_configuration (block)                 : A 'code_configuration' block. Changing this forces a new resource to be created.
#   container_configuration (block)            : A 'container_configuration' block.
#   generate_workflow_file (bool)              : Whether to generate the GitHub work flow file. Defaults to 'true'. Changing this forces a new resource to be created.
#
# code_configuration block structure:
#   runtime_stack (string)            : (REQUIRED) The value to use for the Runtime Stack in the workflow file content for code base apps. Possible values are 'dotnetcore', 'spring', 'tomcat', 'node' and 'python'. Changing this forces a new resource to be created.
#   runtime_version (string)          : (REQUIRED) The value to use for the Runtime Version in the workflow file content for code base apps. Changing this forces a new resource to be created.
#
# container_configuration block structure:
#   image_name (string)                    : (REQUIRED) The image name for the build. Changing this forces a new resource to be created.
#   registry_url (string)                  : (REQUIRED) The server URL for the container registry where the build will be hosted. Changing this forces a new resource to be created.
#   registry_password (string)             : The password used to upload the image to the container registry. Changing this forces a new resource to be created.
#   registry_username (string)             : The username used to upload the image to the container registry. Changing this forces a new resource to be created.


variable "use_manual_integration" {
  description = "Should code be deployed manually. Set to 'false' to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "rollback_enabled" {
  description = "Should the Deployment Rollback be enabled? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "use_local_git" {
  description = "Should the App use local Git configuration. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "use_mercurial" {
  description = "The repository specified is Mercurial. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
