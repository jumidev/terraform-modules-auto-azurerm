# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Batch account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created."
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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Batch Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Batch Account.


variable "network_profile" {
  description = "A 'network_profile' block."
  type        = map(any)
  default     = null
}
#
# network_profile block structure:
#   account_access (block)         : An 'account_access' block.
#   node_management_access (block) : A 'node_management_access' block.
#
# ip_rule block structure:
#   ip_range (string)      : (REQUIRED) The CIDR block from which requests will match the rule.
#   action (string)        : Specifies the action of the ip rule. The only possible value is 'Allow'. Defaults to 'Allow'.
#
# account_access block structure:
#   default_action (string)       : Specifies the default action for the account access. Possible values are 'Allow' and 'Deny'. Defaults to 'Deny'.
#   ip_rule (block)               : One or more 'ip_rule' blocks.
#
# node_management_access block structure:
#   default_action (string)               : Specifies the default action for the node management access. Possible values are 'Allow' and 'Deny'. Defaults to 'Deny'.
#   ip_rule (block)                       : One or more 'ip_rule' blocks.


variable "pool_allocation_mode" {
  description = "Specifies the mode to use for pool allocation. Possible values are 'BatchService' or 'UserSubscription'. Defaults to 'BatchService'."
  type        = string
  default     = "BatchService"
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for this server. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "key_vault_reference" {
  description = "A 'key_vault_reference' block, as defined below, that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the 'UserSubscription' pool allocation mode."
  type        = map(any)
  default     = null
}
#
# key_vault_reference block structure:
#   url (string)                       : (REQUIRED) The HTTPS URL of the Azure KeyVault to use.


variable "storage_account_id" {
  description = "Specifies the storage account to use for the Batch account. If not specified, Azure Batch will manage the storage."
  type        = string
  default     = null
}
variable "storage_account_authentication_mode" {
  description = "Specifies the storage account authentication mode. Possible values include 'StorageKeys', 'BatchAccountManagedIdentity'."
  type        = string
  default     = null
}
variable "storage_account_node_identity" {
  description = "Specifies the user assigned identity for the storage account."
  type        = string
  default     = null
}
variable "allowed_authentication_modes" {
  description = "Specifies the allowed authentication mode for the Batch account. Possible values include 'AAD', 'SharedKey' or 'TaskAuthenticationToken'."
  type        = string
  default     = null
}
variable "encryption" {
  description = "Specifies if customer managed key encryption should be used to encrypt batch account data. One 'encryption' block."
  type        = map(any)
  default     = null
}
#
# encryption block structure:
#   key_vault_key_id (string) : (REQUIRED) The full URL path to the Azure key vault key id that should be used to encrypt data, as documented [here](https://docs.microsoft.com/azure/batch/batch-customer-managed-key). Both versioned and versionless keys are supported.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
