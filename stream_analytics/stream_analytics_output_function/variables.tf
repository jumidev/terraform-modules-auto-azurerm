# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_name" {
  description = "(REQUIRED) The name of the Stream Analytics Job. Changing this forces a new resource to be created."
  type        = string

}
variable "api_key" {
  description = "(REQUIRED) The API key for the Function."
  type        = string

}
variable "function_app" {
  description = "(REQUIRED) The name of the Function App."
  type        = string

}
variable "function_name" {
  description = "(REQUIRED) The name of the function in the Function App."
  type        = string

}

# OPTIONAL VARIABLES

variable "batch_max_count" {
  description = "The maximum number of events in each batch that's sent to the function. Defaults to '100'."
  type        = number
  default     = "100"
}
variable "batch_max_in_bytes" {
  description = "The maximum batch size in bytes that's sent to the function. Defaults to '262144' (256 kB)."
  type        = string
  default     = "262144"
}
variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
