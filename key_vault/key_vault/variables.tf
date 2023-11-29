# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The Name of the SKU used for this Key Vault. Possible values are 'standard' and 'premium'."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault."
  type        = string

}

# OPTIONAL VARIABLES

variable "access_policy" {
  description = "[A list](/docs/configuration/attr-as-blocks.html) of 'access_policy' objects (up to 1024) describing access policies, as described below."
  type        = map(map(any))
  default     = null
}
#
# access_policy block structure :
#   tenant_id (string)            : (REQUIRED) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Must match the 'tenant_id' used above.
#   object_id (string)            : (REQUIRED) The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies.
#   application_id (string)       : The object ID of an Application in Azure Active Directory.
#   certificate_permissions (list): List of certificate permissions, must be one or more from the following: 'Backup', 'Create', 'Delete', 'DeleteIssuers', 'Get', 'GetIssuers', 'Import', 'List', 'ListIssuers', 'ManageContacts', 'ManageIssuers', 'Purge', 'Recover', 'Restore', 'SetIssuers' and 'Update'.
#   key_permissions (string)      : List of key permissions. Possible values are 'Backup', 'Create', 'Decrypt', 'Delete', 'Encrypt', 'Get', 'Import', 'List', 'Purge', 'Recover', 'Restore', 'Sign', 'UnwrapKey', 'Update', 'Verify', 'WrapKey', 'Release', 'Rotate', 'GetRotationPolicy' and 'SetRotationPolicy'.
#   secret_permissions (list)     : List of secret permissions, must be one or more from the following: 'Backup', 'Delete', 'Get', 'List', 'Purge', 'Recover', 'Restore' and 'Set'.
#   storage_permissions (list)    : List of storage permissions, must be one or more from the following: 'Backup', 'Delete', 'DeleteSAS', 'Get', 'GetSAS', 'List', 'ListSAS', 'Purge', 'Recover', 'RegenerateKey', 'Restore', 'Set', 'SetSAS' and 'Update'.


variable "enabled_for_deployment" {
  description = "Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault."
  type        = bool
  default     = null
}
variable "enabled_for_disk_encryption" {
  description = "Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
  type        = bool
  default     = null
}
variable "enabled_for_template_deployment" {
  description = "Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault."
  type        = bool
  default     = null
}
variable "enable_rbac_authorization" {
  description = "Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
  type        = bool
  default     = null
}
variable "network_acls" {
  description = "A 'network_acls' block."
  type        = map(any)
  default     = null
}
#
# network_acls block structure     :
#   bypass (string)                  : (REQUIRED) Specifies which traffic can bypass the network rules. Possible values are 'AzureServices' and 'None'.
#   default_action (string)          : (REQUIRED) The Default Action to use when no rules match from 'ip_rules' / 'virtual_network_subnet_ids'. Possible values are 'Allow' and 'Deny'.
#   ip_rules (list)                  : One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault.
#   virtual_network_subnet_ids (list): One or more Subnet IDs which should be able to access this Key Vault.


variable "purge_protection_enabled" {
  description = "Is Purge Protection enabled for this Key Vault?"
  type        = bool
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for this Key Vault. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "soft_delete_retention_days" {
  description = "The number of days that items should be retained for once soft-deleted. This value can be between '7' and '90' (the default) days."
  type        = int
  default     = null
}
variable "contact" {
  description = "One or more 'contact' block."
  type        = map(any)
  default     = null
}
#
# contact block structure:
#   email (string)         : (REQUIRED) E-mail address of the contact.
#   name (string)          : Name of the contact.
#   phone (int)            : Phone number of the contact.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
