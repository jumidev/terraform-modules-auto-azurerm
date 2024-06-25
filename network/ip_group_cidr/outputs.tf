output "ip_group_id" {
  value = azurerm_ip_group_cidr.this.ip_group_id
}

output "cidr" {
  value = azurerm_ip_group_cidr.this.cidr
}

output "id" {
  description = "The ID of the IP Group CIDR."
  value       = azurerm_ip_group_cidr.this.id
}

