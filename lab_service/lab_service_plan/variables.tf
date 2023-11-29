# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Lab Service Plan. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Lab Service Plan should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Lab Service Plan should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "allowed_regions" {
  description = "(REQUIRED) The allowed regions for the lab creator to use when creating labs using this Lab Service Plan. The allowed region's count must be between '1' and '28'."
  type        = string

}

# OPTIONAL VARIABLES

variable "default_auto_shutdown" {
  description = "A 'default_auto_shutdown' block."
  type        = map(any)
  default     = null
}
#
# default_auto_shutdown block structure:
#   disconnect_delay (string)            : The amount of time a VM will stay running after a user disconnects if this behavior is enabled. This value must be formatted as an ISO 8601 string.
#   idle_delay (string)                  : The amount of time a VM will idle before it is shutdown if this behavior is enabled. This value must be formatted as an ISO 8601 string.
#   no_connect_delay (string)            : The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled. This value must be formatted as an ISO 8601 string.
#   shutdown_on_idle (string)            : Will a VM get shutdown when it has idled for a period of time? Possible values are 'LowUsage' and 'UserAbsence'.


variable "default_connection" {
  description = "A 'default_connection' block."
  type        = map(any)
  default     = null
}
#
# default_connection block structure:
#   client_rdp_access (string)        : The enabled access level for Client Access over RDP. Possible values are 'Private' and 'Public'.
#   client_ssh_access (string)        : The enabled access level for Client Access over SSH. Possible values are 'Private' and 'Public'.
#   web_rdp_access (string)           : The enabled access level for Web Access over RDP. Possible values are 'Private' and 'Public'.
#   web_ssh_access (string)           : The enabled access level for Web Access over SSH. Possible values are 'Private' and 'Public'.


variable "default_network_subnet_id" {
  description = "The resource ID of the Subnet for the Lab Service Plan network profile."
  type        = string
  default     = null
}
variable "shared_gallery_id" {
  description = "The resource ID of the Shared Image Gallery attached to this Lab Service Plan. When saving a lab template virtual machine image it will be persisted in this gallery. The shared images from the gallery can be made available to use when creating new labs."
  type        = string
  default     = null
}
variable "support" {
  description = "A 'support' block."
  type        = map(any)
  default     = null
}
#
# support block structure:
#   email (string)         : The email address for the support contact.
#   instructions (string)  : The instructions for users of the Lab Service Plan.
#   phone (string)         : The phone number for the support contact.
#   url (string)           : The web address for users of the Lab Service Plan.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Lab Service Plan."
  type        = map(any)
  default     = null
}
