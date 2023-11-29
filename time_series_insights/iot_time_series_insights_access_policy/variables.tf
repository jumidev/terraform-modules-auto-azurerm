# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Azure IoT Time Series Insights Access Policy. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "time_series_insights_environment_id" {
  description = "(REQUIRED) The resource ID of the Azure IoT Time Series Insights Environment in which to create the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_object_id" {
  description = "(REQUIRED) The id of the principal in Azure Active Directory. Changing this forces a new resource to be created."
  type        = string

}
variable "roles" {
  description = "(REQUIRED) A list of roles to apply to the Access Policy. Valid values include 'Contributor' and 'Reader'."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the Azure IoT Time Series Insights Access Policy."
  type        = string
  default     = null
}
