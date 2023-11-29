# REQUIRED VARIABLES

variable "schema_id" {
  description = "(REQUIRED) A unique identifier for this Schema. Changing this forces a new resource to be created."
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
variable "type" {
  description = "(REQUIRED) The content type of the Schema. Possible values are 'xml' and 'json'."
  type        = string

}
variable "value" {
  description = "(REQUIRED) The string defining the document representing the Schema."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the schema."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
