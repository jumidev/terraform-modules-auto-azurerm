# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the route. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_name" {
  description = "(REQUIRED) The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created."
  type        = string

}
variable "source" {
  description = "(REQUIRED) The source that the routing rule is to be applied to. Possible values include: 'DeviceConnectionStateEvents', 'DeviceJobLifecycleEvents', 'DeviceLifecycleEvents', 'DeviceMessages', 'DigitalTwinChangeEvents', 'Invalid', 'TwinChangeEvents'."
  type        = string

}
variable "endpoint_names" {
  description = "(REQUIRED) The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Specifies whether a route is enabled."
  type        = bool

}

# OPTIONAL VARIABLES

variable "condition" {
  description = "The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "iothub_resource_group_name" {
  description = "The name of the Resource Group where the IoTHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
