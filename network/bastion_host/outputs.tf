output "name" {
  value = azurerm_bastion_host.this.name
}

output "resource_group_name" {
  value = azurerm_bastion_host.this.resource_group_name
}

output "location" {
  value = azurerm_bastion_host.this.location
}

output "copy_paste_enabled" {
  value = azurerm_bastion_host.this.copy_paste_enabled
}

output "file_copy_enabled" {
  value = azurerm_bastion_host.this.file_copy_enabled
}

output "sku" {
  value = azurerm_bastion_host.this.sku
}

output "ip_configuration" {
  value = azurerm_bastion_host.this.ip_configuration
}

output "ip_connect_enabled" {
  value = azurerm_bastion_host.this.ip_connect_enabled
}

output "scale_units" {
  value = azurerm_bastion_host.this.scale_units
}

output "shareable_link_enabled" {
  value = azurerm_bastion_host.this.shareable_link_enabled
}

output "tunneling_enabled" {
  value = azurerm_bastion_host.this.tunneling_enabled
}

output "tags" {
  value = azurerm_bastion_host.this.tags
}

output "public_ip_address_id" {
  description = "Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_bastion_host.this.public_ip_address_id
}

output "id" {
  description = "The ID of the Bastion Host."
  value       = azurerm_bastion_host.this.id
}

output "dns_name" {
  description = "The FQDN for the Bastion Host."
  value       = azurerm_bastion_host.this.dns_name
}

