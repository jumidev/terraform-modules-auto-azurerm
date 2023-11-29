# REQUIRED VARIABLES

variable "managed_instance_id" {
  description = "(REQUIRED) Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "key_vault_key_id" {
  description = "To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field."
  type        = string
  default     = null
}
variable "auto_rotation_enabled" {
  description = "When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes."
  type        = bool
  default     = null
}
