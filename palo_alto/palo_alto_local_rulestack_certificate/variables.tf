# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Palo Alto Networks Rulestack Certificate."
  type        = string

}
variable "rulestack_id" {
  description = "(REQUIRED) The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "key_vault_certificate_id" {
  description = "The 'versionles_id' of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created."
  type        = string
  default     = null
}
variable "self_signed" {
  description = "Should a Self Signed Certificate be used. Defaults to 'false'. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created."
  type        = bool
  default     = false
}
variable "audit_comment" {
  description = "The comment for Audit purposes."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Certificate."
  type        = string
  default     = null
}
