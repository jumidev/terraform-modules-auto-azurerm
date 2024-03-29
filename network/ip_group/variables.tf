# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the IP group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the IP group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "cidrs" {
  description = "A list of CIDRs or IP addresses. ~> **NOTE:** The AzureRM Terraform provider provides cidr support via the standalone resource [azurerm_ip_group_cidr](ip_group_cidr.html) and in-line within this resource using the 'cidrs' property. You cannot use both methods simultaneously. If cidrs are set via the resource 'azurerm_ip_group_cidr' then 'ignore_changes' should be used in the ip group configuration."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
