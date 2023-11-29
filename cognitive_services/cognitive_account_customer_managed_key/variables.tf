# REQUIRED VARIABLES

variable "cognitive_account_id" {
  description = "(REQUIRED) The ID of the Cognitive Account. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_key_id" {
  description = "(REQUIRED) The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity_client_id" {
  description = "The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account."
  type        = string
  default     = null
}
