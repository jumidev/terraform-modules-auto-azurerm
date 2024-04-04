# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "home_directory" {
  description = "The home directory of the Storage Account Local User."
  type        = string
  default     = null
}
variable "permission_scopes" {
  description = "One or more 'permission_scope' blocks."
  type        = map(map(any))
  default     = null
}
#
# permission_scope block structure:
#   permissions (block)             : (REQUIRED) A 'permissions' block.
#   resource_name (string)          : (REQUIRED) The container name (when 'service' is set to 'blob') or the file share name (when 'service' is set to 'file'), used by the Storage Account Local User.
#   service (string)                : (REQUIRED) The storage service used by this Storage Account Local User. Possible values are 'blob' and 'file'.
#
# permissions block structure:
#   create (bool)              : Specifies if the Local User has the create permission for this scope. Defaults to 'false'.
#   delete (bool)              : Specifies if the Local User has the delete permission for this scope. Defaults to 'false'.
#   list (bool)                : Specifies if the Local User has the list permission for this scope. Defaults to 'false'.
#   read (bool)                : Specifies if the Local User has the read permission for this scope. Defaults to 'false'.
#   write (bool)               : Specifies if the Local User has the write permission for this scope. Defaults to 'false'.


variable "ssh_authorized_keys" {
  description = "One or more 'ssh_authorized_key' blocks."
  type        = map(map(any))
  default     = null
}
#
# ssh_authorized_key block structure:
#   key (string)                      : (REQUIRED) The public key value of this SSH authorized key.
#   description (string)              : The description of this SSH authorized key.


variable "ssh_key_enabled" {
  description = "Specifies whether SSH Key Authentication is enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "ssh_password_enabled" {
  description = "Specifies whether SSH Password Authentication is enabled. Defaults to 'false'."
  type        = bool
  default     = false
}
