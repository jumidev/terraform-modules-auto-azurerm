# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Container Registry Task. Changing this forces a new Container Registry Task to be created."
  type        = string

}
variable "container_registry_id" {
  description = "(REQUIRED) The ID of the Container Registry that this Container Registry Task resides in. Changing this forces a new Container Registry Task to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "agent_pool_name" {
  description = "The name of the dedicated Container Registry Agent Pool for this Container Registry Task."
  type        = string
  default     = null
}
variable "agent_setting" {
  description = "A 'agent_setting' block."
  type        = map(any)
  default     = null
}
#
# agent_setting block structure:
#   cpu (number)                 : (REQUIRED) The number of cores required for the Container Registry Task.


variable "enabled" {
  description = "Should this Container Registry Task be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Container Registry Task. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry Task.


variable "platform" {
  description = "A 'platform' block."
  type        = map(any)
  default     = null
}
#
# platform block structure:
#   architecture (string)   : The OS architecture. Possible values are 'amd64', 'x86', '386', 'arm' and 'arm64'.
#   variant (string)        : The variant of the CPU. Possible values are 'v6', 'v7', 'v8'.


variable "docker_step" {
  description = "A 'docker_step' block."
  type        = map(any)
  default     = null
}
#
# docker_step block structure  :
#   context_access_token (string): (REQUIRED) The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
#   context_path (string)        : (REQUIRED) The URL (absolute or relative) of the source context for this step. If the context is an url you can reference a specific branch or folder via '#branch:folder'.
#   dockerfile_path (string)     : (REQUIRED) The Dockerfile path relative to the source context.
#   arguments (string)           : Specifies a map of arguments to be used when executing this step.
#   image_names (string)         : Specifies a list of fully qualified image names including the repository and tag.
#   cache_enabled (bool)         : Should the image cache be enabled? Defaults to 'true'.
#   push_enabled (bool)          : Should the image built be pushed to the registry or not? Defaults to 'true'.
#   secret_arguments (string)    : Specifies a map of *secret* arguments to be used when executing this step.
#   target (string)              : The name of the target build stage for the docker build.


variable "encoded_step" {
  description = "A 'encoded_step' block."
  type        = map(any)
  default     = null
}
#
# encoded_step block structure :
#   task_content (string)        : (REQUIRED) The (optionally base64 encoded) content of the build template.
#   context_access_token (string): The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
#   context_path (string)        : The URL (absolute or relative) of the source context for this step.
#   secret_values (string)       : Specifies a map of secret values that can be passed when running a task.
#   value_content (string)       : The (optionally base64 encoded) content of the build parameters.
#   values (string)              : Specifies a map of values that can be passed when running a task.


variable "file_step" {
  description = "A 'file_step' block."
  type        = map(any)
  default     = null
}
#
# file_step block structure    :
#   task_file_path (string)      : (REQUIRED) The task template file path relative to the source context.
#   context_access_token (string): The token (Git PAT or SAS token of storage account blob) associated with the context for this step.
#   context_path (string)        : The URL (absolute or relative) of the source context for this step.
#   secret_values (string)       : Specifies a map of secret values that can be passed when running a task.
#   value_file_path (string)     : The parameters file path relative to the source context.
#   values (string)              : Specifies a map of values that can be passed when running a task.


variable "base_image_trigger" {
  description = "A 'base_image_trigger' block."
  type        = map(any)
  default     = null
}
#
# base_image_trigger block structure  :
#   name (string)                       : (REQUIRED) The name which should be used for this trigger.
#   type (string)                       : (REQUIRED) The type of the trigger. Possible values are 'All' and 'Runtime'.
#   enabled (bool)                      : Should the trigger be enabled? Defaults to 'true'.
#   update_trigger_endpoint (string)    : The endpoint URL for receiving the trigger.
#   update_trigger_payload_type (string): Type of payload body for the trigger. Possible values are 'Default' and 'Token'.


variable "source_trigger" {
  description = "One or more 'source_trigger' blocks."
  type        = map(map(any))
  default     = null
}
#
# source_trigger block structure:
#   name (string)                 : (REQUIRED) The name which should be used for this trigger.
#   events (string)               : (REQUIRED) Specifies a list of source events corresponding to the trigger. Possible values are 'commit' and 'pullrequest'.
#   repository_url (string)       : (REQUIRED) The full URL to the source code repository.
#   source_type (string)          : (REQUIRED) The type of the source control service. Possible values are 'Github' and 'VisualStudioTeamService'.
#   authentication (block)        : A 'authentication' block.
#   branch (string)               : The branch name of the source code.
#   enabled (bool)                : Should the trigger be enabled? Defaults to 'true'.
#
# authentication block structure:
#   token (string)                : (REQUIRED) The access token used to access the source control provider.
#   token_type (string)           : (REQUIRED) The type of the token. Possible values are 'PAT' (personal access token) and 'OAuth'.
#   expire_in_seconds (number)    : Time in seconds that the token remains valid.
#   refresh_token (string)        : The refresh token used to refresh the access token.
#   scope (string)                : The scope of the access token.


variable "timer_trigger" {
  description = "One or more 'timer_trigger' blocks."
  type        = map(map(any))
  default     = null
}
#
# timer_trigger block structure:
#   name (string)                : (REQUIRED) The name which should be used for this trigger.
#   schedule (string)            : (REQUIRED) The CRON expression for the task schedule.
#   enabled (bool)               : Should the trigger be enabled? Defaults to 'true'.


variable "is_system_task" {
  description = "Whether this Container Registry Task is a system task. Changing this forces a new Container Registry Task to be created. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "log_template" {
  description = "The template that describes the run log artifact."
  type        = string
  default     = null
}
variable "registry_credential" {
  description = "One 'registry_credential' block."
  type        = map(any)
  default     = null
}
#
# registry_credential block structure:
#   source (block)                     : One 'source' block.
#   custom (list)                      : One or more 'custom' blocks.
#
# source block structure:
#   login_mode (string)   : (REQUIRED) The login mode for the source registry. Possible values are 'None' and 'Default'.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Container Registry Task."
  type        = map(any)
  default     = null
}
variable "timeout_in_seconds" {
  description = "The timeout of this Container Registry Task in seconds. The valid range lies from 300 to 28800. Defaults to '3600'."
  type        = number
  default     = "3600"
}
