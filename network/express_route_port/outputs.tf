output "name" {
  value = azurerm_express_route_port.this.name
}

output "resource_group_name" {
  value = azurerm_express_route_port.this.resource_group_name
}

output "location" {
  value = azurerm_express_route_port.this.location
}

output "bandwidth_in_gbps" {
  value = azurerm_express_route_port.this.bandwidth_in_gbps
}

output "encapsulation" {
  value = azurerm_express_route_port.this.encapsulation
}

output "peering_location" {
  value = azurerm_express_route_port.this.peering_location
}

output "link1" {
  value = azurerm_express_route_port.this.link1
}

output "link2" {
  value = azurerm_express_route_port.this.link2
}

output "billing_type" {
  value = azurerm_express_route_port.this.billing_type
}

output "identity" {
  value = azurerm_express_route_port.this.identity
}

output "tags" {
  value = azurerm_express_route_port.this.tags
}

output "id" {
  description = "The ID of this Express Route Port Link."
  value       = azurerm_express_route_port.this.id
}

output "identity" {
  description = "A 'identity' block."
  value       = azurerm_express_route_port.this.identity
}

output "link1" {
  description = "A list of 'link' blocks."
  value       = azurerm_express_route_port.this.link1
}

output "link2" {
  description = "A list of 'link' blocks."
  value       = azurerm_express_route_port.this.link2
}

output "guid" {
  description = "The resource GUID of the Express Route Port."
  value       = azurerm_express_route_port.this.guid
}

output "ethertype" {
  description = "The EtherType of the Express Route Port."
  value       = azurerm_express_route_port.this.ethertype
}

output "mtu" {
  description = "The maximum transmission unit of the Express Route Port."
  value       = azurerm_express_route_port.this.mtu
}

output "router_name" {
  description = "The name of the Azure router associated with the Express Route Port Link."
  value       = azurerm_express_route_port.this.router_name
}

output "interface_name" {
  description = "The interface name of the Azure router associated with the Express Route Port Link."
  value       = azurerm_express_route_port.this.interface_name
}

output "patch_panel_id" {
  description = "The ID that maps from the Express Route Port Link to the patch panel port."
  value       = azurerm_express_route_port.this.patch_panel_id
}

output "rack_id" {
  description = "The ID that maps from the patch panel port to the rack."
  value       = azurerm_express_route_port.this.rack_id
}

output "connector_type" {
  description = "The connector type of the Express Route Port Link."
  value       = azurerm_express_route_port.this.connector_type
}

