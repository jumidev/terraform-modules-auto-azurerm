# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created."
  type        = string

}
variable "cdn_frontdoor_profile_id" {
  description = "(REQUIRED) The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created."
  type        = string

}
variable "secret" {
  description = "(REQUIRED) A 'secret' block. Changing this forces a new Front Door Secret to be created."
  type        = map(any)
}
#
# secret block structure      :
#   customer_certificate (block): (REQUIRED) A 'customer_certificate' block. Changing this forces a new Front Door Secret to be created.
#
# customer_certificate block structure:
#   key_vault_certificate_id (string)   : (REQUIRED) The ID of the Key Vault certificate resource to use. Changing this forces a new Front Door Secret to be created.
#   subject_alternative_names (list)    : (Computed) One or more 'subject alternative names' contained within the key vault certificate.


