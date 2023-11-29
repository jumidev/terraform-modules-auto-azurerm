# REQUIRED VARIABLES

variable "frontend_endpoint_id" {
  description = "(REQUIRED) The ID of the Front Door Frontend Endpoint which this configuration refers to. Changing this forces a new resource to be created."
  type        = string

}
variable "custom_https_provisioning_enabled" {
  description = "(REQUIRED) Should the HTTPS protocol be enabled for this custom domain associated with the Front Door?"
  type        = bool

}

# OPTIONAL VARIABLES

variable "custom_https_configuration" {
  description = "A 'custom_https_configuration' block."
  type        = map(any)
  default     = null
}
#
# custom_https_configuration block structure         :
#   certificate_source (string)                        : Certificate source to encrypted 'HTTPS' traffic with. Allowed values are 'FrontDoor' or 'AzureKeyVault'. Defaults to 'FrontDoor'.
#   azure_key_vault_certificate_vault_id (string)      : The ID of the Key Vault containing the SSL certificate.
#   azure_key_vault_certificate_secret_name (string)   : The name of the Key Vault secret representing the full certificate PFX.
#   azure_key_vault_certificate_secret_version (string): The version of the Key Vault secret representing the full certificate PFX.


