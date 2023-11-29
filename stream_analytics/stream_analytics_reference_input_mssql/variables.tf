# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Reference Input MS SQL data. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_name" {
  description = "(REQUIRED) The name of the Stream Analytics Job. Changing this forces a new resource to be created."
  type        = string

}
variable "server" {
  description = "(REQUIRED) The fully qualified domain name of the MS SQL server."
  type        = string

}
variable "database" {
  description = "(REQUIRED) The MS SQL database name where the reference data exists."
  type        = string

}
variable "username" {
  description = "(REQUIRED) The username to connect to the MS SQL database."
  type        = string

}
variable "password" {
  description = "(REQUIRED) The password to connect to the MS SQL database."
  type        = string

}
variable "refresh_type" {
  description = "(REQUIRED) Defines whether and how the reference data should be refreshed. Accepted values are 'Static', 'RefreshPeriodicallyWithFull' and 'RefreshPeriodicallyWithDelta'."
  type        = string

}
variable "full_snapshot_query" {
  description = "(REQUIRED) The query used to retrieve the reference data from the MS SQL database."
  type        = string

}

# OPTIONAL VARIABLES

variable "refresh_interval_duration" {
  description = "The frequency in 'hh:mm:ss' with which the reference data should be retrieved from the MS SQL database e.g. '00:20:00' for every 20 minutes. Must be set when 'refresh_type' is 'RefreshPeriodicallyWithFull' or 'RefreshPeriodicallyWithDelta'."
  type        = string
  default     = null
}
variable "delta_snapshot_query" {
  description = "The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when 'refresh_type' is 'Static'."
  type        = string
  default     = null
}
variable "table" {
  description = "The name of the table in the Azure SQL database."
  type        = string
  default     = null
}
variable "stream_analytics_job_resource_group_name" {
  description = "Specifies the name of the resource group the Stream Analytics Job is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
