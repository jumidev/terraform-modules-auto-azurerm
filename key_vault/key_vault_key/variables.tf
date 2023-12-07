# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Key Vault Key. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_id" {
  description = "(REQUIRED) The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "key_type" {
  description = "(REQUIRED) Specifies the Key Type to use for this Key Vault Key. Possible values are 'EC' (Elliptic Curve), 'EC-HSM', 'RSA' and 'RSA-HSM'. Changing this forces a new resource to be created."
  type        = string

}
variable "key_opts" {
  description = "(REQUIRED) A list of JSON web key operations. Possible values include: 'decrypt', 'encrypt', 'sign', 'unwrapKey', 'verify' and 'wrapKey'. Please note these values are case sensitive."
  type        = string

}

# OPTIONAL VARIABLES

variable "key_size" {
  description = "Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if 'key_type' is 'RSA' or 'RSA-HSM'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "curve" {
  description = "Specifies the curve to use when creating an 'EC' key. Possible values are 'P-256', 'P-256K', 'P-384', and 'P-521'. This field will be required in a future release if 'key_type' is 'EC' or 'EC-HSM'. The API will default to 'P-256' if nothing is specified. Changing this forces a new resource to be created."
  type        = string
  default     = "P-256"
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
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "rotation_policy" {
  description = "A 'rotation_policy' block."
  type        = map(any)
  default     = null
}
#
# rotation_policy block structure:
#   expire_after (string)          : Expire a Key Vault Key after given duration as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
#   automatic (block)              : An 'automatic' block.
#   notify_before_expiry (string)  : Notify at a given duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
#
# automatic block structure   :
#   time_after_creation (string): Rotate automatically at a duration after create as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
#   time_before_expiry (string) : Rotate automatically at a duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).


