# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "iot_dps_name" {
  description = "(REQUIRED) The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created."
  type        = string

}
variable "certificate_content" {
  description = "(REQUIRED) The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content."
  type        = string

}

# OPTIONAL VARIABLES

variable "is_verified" {
  description = "Specifies if the certificate is created in verified state. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
