output "name" {
  value = azurerm_nat_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_nat_gateway.this.resource_group_name
}

output "location" {
  value = azurerm_nat_gateway.this.location
}

output "idle_timeout_in_minutes" {
  value = azurerm_nat_gateway.this.idle_timeout_in_minutes
}

output "sku_name" {
  value = azurerm_nat_gateway.this.sku_name
}

output "tags" {
  value = azurerm_nat_gateway.this.tags
}

output "zones" {
  value = azurerm_nat_gateway.this.zones
}

output "zones" {
  description = "A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created. -> **NOTE:** Only one Availability Zone can be defined. For more information, please check out the [Azure documentation](https://learn.microsoft.com/en-us/azure/nat-gateway/nat-overview#availability-zones) In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_nat_gateway.this.zones
}

output "id" {
  description = "The ID of the NAT Gateway."
  value       = azurerm_nat_gateway.this.id
}

output "resource_guid" {
  description = "The resource GUID property of the NAT Gateway."
  value       = azurerm_nat_gateway.this.resource_guid
}

output "nat_gateway_id" {
  value = azurerm_nat_gateway_public_ip_association.this.*.nat_gateway_id
}

output "public_ip_address_id" {
  value = azurerm_nat_gateway_public_ip_association.this.*.public_ip_address_id
}

output "public_ip_address_id" {
  description = "The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_nat_gateway_public_ip_association.this.*.public_ip_address_id
}

output "id" {
  description = "The (Terraform specific) ID of the Association between the NAT Gateway and the Public IP."
  value       = azurerm_nat_gateway_public_ip_association.this.*.id
}

output "nat_gateway_id" {
  value = azurerm_subnet_nat_gateway_association.this.*.nat_gateway_id
}

output "subnet_id" {
  value = azurerm_subnet_nat_gateway_association.this.*.subnet_id
}

output "subnet_id" {
  description = "The ID of the Subnet. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_subnet_nat_gateway_association.this.*.subnet_id
}

output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet_nat_gateway_association.this.*.id
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

