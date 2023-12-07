# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU Name for this IoT Time Series Insights Gen2 Environment. Currently it supports only 'L1'. For gen2, capacity cannot be specified. Changing this forces a new resource to be created."
  type        = string

}
variable "storage" {
  description = "(REQUIRED) A 'storage' block."
  type        = map(any)
}
#
# storage block structure:
#   name (string)          : (REQUIRED) Name of storage account for Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created.
#   key (string)           : (REQUIRED) Access key of storage account for Azure IoT Time Series Insights Gen2 Environment


variable "id_properties" {
  description = "(REQUIRED) A list of property ids for the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "warm_store_data_retention_time" {
  description = "Specifies the ISO8601 timespan specifying the minimum number of days the environment's events will be available for query."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
