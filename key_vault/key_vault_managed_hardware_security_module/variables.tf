# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Key Vault Managed Hardware Security Module. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "admin_object_ids" {
  description = "(REQUIRED) Specifies a list of administrators object IDs for the key vault Managed Hardware Security Module. Changing this forces a new resource to be created."
  type        = list(any)

}
variable "sku_name" {
  description = "(REQUIRED) The Name of the SKU used for this Key Vault Managed Hardware Security Module. Possible value is 'Standard_B1'. Changing this forces a new resource to be created."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The Azure Active Directory Tenant ID that should be used for authenticating requests to the key vault Managed Hardware Security Module. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "purge_protection_enabled" {
  description = "Is Purge Protection enabled for this Key Vault Managed Hardware Security Module? Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "soft_delete_retention_days" {
  description = "The number of days that items should be retained for once soft-deleted. This value can be between '7' and '90' days. Defaults to '90'. Changing this forces a new resource to be created."
  type        = number
  default     = 90
}
variable "public_network_access_enabled" {
  description = "Whether traffic from public networks is permitted. Defaults to 'true'. Changing this forces a new resource to be created."
  type        = bool
  default     = true
}
variable "network_acls" {
  description = "A 'network_acls' block."
  type        = map(any)
  default     = null
}
#
# network_acls block structure:
#   bypass (string)             : (REQUIRED) Specifies which traffic can bypass the network rules. Possible values are 'AzureServices' and 'None'.
#   default_action (string)     : (REQUIRED) The Default Action to use. Possible values are 'Allow' and 'Deny'.


variable "security_domain_key_vault_certificate_ids" {
  description = "A list of KeyVault certificates resource IDs (minimum of three and up to a maximum of 10) to activate this Managed HSM. More information see [activate-your-managed-hsm](https://learn.microsoft.com/azure/key-vault/managed-hsm/quick-create-cli#activate-your-managed-hsm)"
  type        = list(any)
  default     = []
}
variable "security_domain_quorum" {
  description = "Specifies the minimum number of shares required to decrypt the security domain for recovery. This is required when 'security_domain_key_vault_certificate_ids' is specified. Valid values are between 2 and 10."
  type        = number
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
