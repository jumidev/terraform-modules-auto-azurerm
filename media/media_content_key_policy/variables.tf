# REQUIRED VARIABLES

variable "media_services_account_name" {
  description = "(REQUIRED) The Media Services account name. Changing this forces a new Content Key Policy to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Content Key Policy. Changing this forces a new Content Key Policy to be created."
  type        = string

}
variable "policy_option" {
  description = "(REQUIRED) One or more 'policy_option' blocks."
  type        = map(map(any))
}
#
# policy_option block structure           :
#   name (string)                           : (REQUIRED) The name which should be used for this Policy Option.
#   clear_key_configuration_enabled (bool)  : Enable a configuration for non-DRM keys.
#   fairplay_configuration (block)          : A 'fairplay_configuration' block. Check license requirements here <https://docs.microsoft.com/azure/media-services/latest/fairplay-license-overview>.
#   open_restriction_enabled (bool)         : Enable an open restriction. License or key will be delivered on every request.
#   playready_configuration_license (list)  : One or more 'playready_configuration_license' blocks.
#   playready_response_custom_data (string) : The custom response data of the PlayReady configuration. This only applies when 'playready_configuration_license' is specified.
#   token_restriction (block)               : A 'token_restriction' block.
#   widevine_configuration_template (string): The Widevine template.
#
# offline_rental_configuration block structure:
#   playback_duration_seconds (number)          : Playback duration.
#   storage_duration_seconds (number)           : Storage duration.
#
# token_restriction block structure          :
#   alternate_key (list)                       : One or more 'alternate_key' block.
#   audience (string)                          : The audience for the token.
#   issuer (string)                            : The token issuer.
#   open_id_connect_discovery_document (string): The OpenID connect discovery document.
#   primary_rsa_token_key_exponent (string)    : The RSA parameter exponent.
#   primary_rsa_token_key_modulus (string)     : The RSA parameter modulus.
#   primary_symmetric_token_key (string)       : The key value of the key. Specifies a symmetric key for token validation.
#   primary_x509_token_key_raw (string)        : The raw data field of a certificate in PKCS 12 format (X509Certificate2 in .NET). Specifies a certificate for token validation.
#   required_claim (list)                      : One or more 'required_claim' blocks.
#   token_type (string)                        : The type of token. Supported values are 'Jwt' or 'Swt'.
#
# fairplay_configuration block structure:
#   ask (string)                          : The key that must be used as FairPlay Application Secret key.
#   offline_rental_configuration (block)  : A 'offline_rental_configuration' block.
#   pfx (string)                          : The Base64 representation of FairPlay certificate in PKCS 12 (pfx) format (including private key).
#   pfx_password (string)                 : The password encrypting FairPlay certificate in PKCS 12 (pfx) format.
#   rental_and_lease_key_type (string)    : The rental and lease key type. Supported values are 'DualExpiry', 'PersistentLimited', 'PersistentUnlimited' or 'Undefined'.
#   rental_duration_seconds (number)      : The rental duration. Must be greater than 0.


variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Content Key Policy should exist. Changing this forces a new Content Key Policy to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for the Policy."
  type        = string
  default     = null
}
