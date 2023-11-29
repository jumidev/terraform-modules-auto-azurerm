# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the NetApp Account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "active_directory" {
  description = "A 'active_directory' block."
  type        = map(any)
  default     = null
}
#
# active_directory block structure:
#   dns_servers (list)              : (REQUIRED) A list of DNS server IP addresses for the Active Directory domain. Only allows 'IPv4' address.
#   domain (string)                 : (REQUIRED) The name of the Active Directory domain.
#   smb_server_name (string)        : (REQUIRED) The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
#   username (string)               : (REQUIRED) The Username of Active Directory Domain Administrator.
#   password (string)               : (REQUIRED) The password associated with the 'username'.
#   organizational_unit (string)    : The Organizational Unit (OU) within the Active Directory Domain.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
