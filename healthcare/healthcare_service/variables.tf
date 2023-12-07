# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the service instance. Used for service endpoint, must be unique within the audience. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which to create the Service. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure Region where the Service should be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "access_policy_object_ids" {
  description = "A set of Azure object IDs that are allowed to access the Service. If not configured, the default value is the object id of the service principal or user that is running Terraform."
  type        = string
  default     = null
}
variable "authentication_configuration" {
  description = "An 'authentication_configuration' block."
  type        = map(any)
  default     = null
}
#
# authentication_configuration block structure:
#   authority (string)                          : The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform. Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}.
#   audience (string)                           : The intended audience to receive authentication tokens for the service. The default value is <https://azurehealthcareapis.com>
#   smart_proxy_enabled (bool)                  : (Boolean) Enables the 'SMART on FHIR' option for mobile and web implementations.


variable "cosmosdb_throughput" {
  description = "The provisioned throughput for the backing database. Range of '400'-'100000'. Defaults to '1000'."
  type        = string
  default     = "1000"
}
variable "cosmosdb_key_vault_key_versionless_id" {
  description = "A versionless Key Vault Key ID for CMK encryption of the backing database. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "cors_configuration" {
  description = "A 'cors_configuration' block."
  type        = map(any)
  default     = null
}
#
# cors_configuration block structure:
#   allowed_origins (string)          : A set of origins to be allowed via CORS.
#   allowed_headers (string)          : A set of headers to be allowed via CORS.
#   allowed_methods (string)          : The methods to be allowed via CORS. Possible values are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PATCH' and 'PUT'.
#   max_age_in_seconds (number)       : The max age to be allowed via CORS.
#   allow_credentials (bool)          : (Boolean) If credentials are allowed via CORS.


variable "public_network_access_enabled" {
  description = "Whether public network access is enabled or disabled for this service instance. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "kind" {
  description = "The type of the service. Values at time of publication are: 'fhir', 'fhir-Stu3' and 'fhir-R4'. Default value is 'fhir'."
  type        = string
  default     = "fhir"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
