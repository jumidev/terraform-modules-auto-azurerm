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
variable "server" {
  description = "(REQUIRED) The SQL server url. Changing this forces a new resource to be created."
  type        = string

}
variable "database" {
  description = "(REQUIRED) The MS SQL database name where the reference table exists. Changing this forces a new resource to be created."
  type        = string

}
variable "table" {
  description = "(REQUIRED) Table in the database that the output points to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "user" {
  description = "Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if 'authentication_mode' is 'ConnectionString'."
  type        = string
  default     = null
}
variable "password" {
  description = "Password used together with username, to login to the Microsoft SQL Server. Required if 'authentication_mode' is 'ConnectionString'."
  type        = string
  default     = null
}
variable "max_batch_count" {
  description = "The max batch count to write to the SQL Database. Defaults to '10000'. Possible values are between '1' and '1073741824'."
  type        = string
  default     = "10000"
}
variable "max_writer_count" {
  description = "The max writer count for the SQL Database. Defaults to '1'. Possible values are '0' which bases the writer count on the query partition and '1' which corresponds to a single writer."
  type        = string
  default     = "1"
}
variable "authentication_mode" {
  description = "The authentication mode for the Stream Output. Possible values are 'Msi' and 'ConnectionString'. Defaults to 'ConnectionString'."
  type        = string
  default     = "ConnectionString"
}
variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
