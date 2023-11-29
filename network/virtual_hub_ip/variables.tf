# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Virtual Hub IP. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The ID of the Virtual Hub within which this IP configuration should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet that the IP will reside. Changing this forces a new resource to be created."
  type        = string

}
variable "public_ip_address_id" {
  description = "(REQUIRED) The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "private_ip_address" {
  description = "The private IP address of the IP configuration."
  type        = string
  default     = null
}
variable "private_ip_allocation_method" {
  description = "The private IP address allocation method. Possible values are 'Static' and 'Dynamic' is allowed. Defaults to 'Dynamic'."
  type        = string
  default     = "Dynamic"
}
