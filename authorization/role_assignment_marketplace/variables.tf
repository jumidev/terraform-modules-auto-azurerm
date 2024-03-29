# REQUIRED VARIABLES

variable "principal_id" {
  description = "(REQUIRED) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created. ~> **NOTE:** The Principal ID is also known as the Object ID (i.e. not the 'Application ID' for applications). To assign Azure roles, the Principal must have 'Microsoft.Authorization/roleAssignments/write' permissions. See [documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal) for more information."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "role_definition_id" {
  description = "The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with 'role_definition_name'."
  type        = string
  default     = null
}
variable "role_definition_name" {
  description = "The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with 'role_definition_id'. ~> **NOTE:** To assign 'Marketplace Admin' role, the calling Principal must first be assigned Privileged Role Administrator (like 'Owner' role) or Global Administrator. See [documentation](https://learn.microsoft.com/en-us/marketplace/create-manage-private-azure-marketplace-new#prerequisites) for more information."
  type        = string
  default     = null
}
variable "condition" {
  description = "The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "condition_version" {
  description = "The version of the condition. Possible values are '1.0' or '2.0'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "delegated_managed_identity_resource_id" {
  description = "The delegated Azure Resource ID which contains a Managed Identity. Changing this forces a new resource to be created. ~> **NOTE:** This field is only used in cross tenant scenarios."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for this Role Assignment. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "skip_service_principal_aad_check" {
  description = "If the 'principal_id' is a newly provisioned 'Service Principal' set this value to 'true' to skip the 'Azure Active Directory' check which may fail due to replication lag. This argument is only valid if the 'principal_id' is a 'Service Principal' identity. Defaults to 'false'. Changing this forces a new resource to be created. ~> **NOTE:** This field takes effect only when 'principal_id' is a 'Service Principal' identity."
  type        = bool
  default     = false
}
