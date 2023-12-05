# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "time_series_insights_environment_id" {
  description = "(REQUIRED) The resource ID of the Azure IoT Time Series Insights Environment in which to create the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "key_property" {
  description = "(REQUIRED) A 'key_property' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# key_property block structure:
#   name (string)               : (REQUIRED) The name of the key property. Changing this forces a new resource to be created.
#   type (string)               : (REQUIRED) The data type of the key property. Valid values include 'Bool', 'DateTime', 'Double', 'String'. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "data_string_comparison_behavior" {
  description = "The comparison behavior that will be used to compare keys. Valid values include 'Ordinal' and 'OrdinalIgnoreCase'. Defaults to 'Ordinal'. Changing this forces a new resource to be created."
  type        = string
  default     = "Ordinal"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
