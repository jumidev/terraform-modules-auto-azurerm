# REQUIRED VARIABLES

variable "workspace_id" {
  description = "(REQUIRED) The resource ID of the Databricks Workspace."
  type        = string

}
variable "key_vault_key_id" {
  description = "(REQUIRED) The resource ID of the Key Vault Key to be used."
  type        = string

}
