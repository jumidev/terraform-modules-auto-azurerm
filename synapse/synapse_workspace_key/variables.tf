# REQUIRED VARIABLES

variable "customer_managed_key_name" {
  description = "(REQUIRED) Specifies the name of the workspace key. Should match the name of the key in the synapse workspace."
  type        = string

}
variable "synapse_workspace_id" {
  description = "(REQUIRED) The ID of the Synapse Workspace where the encryption key should be configured."
  type        = string

}
variable "active" {
  description = "(REQUIRED) Specifies if the workspace should be encrypted with this key."
  type        = string

}

# OPTIONAL VARIABLES

variable "customer_managed_key_versionless_id" {
  description = "The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption"
  type        = string
  default     = null
}
