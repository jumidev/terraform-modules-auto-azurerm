# REQUIRED VARIABLES

variable "api_management_name" {
  description = "(REQUIRED) The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "authorization_methods" {
  description = "(REQUIRED) The HTTP Verbs supported by the Authorization Endpoint. Possible values are 'DELETE', 'GET', 'HEAD', 'OPTIONS', 'PATCH', 'POST', 'PUT' and 'TRACE'."
  type        = string

}
variable "authorization_endpoint" {
  description = "(REQUIRED) The OAUTH Authorization Endpoint."
  type        = string

}
variable "client_id" {
  description = "(REQUIRED) The Client/App ID registered with this Authorization Server."
  type        = string

}
variable "client_registration_endpoint" {
  description = "(REQUIRED) The URI of page where Client/App Registration is performed for this Authorization Server."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The user-friendly name of this Authorization Server."
  type        = string

}
variable "grant_types" {
  description = "(REQUIRED) Form of Authorization Grants required when requesting an Access Token. Possible values are 'authorizationCode', 'clientCredentials', 'implicit' and 'resourceOwnerPassword'."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of this Authorization Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "bearer_token_sending_methods" {
  description = "The mechanism by which Access Tokens are passed to the API. Possible values are 'authorizationHeader' and 'query'."
  type        = string
  default     = null
}
variable "client_authentication_method" {
  description = "The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are 'Basic' and 'Body'."
  type        = string
  default     = null
}
variable "client_secret" {
  description = "The Client/App Secret registered with this Authorization Server."
  type        = string
  default     = null
}
variable "default_scope" {
  description = "The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values."
  type        = string
  default     = null
}
variable "description" {
  description = "A description of the Authorization Server, which may contain HTML formatting tags."
  type        = string
  default     = null
}
variable "resource_owner_username" {
  description = "The username associated with the Resource Owner."
  type        = string
  default     = null
}
variable "support_state" {
  description = "Does this Authorization Server support State? If this is set to 'true' the client may use the state parameter to raise protocol security."
  type        = string
  default     = null
}
variable "token_body_parameter" {
  description = "A 'token_body_parameter' block."
  type        = map(any)
  default     = null
}
#
# token_body_parameter block structure:
#   name (string)                       : (REQUIRED) The Name of the Parameter.
#   value (string)                      : (REQUIRED) The Value of the Parameter.


variable "token_endpoint" {
  description = "The OAUTH Token Endpoint."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
