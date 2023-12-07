# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created."
  type        = string

}
variable "value" {
  description = "(REQUIRED) Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret."
  type        = string

}
variable "key_vault_id" {
  description = "(REQUIRED) The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "content_type" {
  description = "Specifies the content type for the Key Vault Secret."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "not_before_date" {
  description = "Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z')."
  type        = string
  default     = null
}
variable "expiration_date" {
  description = "Expiration UTC datetime (Y-m-d'T'H:M:S'Z')."
  type        = string
  default     = null
}
