output "name" {
  value = azurerm_frontdoor.this.name
}

output "resource_group_name" {
  value = azurerm_frontdoor.this.resource_group_name
}

output "backend_pool" {
  value = azurerm_frontdoor.this.backend_pool
}

output "backend_pool_health_probe" {
  value = azurerm_frontdoor.this.backend_pool_health_probe
}

output "backend_pool_load_balancing" {
  value = azurerm_frontdoor.this.backend_pool_load_balancing
}

output "load_balancer_enabled" {
  value = azurerm_frontdoor.this.load_balancer_enabled
}

output "friendly_name" {
  value = azurerm_frontdoor.this.friendly_name
}

output "backend_pool_settings" {
  value = azurerm_frontdoor.this.backend_pool_settings
}

output "frontend_endpoint" {
  value = azurerm_frontdoor.this.frontend_endpoint
}

output "routing_rule" {
  value = azurerm_frontdoor.this.routing_rule
}

output "tags" {
  value = azurerm_frontdoor.this.tags
}

output "backend_pool_health_probes" {
  description = "A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value)"
  value       = azurerm_frontdoor.this.backend_pool_health_probes
}

output "backend_pool_load_balancing_settings" {
  description = "A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value)"
  value       = azurerm_frontdoor.this.backend_pool_load_balancing_settings
}

output "backend_pools" {
  description = "A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value)"
  value       = azurerm_frontdoor.this.backend_pools
}

output "frontend_endpoints" {
  description = "A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value)"
  value       = azurerm_frontdoor.this.frontend_endpoints
}

output "routing_rules" {
  description = "A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value)"
  value       = azurerm_frontdoor.this.routing_rules
}

output "id" {
  description = "The ID of the FrontDoor."
  value       = azurerm_frontdoor.this.id
}

output "cname" {
  description = "The host that each frontendEndpoint must CNAME to."
  value       = azurerm_frontdoor.this.cname
}

output "header_frontdoor_id" {
  description = "The unique ID of the Front Door which is embedded into the incoming headers 'X-Azure-FDID' attribute and maybe used to filter traffic sent by the Front Door to your backend."
  value       = azurerm_frontdoor.this.header_frontdoor_id
}

