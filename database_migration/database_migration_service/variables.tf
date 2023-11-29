# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specify the name of the database migration service. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Name of the resource group in which to create the database migration service. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the virtual subnet resource to which the database migration service should be joined. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The SKU name of the database migration service. Possible values are 'Premium_4vCores', 'Standard_1vCores', 'Standard_2vCores' and 'Standard_4vCores'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assigned to the resource."
  type        = map(any)
  default     = null
}
