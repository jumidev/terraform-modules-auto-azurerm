# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Redis Enterprise Cluster. Changing this forces a new Redis Enterprise Cluster to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The 'sku_name' is comprised of two segments separated by a hyphen (e.g. 'Enterprise_E10-2'). The first segment of the 'sku_name' defines the 'name' of the SKU, possible values are 'Enterprise_E5', 'Enterprise_E10', 'Enterprise_E20'', 'Enterprise_E50', 'Enterprise_E100', 'Enterprise_E200', 'Enterprise_E400', 'EnterpriseFlash_F300', 'EnterpriseFlash_F700' or 'EnterpriseFlash_F1500'. The second segment defines the 'capacity' of the 'sku_name', possible values for 'Enteprise' SKUs are ('2', '4', '6', ...). Possible values for 'EnterpriseFlash' SKUs are ('3', '9', '15', ...). Changing this forces a new Redis Enterprise Cluster to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "minimum_tls_version" {
  description = "The minimum TLS version. Possible values are '1.0', '1.1' and '1.2'. Defaults to '1.2'. Changing this forces a new Redis Enterprise Cluster to be created."
  type        = string
  default     = "1.2"
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Redis Enterprise Cluster should be located. Changing this forces a new Redis Enterprise Cluster to be created."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Redis Enterprise Cluster."
  type        = map(any)
  default     = null
}
