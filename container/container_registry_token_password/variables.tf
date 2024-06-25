# REQUIRED VARIABLES

variable "container_registry_token_id" {
  description = "(REQUIRED) The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created."
  type        = string

}
variable "password1" {
  description = "(REQUIRED) One 'password' block."
  type        = map(any)
}
#
# password1 block structure:
#   expiry (string)          : The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created.
#
# password block structure:
#   expiry (string)         : The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "password2" {
  description = "One 'password' block."
  type        = map(any)
  default     = null
}
#
# password2 block structure:
#   expiry (string)          : The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created.
#
# password block structure:
#   expiry (string)         : The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created.


