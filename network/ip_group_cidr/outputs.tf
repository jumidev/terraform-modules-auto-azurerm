output "ip_group_id" {
  value = azurerm_ip_group_cidr.this.ip_group_id
}

output "cidr" {
  value = azurerm_ip_group_cidr.this.cidr
}

output "cidr" {
  description = "The 'CIDR' that should be added to the IP Group. Changing this forces a new IP Group CIDR to be created. ~> **NOTE:** The AzureRM Terraform provider provides cidr support via this standalone resource and in-line within [azurerm_ip_group](ip_group.html) using the 'cidrs' property. You cannot use both methods simultaneously. If cidrs are set via this resource then 'ignore_changes' should be used in the resource 'azurerm_ip_group_cidr' configuration. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_ip_group_cidr.this.cidr
}

output "id" {
  description = "The ID of the IP Group CIDR."
  value       = azurerm_ip_group_cidr.this.id
}

