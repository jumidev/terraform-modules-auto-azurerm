# REQUIRED VARIABLES

variable "key_vault_id" {
  description = "(REQUIRED) Specifies the id of the Key Vault resource. Changing this forces a new resource to be created."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created."
  type        = string

}
variable "object_id" {
  description = "(REQUIRED) The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from 'azuread_service_principal.object_id'. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "application_id" {
  description = "The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "certificate_permissions" {
  description = "List of certificate permissions, must be one or more from the following: 'Backup', 'Create', 'Delete', 'DeleteIssuers', 'Get', 'GetIssuers', 'Import', 'List', 'ListIssuers', 'ManageContacts', 'ManageIssuers', 'Purge', 'Recover', 'Restore', 'SetIssuers' and 'Update'."
  type        = list(any)
  default     = []
}
variable "key_permissions" {
  description = "List of key permissions, must be one or more from the following: 'Backup', 'Create', 'Decrypt', 'Delete', 'Encrypt', 'Get', 'Import', 'List', 'Purge', 'Recover', 'Restore', 'Sign', 'UnwrapKey', 'Update', 'Verify', 'WrapKey', 'Release', 'Rotate', 'GetRotationPolicy' and 'SetRotationPolicy'."
  type        = list(any)
  default     = []
}
variable "secret_permissions" {
  description = "List of secret permissions, must be one or more from the following: 'Backup', 'Delete', 'Get', 'List', 'Purge', 'Recover', 'Restore' and 'Set'."
  type        = list(any)
  default     = []
}
variable "storage_permissions" {
  description = "List of storage permissions, must be one or more from the following: 'Backup', 'Delete', 'DeleteSAS', 'Get', 'GetSAS', 'List', 'ListSAS', 'Purge', 'Recover', 'RegenerateKey', 'Restore', 'Set', 'SetSAS' and 'Update'."
  type        = list(any)
  default     = []
}
