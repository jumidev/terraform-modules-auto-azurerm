# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "acls" {
  description = "One or more 'acl' blocks."
  type        = map(map(any))
  default     = null
}
#
# acl block structure  :
#   access_policy (block): An 'access_policy' block.
#
# access_policy block structure:
#   expiry (string)              : (REQUIRED) The ISO8061 UTC time at which this Access Policy should be valid until.
#   permissions (string)         : (REQUIRED) The permissions which should associated with this Shared Identifier.
#   start (string)               : (REQUIRED) The ISO8061 UTC time at which this Access Policy should be valid from.


