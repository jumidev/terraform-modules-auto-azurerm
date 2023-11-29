# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created."
  type        = string

}
variable "bandwidth_in_gbps" {
  description = "(REQUIRED) Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created."
  type        = int

}
variable "encapsulation" {
  description = "(REQUIRED) The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: 'Dot1Q', 'QinQ'."
  type        = string

}
variable "peering_location" {
  description = "(REQUIRED) The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "link1" {
  description = "A list of 'link' blocks."
  type        = map(map(any))
  default     = null
}
#
# link1 block structure                 :
#   admin_enabled (bool)                  : Whether enable administration state on the Express Route Port Link? Defaults to 'false'.
#   macsec_cipher (string)                : The MACSec cipher used for this Express Route Port Link. Possible values are 'GcmAes128' and 'GcmAes256'. Defaults to 'GcmAes128'.
#   macsec_ckn_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
#   macsec_cak_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
#   macsec_sci_enabled (bool)             : Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to 'false'.
#
# link block structure                  :
#   admin_enabled (bool)                  : Whether enable administration state on the Express Route Port Link? Defaults to 'false'.
#   macsec_cipher (string)                : The MACSec cipher used for this Express Route Port Link. Possible values are 'GcmAes128' and 'GcmAes256'. Defaults to 'GcmAes128'.
#   macsec_ckn_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
#   macsec_cak_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
#   macsec_sci_enabled (bool)             : Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to 'false'.


variable "link2" {
  description = "A list of 'link' blocks."
  type        = map(map(any))
  default     = null
}
#
# link2 block structure                 :
#   admin_enabled (bool)                  : Whether enable administration state on the Express Route Port Link? Defaults to 'false'.
#   macsec_cipher (string)                : The MACSec cipher used for this Express Route Port Link. Possible values are 'GcmAes128' and 'GcmAes256'. Defaults to 'GcmAes128'.
#   macsec_ckn_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
#   macsec_cak_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
#   macsec_sci_enabled (bool)             : Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to 'false'.
#
# link block structure                  :
#   admin_enabled (bool)                  : Whether enable administration state on the Express Route Port Link? Defaults to 'false'.
#   macsec_cipher (string)                : The MACSec cipher used for this Express Route Port Link. Possible values are 'GcmAes128' and 'GcmAes256'. Defaults to 'GcmAes128'.
#   macsec_ckn_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
#   macsec_cak_keyvault_secret_id (string): The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
#   macsec_sci_enabled (bool)             : Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to 'false'.


variable "billing_type" {
  description = "The billing type of the Express Route Port. Possible values are 'MeteredData' and 'UnlimitedData'."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is 'UserAssigned'.
#   identity_ids (string)   : (REQUIRED) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Express Route Port."
  type        = map(any)
  default     = null
}
