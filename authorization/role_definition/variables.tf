# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Role Definition."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) The scope at which the Role Definition applies to, such as '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333', '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup', or '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM'. It is recommended to use the first entry of the 'assignable_scopes'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "role_definition_id" {
  description = "A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "description" {
  description = "A description of the Role Definition."
  type        = string
  default     = null
}
variable "permissions" {
  description = "A 'permissions' block."
  type        = map(any)
  default     = null
}
#
# permissions block structure:
#   actions (list)             : One or more Allowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
#   data_actions (list)        : One or more Allowed Data Actions, such as '*', 'Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
#   not_actions (list)         : One or more Disallowed Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
#   not_data_actions (list)    : One or more Disallowed Data Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.


variable "assignable_scopes" {
  description = "One or more assignable scopes for this Role Definition, such as '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333', '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup', or '/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM'."
  type        = list(any)
  default     = []
}
