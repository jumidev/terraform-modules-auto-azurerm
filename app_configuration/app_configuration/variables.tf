# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the App Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this App Configuration. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this App Configuration.


variable "encryption" {
  description = "An 'encryption' block."
  type        = map(any)
  default     = null
}
#
# encryption block structure       :
#   key_vault_key_identifier (string): Specifies the URI of the key vault key used to encrypt data.
#   identity_client_id (string)      : Specifies the client id of the identity which will be used to access key vault.


variable "local_auth_enabled" {
  description = "Whether local authentication methods is enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "public_network_access" {
  description = "The Public Network Access setting of the App Configuration. Possible values are 'Enabled' and 'Disabled'."
  type        = string
  default     = null
}
variable "purge_protection_enabled" {
  description = "Whether Purge Protection is enabled. This field only works for 'standard' sku. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "replica" {
  description = "One or more 'replica' blocks."
  type        = map(map(any))
  default     = null
}
#
# replica block structure:
#   location (string)      : (REQUIRED) Specifies the supported Azure location where the replica exists.
#   name (string)          : (REQUIRED) Specifies the name of the replica.


variable "sku" {
  description = "The SKU name of the App Configuration. Possible values are 'free' and 'standard'. Defaults to 'free'."
  type        = string
  default     = "free"
}
variable "soft_delete_retention_days" {
  description = "The number of days that items should be retained for once soft-deleted. This field only works for 'standard' sku. This value can be between '1' and '7' days. Defaults to '7'. Changing this forces a new resource to be created."
  type        = int
  default     = 7
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
