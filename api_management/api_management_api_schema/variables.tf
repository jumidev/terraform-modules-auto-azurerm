# REQUIRED VARIABLES

variable "schema_id" {
  description = "(REQUIRED) A unique identifier for this API Schema. Changing this forces a new resource to be created."
  type        = string

}
variable "api_name" {
  description = "(REQUIRED) The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created."
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
variable "content_type" {
  description = "(REQUIRED) The content type of the API Schema."
  type        = string

}

# OPTIONAL VARIABLES

variable "value" {
  description = "The JSON escaped string defining the document representing the Schema."
  type        = string
  default     = null
}
variable "components" {
  description = "Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only."
  type        = string
  default     = null
}
variable "definitions" {
  description = "Types definitions. Used for Swagger/OpenAPI v1 schemas only."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
