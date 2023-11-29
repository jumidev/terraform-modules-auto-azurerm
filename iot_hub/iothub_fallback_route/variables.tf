# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_name" {
  description = "(REQUIRED) The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Used to specify whether the fallback route is enabled."
  type        = bool

}
variable "endpoint_names" {
  description = "(REQUIRED) The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed."
  type        = string

}

# OPTIONAL VARIABLES

variable "source" {
  description = "The source that the routing rule is to be applied to. Possible values include: 'DeviceConnectionStateEvents', 'DeviceJobLifecycleEvents', 'DeviceLifecycleEvents', 'DeviceMessages', 'DigitalTwinChangeEvents', 'Invalid', 'TwinChangeEvents'. Defaults to 'DeviceMessages'."
  type        = string
  default     = "DeviceMessages"
}
variable "condition" {
  description = "The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "iothub_resource_group_name" {
  description = "The name of the Resource Group where the IoTHub exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
