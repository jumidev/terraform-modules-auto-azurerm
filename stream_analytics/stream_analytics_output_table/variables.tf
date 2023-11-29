# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Stream Output. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_name" {
  description = "(REQUIRED) The name of the Stream Analytics Job. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) The name of the Storage Account."
  type        = string

}
variable "storage_account_key" {
  description = "(REQUIRED) The Access Key which should be used to connect to this Storage Account."
  type        = string

}
variable "table" {
  description = "(REQUIRED) The name of the table where the stream should be output to."
  type        = string

}
variable "partition_key" {
  description = "(REQUIRED) The name of the output column that contains the partition key."
  type        = string

}
variable "row_key" {
  description = "(REQUIRED) The name of the output column that contains the row key."
  type        = string

}
variable "batch_size" {
  description = "(REQUIRED) The number of records for a batch operation. Must be between '1' and '100'."
  type        = int

}

# OPTIONAL VARIABLES

variable "columns_to_remove" {
  description = "A list of the column names to be removed from output event entities."
  type        = list(any)
  default     = []
}
variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
