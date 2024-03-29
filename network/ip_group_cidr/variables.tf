# REQUIRED VARIABLES

variable "ip_group_id" {
  description = "(REQUIRED) The ID of the destination IP Group. Changing this forces a new IP Group CIDR to be created."
  type        = string

}
variable "cidr" {
  description = "(REQUIRED) The 'CIDR' that should be added to the IP Group. Changing this forces a new IP Group CIDR to be created. ~> **NOTE:** The AzureRM Terraform provider provides cidr support via this standalone resource and in-line within [azurerm_ip_group](ip_group.html) using the 'cidrs' property. You cannot use both methods simultaneously. If cidrs are set via this resource then 'ignore_changes' should be used in the resource 'azurerm_ip_group_cidr' configuration."
  type        = string

}
