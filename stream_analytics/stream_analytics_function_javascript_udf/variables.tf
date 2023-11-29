# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the JavaScript UDF Function. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_name" {
  description = "(REQUIRED) The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "input" {
  description = "(REQUIRED) One or more 'input' blocks."
  type        = map(map(any))
}
#
# input block structure         :
#   type (string)                 : (REQUIRED) The Data Type for the Input Argument of this JavaScript Function. Possible values include 'array', 'any', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'.
#   configuration_parameter (bool): Is this input parameter a configuration parameter? Defaults to 'false'.


variable "output" {
  description = "(REQUIRED) An 'output' blocks."
  type        = map(map(any))
}
#
# output block structure:
#   type (string)         : (REQUIRED) The Data Type output from this JavaScript Function. Possible values include 'array', 'any', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'.


variable "script" {
  description = "(REQUIRED) The JavaScript of this UDF Function."
  type        = string

}

# OPTIONAL VARIABLES

variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
