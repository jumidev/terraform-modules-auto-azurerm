# REQUIRED VARIABLES

variable "cluster_id" {
  description = "(REQUIRED) The ID of the Kusto Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_id" {
  description = "(REQUIRED) The ID of the Key Vault."
  type        = string

}
variable "key_name" {
  description = "(REQUIRED) The name of Key Vault Key."
  type        = string

}

# OPTIONAL VARIABLES

variable "key_version" {
  description = "The version of Key Vault Key."
  type        = string
  default     = null
}
variable "user_identity" {
  description = "The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used."
  type        = string
  default     = null
}
