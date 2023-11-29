# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the protection container mapping. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) The name of the vault that should be updated. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_fabric_name" {
  description = "(REQUIRED) Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_source_protection_container_name" {
  description = "(REQUIRED) Name of the source protection container to map. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_target_protection_container_id" {
  description = "(REQUIRED) Id of target protection container to map to. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_replication_policy_id" {
  description = "(REQUIRED) Id of the policy to use for this mapping. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "automatic_update" {
  description = "a 'automatic_update' block defined as below."
  type        = map(any)
  default     = null
}
#
# automatic_update block structure:
#   enabled (bool)                  : Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to 'false'.
#   automation_account_id (string)  : The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
#   authentication_type (string)    : The authentication type used for automation account. Possible values are 'RunAsAccount' and 'SystemAssignedIdentity'.


