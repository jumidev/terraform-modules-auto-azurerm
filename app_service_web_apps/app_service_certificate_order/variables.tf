# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is 'global'."
  type        = string

}

# OPTIONAL VARIABLES

variable "auto_renew" {
  description = "true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "csr" {
  description = "Last CSR that was created for this order."
  type        = string
  default     = null
}
variable "distinguished_name" {
  description = "The Distinguished Name for the App Service Certificate Order."
  type        = string
  default     = null
}
variable "key_size" {
  description = "Certificate key size. Defaults to '2048'."
  type        = string
  default     = "2048"
}
variable "product_type" {
  description = "Certificate product type, such as 'Standard' or 'WildCard'. Defaults to 'Standard'."
  type        = string
  default     = "Standard"
}
variable "validity_in_years" {
  description = "Duration in years (must be between '1' and '3'). Defaults to '1'."
  type        = string
  default     = "1"
}
