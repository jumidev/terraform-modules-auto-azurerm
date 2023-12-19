# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name in GUID notation which should be used for this KeyVault Role Assignment. Changing this forces a new KeyVault to be created."
  type        = string

}
variable "principal_id" {
  description = "(REQUIRED) The principal ID to be assigned to this role. It can point to a user, service principal, or security group. Changing this forces a new KeyVault to be created."
  type        = string

}
variable "role_definition_id" {
  description = "(REQUIRED) The resource ID of the role definition to assign. Changing this forces a new KeyVault to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) Specifies the scope to create the role assignment. Changing this forces a new KeyVault to be created."
  type        = string

}
variable "vault_base_url" {
  description = "(REQUIRED) The HSM URI of a Managed Hardware Security Module resource. Changing this forces a new KeyVault to be created."
  type        = string

}
