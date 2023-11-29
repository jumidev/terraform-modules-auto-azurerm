# REQUIRED VARIABLES

variable "workspace_id" {
  description = "(REQUIRED) The ID of the Databricks Workspace.."
  type        = string

}
variable "key_vault_key_id" {
  description = "(REQUIRED) The ID of the Key Vault."
  type        = string

}
