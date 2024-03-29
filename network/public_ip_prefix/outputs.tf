output "name" {
  value = azurerm_public_ip_prefix.this.name
}

output "resource_group_name" {
  value = azurerm_public_ip_prefix.this.resource_group_name
}

output "location" {
  value = azurerm_public_ip_prefix.this.location
}

output "sku" {
  value = azurerm_public_ip_prefix.this.sku
}

output "ip_version" {
  value = azurerm_public_ip_prefix.this.ip_version
}

output "prefix_length" {
  value = azurerm_public_ip_prefix.this.prefix_length
}

output "tags" {
  value = azurerm_public_ip_prefix.this.tags
}

output "zones" {
  value = azurerm_public_ip_prefix.this.zones
}

output "zones" {
  description = "Specifies a list of Availability Zones in which this Public IP Prefix should be located. Changing this forces a new Public IP Prefix to be created. -> **Please Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview). In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_public_ip_prefix.this.zones
}

output "id" {
  description = "The Public IP Prefix ID."
  value       = azurerm_public_ip_prefix.this.id
}

output "ip_prefix" {
  description = "The IP address prefix value that was allocated."
  value       = azurerm_public_ip_prefix.this.ip_prefix
}

output "nat_gateway_id" {
  value = azurerm_nat_gateway_public_ip_prefix_association.this.*.nat_gateway_id
}

output "public_ip_prefix_id" {
  value = azurerm_nat_gateway_public_ip_prefix_association.this.*.public_ip_prefix_id
}

output "public_ip_prefix_id" {
  description = "The ID of the Public IP Prefix which this NAT Gateway which should be connected to. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_nat_gateway_public_ip_prefix_association.this.*.public_ip_prefix_id
}

output "id" {
  description = "The (Terraform specific) ID of the Association between the NAT Gateway and the Public IP Prefix."
  value       = azurerm_nat_gateway_public_ip_prefix_association.this.*.id
}

