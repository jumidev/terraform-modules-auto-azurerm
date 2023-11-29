# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_name" {
  description = "(REQUIRED) The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate_content" {
  description = "(REQUIRED) The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content."
  type        = string

}

# OPTIONAL VARIABLES

variable "is_verified" {
  description = "Is the certificate verified? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "iothub_resource_group_name" {
  description = "The name of the Resource Group where the IoTHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
