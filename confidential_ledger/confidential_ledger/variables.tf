# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created."
  type        = string

}
variable "azuread_based_service_principal" {
  description = "(REQUIRED) A list of 'azuread_based_service_principal' blocks."
  type        = map(map(any))
}
#
# azuread_based_service_principal block structure:
#   ledger_role_name (string)                      : (REQUIRED) Specifies the Ledger Role to grant this AzureAD Service Principal. Possible values are 'Administrator', 'Contributor' and 'Reader'.
#   principal_id (string)                          : (REQUIRED) Specifies the Principal ID of the AzureAD Service Principal.
#   tenant_id (string)                             : (REQUIRED) Specifies the Tenant ID for this AzureAD Service Principal.


variable "ledger_type" {
  description = "(REQUIRED) Specifies the type of Confidential Ledger. Possible values are 'Private' and 'Public'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "certificate_based_security_principal" {
  description = "A list of 'certificate_based_security_principal' blocks."
  type        = map(map(any))
  default     = null
}
#
# certificate_based_security_principal block structure:
#   ledger_role_name (string)                           : (REQUIRED) Specifies the Ledger Role to grant this Certificate Security Principal. Possible values are 'Administrator', 'Contributor' and 'Reader'.
#   pem_public_key (string)                             : (REQUIRED) The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.


variable "tags" {
  description = "A mapping of tags to assign to the Confidential Ledger."
  type        = map(any)
  default     = null
}
