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
  description = "(REQUIRED) The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created."
  type        = string

}
variable "database" {
  description = "(REQUIRED) The name of the Azure SQL database. Changing this forces a new resource to be created."
  type        = string

}
variable "user" {
  description = "(REQUIRED) The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created."
  type        = string

}
variable "password" {
  description = "(REQUIRED) The password that will be used to connect to the Azure SQL database."
  type        = string

}
variable "table" {
  description = "(REQUIRED) The name of the table in the Azure SQL database. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
