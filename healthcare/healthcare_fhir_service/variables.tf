# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Healthcare FHIR Service. Changing this forces a new Healthcare FHIR Service to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Healthcare FHIR Service should be created. Changing this forces a new Healthcare FHIR Service to be created."
  type        = string

}
variable "authentication" {
  description = "(REQUIRED) An 'authentication' block."
  type        = map(any)
}
#
# authentication block structure:
#   authority (string)            : (REQUIRED) The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform. Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}.
#   audience (string)             : (REQUIRED) The intended audience to receive authentication tokens for the service.
#   smart_proxy_enabled (bool)    : Whether smart proxy is enabled.



# OPTIONAL VARIABLES

variable "kind" {
  description = "Specifies the kind of the Healthcare FHIR Service. Possible values are: 'fhir-Stu3' and 'fhir-R4'. Defaults to 'fhir-R4'. Changing this forces a new Healthcare FHIR Service to be created."
  type        = string
  default     = "fhir-R4"
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of managed identity to assign. Possible values are 'UserAssigned' and 'SystemAssigned'.
#   identity_ids (list)     : A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when 'type' is set to 'UserAssigned'.


variable "access_policy_object_ids" {
  description = "A list of the access policies of the service instance."
  type        = list(any)
  default     = []
}
variable "cors" {
  description = "A 'cors' block."
  type        = map(any)
  default     = null
}
#
# cors block structure       :
#   allowed_origins (string)   : (REQUIRED) A set of origins to be allowed via CORS.
#   allowed_headers (string)   : (REQUIRED) A set of headers to be allowed via CORS.
#   allowed_methods (string)   : (REQUIRED) The methods to be allowed via CORS. Possible values are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PATCH' and 'PUT'.
#   max_age_in_seconds (number): The max age to be allowed via CORS.
#   credentials_allowed (bool) : If credentials are allowed via CORS.


variable "container_registry_login_server_url" {
  description = "A list of azure container registry settings used for convert data operation of the service instance."
  type        = list(any)
  default     = []
}
variable "oci_artifact" {
  description = "[A list](/docs/configuration/attr-as-blocks.html) of 'oci_artifact' objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export)."
  type        = map(map(any))
  default     = null
}
#
# oci_artifact block structure:
#   login_server (string)       : (REQUIRED) An Azure container registry used for export operations of the service instance.
#   image_name (string)         : An image within Azure container registry used for export operations of the service instance.
#   digest (string)             : A digest of an image within Azure container registry used for export operations of the service instance to narrow the artifacts down.


variable "configuration_export_storage_account_name" {
  description = "Specifies the name of the storage account which the operation configuration information is exported to."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Healthcare FHIR Service."
  type        = map(any)
  default     = null
}
