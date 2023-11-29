# REQUIRED VARIABLES

variable "principal_id" {
  description = "(REQUIRED) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created."
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
  description = "The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with 'role_definition_id'."
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
  description = "The delegated Azure Resource ID which contains a Managed Identity. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for this Role Assignment. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "skip_service_principal_aad_check" {
  description = "If the 'principal_id' is a newly provisioned 'Service Principal' set this value to 'true' to skip the 'Azure Active Directory' check which may fail due to replication lag. This argument is only valid if the 'principal_id' is a 'Service Principal' identity. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
