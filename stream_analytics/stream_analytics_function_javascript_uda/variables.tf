# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the JavaScript UDA Function. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_id" {
  description = "(REQUIRED) The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "input" {
  description = "(REQUIRED) One or more 'input' blocks."
  type        = map(map(any))
}
#
# input block structure         :
#   type (string)                 : (REQUIRED) The input data type of this JavaScript Function. Possible values include 'any', 'array', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'.
#   configuration_parameter (bool): Is this input parameter a configuration parameter? Defaults to 'false'.


variable "output" {
  description = "(REQUIRED) An 'output' block."
  type        = map(any)
}
#
# output block structure:
#   type (string)         : (REQUIRED) The output data type from this JavaScript Function. Possible values include 'any', 'array', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'.


variable "script" {
  description = "(REQUIRED) The JavaScript of this UDA Function."
  type        = string

}
