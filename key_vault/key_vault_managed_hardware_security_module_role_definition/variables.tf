# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this KeyVault Role Definition. Changing this forces a new KeyVault Role Definition to be created."
  type        = string

}
variable "vault_base_url" {
  description = "(REQUIRED) The base URL of the managed hardware security module resource. Changing this forces a new KeyVault Role Definition to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies a text description about this KeyVault Role Definition."
  type        = string
  default     = null
}
variable "permission" {
  description = "One or more 'permission' blocks."
  type        = map(map(any))
  default     = null
}
#
# permission block structure:
#   actions (string)          : One or more Allowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
#   not_actions (string)      : One or more Disallowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
#   data_actions (list)       : Specifies a list of data action permission to grant. Possible values are 'Microsoft.KeyVault/managedHsm/keys/read/action', 'Microsoft.KeyVault/managedHsm/keys/write/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/read/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/recover/action', 'Microsoft.KeyVault/managedHsm/keys/backup/action', 'Microsoft.KeyVault/managedHsm/keys/restore/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/delete/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/read/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/read/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/delete/action', 'Microsoft.KeyVault/managedHsm/keys/encrypt/action', 'Microsoft.KeyVault/managedHsm/keys/decrypt/action', 'Microsoft.KeyVault/managedHsm/keys/wrap/action', 'Microsoft.KeyVault/managedHsm/keys/unwrap/action', 'Microsoft.KeyVault/managedHsm/keys/sign/action', 'Microsoft.KeyVault/managedHsm/keys/verify/action', 'Microsoft.KeyVault/managedHsm/keys/create', 'Microsoft.KeyVault/managedHsm/keys/delete', 'Microsoft.KeyVault/managedHsm/keys/export/action', 'Microsoft.KeyVault/managedHsm/keys/release/action', 'Microsoft.KeyVault/managedHsm/keys/import/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/delete', 'Microsoft.KeyVault/managedHsm/securitydomain/download/action', 'Microsoft.KeyVault/managedHsm/securitydomain/download/read', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/action', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/read', 'Microsoft.KeyVault/managedHsm/securitydomain/transferkey/read', 'Microsoft.KeyVault/managedHsm/backup/start/action', 'Microsoft.KeyVault/managedHsm/restore/start/action', 'Microsoft.KeyVault/managedHsm/backup/status/action', 'Microsoft.KeyVault/managedHsm/restore/status/action' and 'Microsoft.KeyVault/managedHsm/rng/action'.
#   not_data_actions (list)   : Specifies a list of data action permission not to grant. Possible values are 'Microsoft.KeyVault/managedHsm/keys/read/action', 'Microsoft.KeyVault/managedHsm/keys/write/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/read/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/recover/action', 'Microsoft.KeyVault/managedHsm/keys/backup/action', 'Microsoft.KeyVault/managedHsm/keys/restore/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/delete/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/read/action', 'Microsoft.KeyVault/managedHsm/roleAssignments/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/read/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/write/action', 'Microsoft.KeyVault/managedHsm/roleDefinitions/delete/action', 'Microsoft.KeyVault/managedHsm/keys/encrypt/action', 'Microsoft.KeyVault/managedHsm/keys/decrypt/action', 'Microsoft.KeyVault/managedHsm/keys/wrap/action', 'Microsoft.KeyVault/managedHsm/keys/unwrap/action', 'Microsoft.KeyVault/managedHsm/keys/sign/action', 'Microsoft.KeyVault/managedHsm/keys/verify/action', 'Microsoft.KeyVault/managedHsm/keys/create', 'Microsoft.KeyVault/managedHsm/keys/delete', 'Microsoft.KeyVault/managedHsm/keys/export/action', 'Microsoft.KeyVault/managedHsm/keys/release/action', 'Microsoft.KeyVault/managedHsm/keys/import/action', 'Microsoft.KeyVault/managedHsm/keys/deletedKeys/delete', 'Microsoft.KeyVault/managedHsm/securitydomain/download/action', 'Microsoft.KeyVault/managedHsm/securitydomain/download/read', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/action', 'Microsoft.KeyVault/managedHsm/securitydomain/upload/read', 'Microsoft.KeyVault/managedHsm/securitydomain/transferkey/read', 'Microsoft.KeyVault/managedHsm/backup/start/action', 'Microsoft.KeyVault/managedHsm/restore/start/action', 'Microsoft.KeyVault/managedHsm/backup/status/action', 'Microsoft.KeyVault/managedHsm/restore/status/action' and 'Microsoft.KeyVault/managedHsm/rng/action'.


variable "role_name" {
  description = "Specify a name for this KeyVault Role Definition."
  type        = string
  default     = null
}
