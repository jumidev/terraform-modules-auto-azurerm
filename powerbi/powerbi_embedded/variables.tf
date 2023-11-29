# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the PowerBI Embedded. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the PowerBI Embedded should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Sets the PowerBI Embedded's pricing level's SKU. Possible values include: 'A1', 'A2', 'A3', 'A4', 'A5', 'A6'."
  type        = string

}
variable "administrators" {
  description = "(REQUIRED) A set of administrator user identities, which manages the Power BI Embedded and must be a member user or a service principal in your AAD tenant."
  type        = string

}

# OPTIONAL VARIABLES

variable "mode" {
  description = "Sets the PowerBI Embedded's mode. Possible values include: 'Gen1', 'Gen2'. Defaults to 'Gen1'. Changing this forces a new resource to be created."
  type        = string
  default     = "Gen1"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
