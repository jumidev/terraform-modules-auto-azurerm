# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) Specifies the storage account in which to create the share. Changing this forces a new resource to be created."
  type        = string

}
variable "quota" {
  description = "(REQUIRED) The maximum size of the share, in gigabytes."
  type        = string

}

# OPTIONAL VARIABLES

variable "access_tier" {
  description = "The access tier of the File Share. Possible values are 'Hot', 'Cool' and 'TransactionOptimized', 'Premium'."
  type        = string
  default     = null
}
variable "acl" {
  description = "One or more 'acl' blocks."
  type        = map(map(any))
  default     = null
}
#
# acl block structure  :
#   access_policy (block): An 'access_policy' block.
#
# access_policy block structure:
#   permissions (string)         : (REQUIRED) The permissions which should be associated with this Shared Identifier. Possible value is combination of 'r' (read), 'w' (write), 'd' (delete), and 'l' (list).
#   start (string)               : The time at which this Access Policy should be valid from, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format.
#   expiry (string)              : The time at which this Access Policy should be valid until, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format.


variable "enabled_protocol" {
  description = "The protocol used for the share. Possible values are 'SMB' and 'NFS'. The 'SMB' indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The 'NFS' indicates the share can be accessed by NFSv4.1. Defaults to 'SMB'. Changing this forces a new resource to be created."
  type        = string
  default     = "SMB"
}
variable "metadata" {
  description = "A mapping of MetaData for this File Share."
  type        = string
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
