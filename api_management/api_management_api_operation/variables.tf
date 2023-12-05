# REQUIRED VARIABLES

variable "operation_id" {
  description = "(REQUIRED) A unique identifier for this API Operation. Changing this forces a new resource to be created."
  type        = string

}
variable "api_name" {
  description = "(REQUIRED) The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The Name of the API Management Service where the API exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The Display Name for this API Management Operation."
  type        = string

}
variable "method" {
  description = "(REQUIRED) The HTTP Method used for this API Management Operation, like 'GET', 'DELETE', 'PUT' or 'POST' - but not limited to these values."
  type        = string

}
variable "url_template" {
  description = "(REQUIRED) The relative URL Template identifying the target resource for this operation, which may include parameters."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for this API Operation, which may include HTML formatting tags."
  type        = string
  default     = null
}
variable "request" {
  description = "A 'request' block."
  type        = map(any)
  default     = null
}
#
# request block structure:
#   description (string)   : A description of the HTTP Request, which may include HTML tags.
#   header (list)          : One or more 'header' blocks.
#   query_parameter (list) : One or more 'query_parameter' blocks.
#   representation (block) : One or more 'representation' blocks.
#
# representation block structure:
#   content_type (string)         : (REQUIRED) The Content Type of this representation, such as 'application/json'.
#   form_parameter (list)         : One or more 'form_parameter' block.
#   example (list)                : One or more 'example' blocks.
#   schema_id (string)            : The ID of an API Management Schema which represents this Response.
#   type_name (string)            : The Type Name defined by the Schema.


variable "response" {
  description = "One or more 'response' blocks."
  type        = map(map(any))
  default     = null
}
#
# response block structure:
#   status_code (string)    : (REQUIRED) The HTTP Status Code.
#   description (string)    : A description of the HTTP Response, which may include HTML tags.
#   header (list)           : One or more 'header' blocks.
#   representation (block)  : One or more 'representation' blocks.
#
# representation block structure:
#   content_type (string)         : (REQUIRED) The Content Type of this representation, such as 'application/json'.
#   form_parameter (list)         : One or more 'form_parameter' block.
#   example (list)                : One or more 'example' blocks.
#   schema_id (string)            : The ID of an API Management Schema which represents this Response.
#   type_name (string)            : The Type Name defined by the Schema.


variable "template_parameter" {
  description = "One or more 'template_parameter' blocks. Required if 'url_template' contains one or more parameters."
  type        = map(map(any))
  default     = null
}
#
# template_parameter block structure:
#   name (string)                     : (REQUIRED) The Name of this Template Parameter.
#   required (bool)                   : (REQUIRED) Is this Template Parameter Required?
#   type (string)                     : (REQUIRED) The Type of this Template Parameter, such as a 'string'.
#   description (string)              : A description of this Template Parameter.
#   default_value (string)            : The default value for this Template Parameter.
#   values (list)                     : One or more acceptable values for this Template Parameter.
#   example (list)                    : One or more 'example' blocks.
#   schema_id (string)                : The name of the Schema.
#   type_name (string)                : The type name defined by the Schema.


variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
