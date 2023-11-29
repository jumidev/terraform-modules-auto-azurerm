# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of this Consumer Group. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_name" {
  description = "(REQUIRED) The name of the IoT Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "eventhub_endpoint_name" {
  description = "(REQUIRED) The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "iothub_resource_group_name" {
  description = "The name of the Resource Group where the IoTHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
