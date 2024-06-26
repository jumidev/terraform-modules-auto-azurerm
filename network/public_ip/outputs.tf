output "name" {
  value = azurerm_public_ip.this.name
}

output "resource_group_name" {
  value = azurerm_public_ip.this.resource_group_name
}

output "location" {
  value = azurerm_public_ip.this.location
}

output "allocation_method" {
  value = azurerm_public_ip.this.allocation_method
}

output "zones" {
  value = azurerm_public_ip.this.zones
}

output "ddos_protection_mode" {
  value = azurerm_public_ip.this.ddos_protection_mode
}

output "ddos_protection_plan_id" {
  value = azurerm_public_ip.this.ddos_protection_plan_id
}

output "domain_name_label" {
  value = azurerm_public_ip.this.domain_name_label
}

output "edge_zone" {
  value = azurerm_public_ip.this.edge_zone
}

output "idle_timeout_in_minutes" {
  value = azurerm_public_ip.this.idle_timeout_in_minutes
}

output "ip_tags" {
  value = azurerm_public_ip.this.ip_tags
}

output "ip_version" {
  value = azurerm_public_ip.this.ip_version
}

output "public_ip_prefix_id" {
  value = azurerm_public_ip.this.public_ip_prefix_id
}

output "reverse_fqdn" {
  value = azurerm_public_ip.this.reverse_fqdn
}

output "sku" {
  value = azurerm_public_ip.this.sku
}

output "sku_tier" {
  value = azurerm_public_ip.this.sku_tier
}

output "tags" {
  value = azurerm_public_ip.this.tags
}

output "id" {
  description = "The ID of this Public IP."
  value       = azurerm_public_ip.this.id
}

output "ip_address" {
  description = "The IP address value that was allocated. ~> **Note** 'Dynamic' Public IP Addresses aren't allocated until they're attached to a device (e.g. a Virtual Machine/Load Balancer). Instead you can obtain the IP Address once the Public IP has been assigned via the ['azurerm_public_ip' Data Source](../d/public_ip.html)."
  value       = azurerm_public_ip.this.ip_address
}

output "fqdn" {
  description = "Fully qualified domain name of the A DNS record associated with the public IP. 'domain_name_label' must be specified to get the 'fqdn'. This is the concatenation of the 'domain_name_label' and the regionalized DNS zone"
  value       = azurerm_public_ip.this.fqdn
}

output "dns_a_record" {
  value = var.dns_a_record
}

output "nat_gateway_id" {
  value = azurerm_nat_gateway_public_ip_association.this.*.nat_gateway_id
}

output "public_ip_address_id" {
  value = azurerm_nat_gateway_public_ip_association.this.*.public_ip_address_id
}

output "id" {
  description = "The (Terraform specific) ID of the Association between the NAT Gateway and the Public IP."
  value       = azurerm_nat_gateway_public_ip_association.this.*.id
}

output "private_dns_a_record" {
  value = var.private_dns_a_record
}

