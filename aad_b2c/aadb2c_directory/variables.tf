# REQUIRED VARIABLES

variable "data_residency_location" {
  description = "(REQUIRED) Location in which the B2C tenant is hosted and data resides. The 'data_residency_location' should be valid for the specified 'country_code'. See [official docs](https://aka.ms/B2CDataResidenc) for more information. Changing this forces a new AAD B2C Directory to be created. Possible values are 'Asia Pacific', 'Australia', 'Europe', 'Global' and 'United States'."
  type        = string

}
variable "domain_name" {
  description = "(REQUIRED) Domain name of the B2C tenant, including the '.onmicrosoft.com' suffix. Changing this forces a new AAD B2C Directory to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the AAD B2C Directory should exist. Changing this forces a new AAD B2C Directory to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Billing SKU for the B2C tenant. Must be one of: 'PremiumP1' or 'PremiumP2' ('Standard' is not supported). See [official docs](https://aka.ms/b2cBilling) for more information."
  type        = string

}

# OPTIONAL VARIABLES

variable "country_code" {
  description = "Country code of the B2C tenant. The 'country_code' should be valid for the specified 'data_residency_location'. See [official docs](https://aka.ms/B2CDataResidency) for valid country codes. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created."
  type        = string
  default     = null
}
variable "display_name" {
  description = "The initial display name of the B2C tenant. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the AAD B2C Directory."
  type        = map(any)
  default     = null
}
