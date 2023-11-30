# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Lab Service Lab. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Lab Service Lab should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Lab Service Lab should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "security" {
  description = "(REQUIRED) A 'security' block."
  type        = map(any)
}
#
# security block structure  :
#   open_access_enabled (bool): (REQUIRED) Is open access enabled to allow any user or only specified users to register to a Lab Service Lab?


variable "title" {
  description = "(REQUIRED) The title of the Lab Service Lab."
  type        = string

}
variable "virtual_machine" {
  description = "(REQUIRED) A 'virtual_machine' block."
  type        = map(any)
}
#
# virtual_machine block structure                   :
#   admin_user (block)                                : (REQUIRED) An 'admin_user' block.
#   image_reference (block)                           : (REQUIRED) An 'image_reference' block.
#   sku (block)                                       : (REQUIRED) A 'sku' block.
#   additional_capability_gpu_drivers_installed (bool): Is flagged to pre-install dedicated GPU drivers? Defaults to 'false'. Changing this forces a new resource to be created.
#   create_option (string)                            : The create option to indicate what Lab Service Lab VMs are created from. Possible values are 'Image' and 'TemplateVM'. Defaults to 'Image'. Changing this forces a new resource to be created.
#   non_admin_user (block)                            : A 'non_admin_user' block.
#   shared_password_enabled (bool)                    : Is the shared password enabled with the same password for all user VMs? Defaults to 'false'. Changing this forces a new resource to be created.
#   usage_quota (string)                              : The initial quota allocated to each Lab Service Lab user. Defaults to 'PT0S'. This value must be formatted as an ISO 8601 string.
#
# sku block structure:
#   capacity (string)  : (REQUIRED) The capacity for the SKU. Possible values are between '0' and '400'.
#
# admin_user block structure:
#   username (string)         : (REQUIRED) The username to use when signing in to Lab Service Lab VMs. Changing this forces a new resource to be created.
#   password (string)         : (REQUIRED) The password for the Lab user. Changing this forces a new resource to be created.
#
# non_admin_user block structure:
#   username (string)             : (REQUIRED) The username to use when signing in to Lab Service Lab VMs.
#   password (string)             : (REQUIRED) The password for the user.
#
# image_reference block structure:
#   offer (string)                 : The image offer if applicable. Changing this forces a new resource to be created.
#   publisher (string)             : The image publisher. Changing this forces a new resource to be created.
#   sku (string)                   : The image SKU. Changing this forces a new resource to be created.
#   version (string)               : The image version specified on creation. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "auto_shutdown" {
  description = "An 'auto_shutdown' block."
  type        = map(any)
  default     = null
}
#
# auto_shutdown block structure:
#   disconnect_delay (string)    : The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string.
#   idle_delay (string)          : The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string.
#   no_connect_delay (string)    : The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string.
#   shutdown_on_idle (string)    : A VM will get shutdown when it has idled for a period of time. Possible values are 'LowUsage' and 'UserAbsence'.


variable "connection_setting" {
  description = "A 'connection_setting' block."
  type        = map(any)
  default     = null
}
#
# connection_setting block structure:
#   client_rdp_access (string)        : The enabled access level for Client Access over RDP. Possible value is 'Public'.
#   client_ssh_access (string)        : The enabled access level for Client Access over SSH. Possible value is 'Public'.


variable "description" {
  description = "The description of the Lab Service Lab."
  type        = string
  default     = null
}
variable "lab_plan_id" {
  description = "The resource ID of the Lab Plan that is used during resource creation to provide defaults and acts as a permission container when creating a Lab Service Lab via 'labs.azure.com'."
  type        = string
  default     = null
}
variable "network" {
  description = "A 'network' block."
  type        = map(any)
  default     = null
}
#
# network block structure:
#   subnet_id (string)     : The resource ID of the Subnet for the network profile of the Lab Service Lab.


variable "roster" {
  description = "A 'roster' block."
  type        = map(any)
  default     = null
}
#
# roster block structure            :
#   active_directory_group_id (string): The AAD group ID which this Lab Service Lab roster is populated from.
#   lms_instance (string)             : The base URI identifying the lms instance.
#   lti_client_id (string)            : The unique id of the Azure Lab Service tool in the lms.
#   lti_context_id (string)           : The unique context identifier for the Lab Service Lab in the lms.
#   lti_roster_endpoint (string)      : The URI of the names and roles service endpoint on the lms for the class attached to this Lab Service Lab.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Lab Service Lab."
  type        = map(any)
  default     = null
}
