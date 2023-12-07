# REQUIRED VARIABLES

variable "key_vault_id" {
  description = "(REQUIRED) The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created."
  type        = string

}
variable "provider_name" {
  description = "(REQUIRED) The name of the third-party Certificate Issuer. Possible values are: 'DigiCert', 'GlobalSign', 'OneCertV2-PrivateCA', 'OneCertV2-PublicCA' and 'SslAdminV2'."
  type        = string

}

# OPTIONAL VARIABLES

variable "org_id" {
  description = "The ID of the organization as provided to the issuer."
  type        = string
  default     = null
}
variable "account_id" {
  description = "The account number with the third-party Certificate Issuer."
  type        = string
  default     = null
}
variable "admin" {
  description = "One or more 'admin' blocks."
  type        = map(map(any))
  default     = null
}
#
# admin block structure :
#   email_address (string): (REQUIRED) E-mail address of the admin.
#   first_name (string)   : First name of the admin.
#   last_name (string)    : Last name of the admin.
#   phone (number)        : Phone number of the admin.


variable "password" {
  description = "The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value."
  type        = string
  default     = null
}
