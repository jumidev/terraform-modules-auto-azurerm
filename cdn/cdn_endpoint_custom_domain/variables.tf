# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created."
  type        = string

}
variable "cdn_endpoint_id" {
  description = "(REQUIRED) The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created."
  type        = string

}
variable "host_name" {
  description = "(REQUIRED) The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "cdn_managed_https" {
  description = "A 'cdn_managed_https' block."
  type        = map(any)
  default     = null
}
#
# cdn_managed_https block structure:
#   certificate_type (string)        : (REQUIRED) The type of HTTPS certificate. Possible values are 'Shared' and 'Dedicated'.
#   protocol_type (string)           : (REQUIRED) The type of protocol. Possible values are 'ServerNameIndication' and 'IPBased'.
#   tls_version (string)             : The minimum TLS protocol version that is used for HTTPS. Possible values are 'TLS10' (representing TLS 1.0/1.1), 'TLS12' (representing TLS 1.2) and 'None' (representing no minimums). Defaults to 'TLS12'.


variable "user_managed_https" {
  description = "A 'user_managed_https' block. ~> **NOTE** Only one of 'cdn_managed_https' and 'user_managed_https' can be specified."
  type        = map(any)
  default     = null
}
#
# user_managed_https block structure:
#   key_vault_certificate_id (string) : The ID of the Key Vault Certificate that contains the HTTPS certificate. This is deprecated in favor of 'key_vault_secret_id'.
#   key_vault_secret_id (string)      : The ID of the Key Vault Secret that contains the HTTPS certificate. ~> **NOTE** Either 'key_vault_certificate_id' or 'key_vault_secret_id' has to be specified.
#   tls_version (string)              : The minimum TLS protocol version that is used for HTTPS. Possible values are 'TLS10' (representing TLS 1.0/1.1), 'TLS12' (representing TLS 1.2) and 'None' (representing no minimums). Defaults to 'TLS12'.


