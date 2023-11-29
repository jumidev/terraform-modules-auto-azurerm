# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Integration Service Environment. Changing this forces a new Integration Service Environment to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Integration Service Environment should exist. Changing this forces a new Integration Service Environment to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Integration Service Environment should exist. Changing this forces a new Integration Service Environment to be created."
  type        = string

}
variable "access_endpoint_type" {
  description = "(REQUIRED) The type of access endpoint to use for the Integration Service Environment. Possible Values are 'Internal' and 'External'. Changing this forces a new Integration Service Environment to be created."
  type        = string

}
variable "virtual_network_subnet_ids" {
  description = "(REQUIRED) A list of virtual network subnet ids to be used by Integration Service Environment. Exactly four distinct ids to '/27' subnets must be provided. Changing this forces a new Integration Service Environment to be created."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "sku_name" {
  description = "The SKU name and capacity of the Integration Service Environment. Possible values are 'Developer_0', 'Premium_0', 'Premium_1', 'Premium_2', 'Premium_3', 'Premium_4', 'Premium_5', 'Premium_6', 'Premium_7', 'Premium_8', 'Premium_9' and 'Premium_10'. Defaults to 'Developer_0'."
  type        = string
  default     = "Developer_0"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Integration Service Environment."
  type        = map(any)
  default     = null
}
