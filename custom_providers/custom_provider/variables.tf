# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Custom Provider. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Custom Provider. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "resource_type" {
  description = "Any number of 'resource_type' block. One of 'resource_type' or 'action' must be specified."
  type        = map(any)
  default     = null
}
#
# resource_type block structure:
#   name (string)                : (REQUIRED) Specifies the name of the route definition.
#   endpoint (string)            : (REQUIRED) Specifies the endpoint of the route definition.
#   routing_type (string)        : The routing type that is supported for the resource request. Valid values are 'Proxy' and 'Proxy,Cache'. Defaults to 'Proxy'.


variable "action" {
  description = "Any number of 'action' block. One of 'resource_type' or 'action' must be specified."
  type        = map(any)
  default     = null
}
#
# action block structure:
#   name (string)         : (REQUIRED) Specifies the name of the action.
#   endpoint (string)     : (REQUIRED) Specifies the endpoint of the action.


variable "validation" {
  description = "Any number of 'validation' block."
  type        = map(any)
  default     = null
}
#
# validation block structure:
#   specification (string)    : (REQUIRED) The endpoint where the validation specification is located.


variable "tags" {
  description = "A mapping of tags to assign to the resource. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
