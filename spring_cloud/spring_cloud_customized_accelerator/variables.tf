# REQUIRED VARIABLES

variable "git_repository" {
  description = "(REQUIRED) A 'git_repository' block."
  type        = map(any)
}
#
# git_repository block structure:
#   url (string)                  : (REQUIRED) Specifies Git repository URL for the accelerator.
#   basic_auth (block)            : A 'basic_auth' block. Conflicts with 'git_repository.0.ssh_auth'. Changing this forces a new Spring Cloud Customized Accelerator to be created.
#   branch (string)               : Specifies the Git repository branch to be used.
#   ca_certificate_id (string)    : Specifies the ID of the CA Spring Cloud Certificate for https URL of Git repository.
#   commit (string)               : Specifies the Git repository commit to be used.
#   git_tag (string)              : Specifies the Git repository tag to be used.
#   interval_in_seconds (int)     : Specifies the interval for checking for updates to Git or image repository. It should be greater than 10.
#   ssh_auth (block)              : A 'ssh_auth' block. Conflicts with 'git_repository.0.basic_auth'. Changing this forces a new Spring Cloud Customized Accelerator to be created.
#   path (string)                 : Specifies the path under the git repository to be treated as the root directory of the accelerator or the fragment (depending on 'accelerator_type').
#
# ssh_auth block structure   :
#   private_key (string)       : (REQUIRED) Specifies the Private SSH Key of git repository basic auth.
#   host_key (string)          : Specifies the Public SSH Key of git repository basic auth.
#   host_key_algorithm (string): Specifies the SSH Key algorithm of git repository basic auth.
#
# basic_auth block structure:
#   password (string)         : (REQUIRED) Specifies the password of git repository basic auth.
#   username (string)         : (REQUIRED) Specifies the username of git repository basic auth.


variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created."
  type        = string

}
variable "spring_cloud_accelerator_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "accelerator_tags" {
  description = "Specifies a list of accelerator tags."
  type        = map(any)
  default     = null
}
variable "accelerator_type" {
  description = "Specifies the type of the Spring Cloud Customized Accelerator. Possible values are 'Accelerator' and 'Fragment'. Defaults to 'Accelerator'."
  type        = string
  default     = "Accelerator"
}
variable "description" {
  description = "Specifies the description of the Spring Cloud Customized Accelerator."
  type        = string
  default     = null
}
variable "display_name" {
  description = "Specifies the display name of the Spring Cloud Customized Accelerator.."
  type        = string
  default     = null
}
variable "icon_url" {
  description = "Specifies the icon URL of the Spring Cloud Customized Accelerator.."
  type        = string
  default     = null
}
