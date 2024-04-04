# REQUIRED VARIABLES

variable "key_vault_id" {
  description = "(REQUIRED) The ID of the Key Vault. Changing this forces a new resource to be created."
  type        = string

}
variable "contacts" {
  description = "(REQUIRED) One or more 'contact' blocks."
  type        = map(map(any))
}
#
# contact block structure:
#   email (string)         : (REQUIRED) E-mail address of the contact.
#   name (string)          : Name of the contact.
#   phone (number)         : Phone number of the contact.


