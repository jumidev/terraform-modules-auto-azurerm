# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created."
  type        = string

}
variable "automation_account_id" {
  description = "(REQUIRED) The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created."
  type        = string

}
variable "folder_path" {
  description = "(REQUIRED) The folder path of the source control. This Path must be relative."
  type        = string

}
variable "repository_url" {
  description = "(REQUIRED) The Repository URL of the source control."
  type        = string

}
variable "security" {
  description = "(REQUIRED) A 'security' block."
  type        = map(any)
}
#
# security block structure:
#   token (string)          : (REQUIRED) The access token of specified repo.
#   token_type (string)     : (REQUIRED) Specify the token type, possible values are 'PersonalAccessToken' and 'Oauth'.
#   refresh_token (string)  : The refresh token of specified rpeo.


variable "source_control_type" {
  description = "(REQUIRED) The source type of Source Control, possible vaules are 'VsoGit', 'VsoTfvc' and 'GitHub', and the value is case sensitive."
  type        = string

}

# OPTIONAL VARIABLES

variable "automatic_sync" {
  description = "Whether auto async the Source Control."
  type        = string
  default     = null
}
variable "branch" {
  description = "Specify the repo branch of the Source Control. Empty value is valid only for 'VsoTfvc'."
  type        = string
  default     = null
}
variable "description" {
  description = "A short description of the Source Control."
  type        = string
  default     = null
}
variable "publish_runbook_enabled" {
  description = "Whether auto publish the Source Control. Defaults to 'true'."
  type        = bool
  default     = true
}
