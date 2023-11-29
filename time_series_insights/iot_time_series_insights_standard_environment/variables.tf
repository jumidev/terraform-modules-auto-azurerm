# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Azure IoT Time Series Insights Standard Environment. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Azure IoT Time Series Insights Standard Environment. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU Name for this IoT Time Series Insights Standard Environment. It is string consisting of two parts separated by an underscore('_).The first part is the 'name', valid values include: 'S1' and 'S2'. The second part is the 'capacity' (e.g. the number of deployed units of the 'sku'), which must be a positive 'integer' (e.g. 'S1_1'). Possible values are 'S1_1', 'S1_2', 'S1_3', 'S1_4', 'S1_5', 'S1_6', 'S1_7', 'S1_8', 'S1_9', 'S1_10', 'S2_1', 'S2_2', 'S2_3', 'S2_4', 'S2_5', 'S2_6', 'S2_7', 'S2_8', 'S2_9' and 'S2_10'. Changing this forces a new resource to be created."
  type        = string

}
variable "data_retention_time" {
  description = "(REQUIRED) Specifies the ISO8601 timespan specifying the minimum number of days the environment's events will be available for query. Changing this forces a new resource to be created."
  type        = int

}

# OPTIONAL VARIABLES

variable "storage_limit_exceeded_behavior" {
  description = "Specifies the behaviour the IoT Time Series Insights service should take when the environment's capacity has been exceeded. Valid values include 'PauseIngress' and 'PurgeOldData'. Defaults to 'PurgeOldData'."
  type        = string
  default     = "PurgeOldData"
}
variable "partition_key" {
  description = "The name of the event property which will be used to partition data. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
