# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_name" {
  description = "(REQUIRED) The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "registry_read" {
  description = "Adds 'RegistryRead' permission to this Shared Access Account. It allows read access to the identity registry."
  type        = string
  default     = null
}
variable "registry_write" {
  description = "Adds 'RegistryWrite' permission to this Shared Access Account. It allows write access to the identity registry."
  type        = string
  default     = null
}
variable "service_connect" {
  description = "Adds 'ServiceConnect' permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints."
  type        = string
  default     = null
}
variable "device_connect" {
  description = "Adds 'DeviceConnect' permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints."
  type        = string
  default     = null
}
variable "iothub_resource_group_name" {
  description = "The name of the Resource Group where the IoTHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
