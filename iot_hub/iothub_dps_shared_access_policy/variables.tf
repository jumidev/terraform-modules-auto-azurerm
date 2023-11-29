# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_dps_name" {
  description = "(REQUIRED) The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enrollment_read" {
  description = "Adds 'EnrollmentRead' permission to this Shared Access Account. It allows read access to enrollment data."
  type        = string
  default     = null
}
variable "enrollment_write" {
  description = "Adds 'EnrollmentWrite' permission to this Shared Access Account. It allows write access to enrollment data."
  type        = string
  default     = null
}
variable "registration_read" {
  description = "Adds 'RegistrationStatusRead' permission to this Shared Access Account. It allows read access to device registrations."
  type        = string
  default     = null
}
variable "registration_write" {
  description = "Adds 'RegistrationStatusWrite' permission to this Shared Access Account. It allows write access to device registrations."
  type        = string
  default     = null
}
variable "service_config" {
  description = "Adds 'ServiceConfig' permission to this Shared Access Account. It allows configuration of the Device Provisioning Service."
  type        = string
  default     = null
}
variable "iothub_dps_resource_group_name" {
  description = "The name of the resource group under which the Iot Device Provisioning Service is located in..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
