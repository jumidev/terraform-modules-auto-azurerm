# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Media Services Account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Media Services Account. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account" {
  description = "(REQUIRED) One or more 'storage_account' blocks."
  type        = map(map(any))
}
#
# storage_account block structure:
#   is_primary (bool)              : Specifies whether the storage account should be the primary account or not. Defaults to 'false'.
#   managed_identity (block)       : A 'managed_identity' block.
#
# managed_identity block structure   :
#   user_assigned_identity_id (string) : The ID of the User Assigned Identity. This value can only be set when 'use_system_assigned_identity' is 'false'
#   use_system_assigned_identity (bool): Whether to use System Assigned Identity. Possible Values are 'true' and 'false'.



# OPTIONAL VARIABLES

variable "encryption" {
  description = "An 'encryption' block."
  type        = map(any)
  default     = null
}
#
# encryption block structure       :
#   type (string)                    : Specifies the type of key used to encrypt the account data. Possible values are 'SystemKey' and 'CustomerKey'. Defaults to 'SystemKey'.
#   key_vault_key_identifier (string): Specifies the URI of the Key Vault Key used to encrypt data. The key may either be versioned (for example https://vault/keys/mykey/version1) or reference a key without a version (for example https://vault/keys/mykey).
#   managed_identity (block)         : A 'managed_identity' block.
#
# managed_identity block structure   :
#   user_assigned_identity_id (string) : The ID of the User Assigned Identity. This value can only be set when 'use_system_assigned_identity' is 'false'
#   use_system_assigned_identity (bool): Whether to use System Assigned Identity. Possible Values are 'true' and 'false'.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Media Services Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Media Services Account.


variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for this server. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "storage_authentication_type" {
  description = "Specifies the storage authentication type. Possible value is 'ManagedIdentity' or 'System'."
  type        = string
  default     = null
}
variable "key_delivery_access_control" {
  description = "A 'key_delivery_access_control' block."
  type        = map(any)
  default     = null
}
#
# key_delivery_access_control block structure:
#   default_action (string)                    : The Default Action to use when no rules match from 'ip_allow_list'. Possible values are 'Allow' and 'Deny'.
#   ip_allow_list (string)                     : One or more IP Addresses, or CIDR Blocks which should be able to access the Key Delivery.


variable "tags" {
  description = "A mapping of tags assigned to the resource."
  type        = map(any)
  default     = null
}
