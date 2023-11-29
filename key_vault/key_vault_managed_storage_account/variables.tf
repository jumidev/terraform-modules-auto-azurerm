# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Key Vault Managed Storage Account. Changing this forces a new Key Vault Managed Storage Account to be created."
  type        = string

}
variable "key_vault_id" {
  description = "(REQUIRED) The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of the Storage Account."
  type        = string

}
variable "storage_account_key" {
  description = "(REQUIRED) Which Storage Account access key that is managed by Key Vault. Possible values are 'key1' and 'key2'."
  type        = string

}

# OPTIONAL VARIABLES

variable "regenerate_key_automatically" {
  description = "Should Storage Account access key be regenerated periodically?"
  type        = string
  default     = null
}
variable "regeneration_period" {
  description = "How often Storage Account access key should be regenerated. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations)."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
