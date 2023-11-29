# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the API Management API. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created."
  type        = string

}
variable "revision" {
  description = "(REQUIRED) The Revision which used for this API. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "api_type" {
  description = "Type of API. Possible values are 'graphql', 'http', 'soap', and 'websocket'. Defaults to 'http'."
  type        = string
  default     = "http"
}
variable "display_name" {
  description = "The display name of the API."
  type        = string
  default     = null
}
variable "path" {
  description = "The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service."
  type        = string
  default     = null
}
variable "protocols" {
  description = "A list of protocols the operations in this API can be invoked. Possible values are 'http', 'https', 'ws', and 'wss'."
  type        = string
  default     = null
}
variable "contact" {
  description = "A 'contact' block."
  type        = map(any)
  default     = null
}
#
# contact block structure:
#   email (string)         : The email address of the contact person/organization.
#   name (string)          : The name of the contact person/organization.
#   url (string)           : Absolute URL of the contact information.


variable "description" {
  description = "A description of the API Management API, which may include HTML formatting tags."
  type        = string
  default     = null
}
variable "import" {
  description = "A 'import' block."
  type        = map(any)
  default     = null
}
#
# import block structure :
#   content_format (string): (REQUIRED) The format of the content from which the API Definition should be imported. Possible values are: 'openapi', 'openapi+json', 'openapi+json-link', 'openapi-link', 'swagger-json', 'swagger-link-json', 'wadl-link-json', 'wadl-xml', 'wsdl' and 'wsdl-link'.
#   content_value (string) : (REQUIRED) The Content from which the API Definition should be imported. When a 'content_format' of '*-link-*' is specified this must be a URL, otherwise this must be defined inline.
#   wsdl_selector (block)  : A 'wsdl_selector' block, which allows you to limit the import of a WSDL to only a subset of the document. This can only be specified when 'content_format' is 'wsdl' or 'wsdl-link'.
#
# wsdl_selector block structure:
#   service_name (string)        : (REQUIRED) The name of service to import from WSDL.
#   endpoint_name (string)       : (REQUIRED) The name of endpoint (port) to import from WSDL.


variable "license" {
  description = "A 'license' block."
  type        = map(any)
  default     = null
}
#
# license block structure:
#   name (string)          : The name of the license .
#   url (string)           : Absolute URL of the license.


variable "oauth2_authorization" {
  description = "An 'oauth2_authorization' block."
  type        = map(any)
  default     = null
}
#
# oauth2_authorization block structure:
#   authorization_server_name (string)  : (REQUIRED) OAuth authorization server identifier. The name of an [OAuth2 Authorization Server](https://www.terraform.io/docs/providers/azurerm/r/api_management_authorization_server.html).
#   scope (string)                      : Operations scope.


variable "openid_authentication" {
  description = "An 'openid_authentication' block."
  type        = map(any)
  default     = null
}
#
# openid_authentication block structure:
#   openid_provider_name (string)        : (REQUIRED) OpenID Connect provider identifier. The name of an [OpenID Connect Provider](https://www.terraform.io/docs/providers/azurerm/r/api_management_openid_connect_provider.html).
#   bearer_token_sending_methods (string): How to send token to the server. A list of zero or more methods. Valid values are 'authorizationHeader' and 'query'.


variable "service_url" {
  description = "Absolute URL of the backend service implementing this API."
  type        = string
  default     = null
}
variable "soap_pass_through" {
  description = "Should this API expose a SOAP frontend, rather than a HTTP frontend? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "subscription_key_parameter_names" {
  description = "A 'subscription_key_parameter_names' block."
  type        = map(any)
  default     = null
}
#
# subscription_key_parameter_names block structure:
#   header (string)                                 : (REQUIRED) The name of the HTTP Header which should be used for the Subscription Key.
#   query (string)                                  : (REQUIRED) The name of the QueryString parameter which should be used for the Subscription Key.


variable "subscription_required" {
  description = "Should this API require a subscription key? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "terms_of_service_url" {
  description = "Absolute URL of the Terms of Service for the API."
  type        = string
  default     = null
}
variable "version" {
  description = "The Version number of this API, if this API is versioned."
  type        = int
  default     = null
}
variable "version_set_id" {
  description = "The ID of the Version Set which this API is associated with."
  type        = string
  default     = null
}
variable "revision_description" {
  description = "The description of the API Revision of the API Management API."
  type        = string
  default     = null
}
variable "version_description" {
  description = "The description of the API Version of the API Management API."
  type        = string
  default     = null
}
variable "source_api_id" {
  description = "The API id of the source API, which could be in format 'azurerm_api_management_api.example.id' or in format 'azurerm_api_management_api.example.id;rev=1'"
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
