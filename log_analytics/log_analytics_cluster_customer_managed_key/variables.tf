# REQUIRED VARIABLES

variable "key_vault_key_id" {
  description = "(REQUIRED) The ID of the Key Vault Key to use for encryption."
  type        = string

}
variable "log_analytics_cluster_id" {
  description = "(REQUIRED) The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created."
  type        = string

}
