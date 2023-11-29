# REQUIRED VARIABLES

variable "app_service_slot_id" {
  description = "(REQUIRED) The ID of the App Service Slot. Changing this forces a new resource to be created."
  type        = string

}
variable "hostname" {
  description = "(REQUIRED) Specifies the Custom Hostname to use for the App Service, example 'www.example.com'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "ssl_state" {
  description = "The SSL type. Possible values are 'IpBasedEnabled' and 'SniEnabled'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "thumbprint" {
  description = "The SSL certificate thumbprint. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
