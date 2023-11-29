output "name" {
  value = azurerm_spring_cloud_service.this.name
}

output "resource_group_name" {
  value = azurerm_spring_cloud_service.this.resource_group_name
}

output "location" {
  value = azurerm_spring_cloud_service.this.location
}

output "container_registry" {
  value = azurerm_spring_cloud_service.this.container_registry
}

output "log_stream_public_endpoint_enabled" {
  value = azurerm_spring_cloud_service.this.log_stream_public_endpoint_enabled
}

output "build_agent_pool_size" {
  value = azurerm_spring_cloud_service.this.build_agent_pool_size
}

output "default_build_service" {
  value = azurerm_spring_cloud_service.this.default_build_service
}

output "sku_name" {
  value = azurerm_spring_cloud_service.this.sku_name
}

output "marketplace" {
  value = azurerm_spring_cloud_service.this.marketplace
}

output "network" {
  value = azurerm_spring_cloud_service.this.network
}

output "config_server_git_setting" {
  value = azurerm_spring_cloud_service.this.config_server_git_setting
}

output "service_registry_enabled" {
  value = azurerm_spring_cloud_service.this.service_registry_enabled
}

output "trace" {
  value = azurerm_spring_cloud_service.this.trace
}

output "tags" {
  value = azurerm_spring_cloud_service.this.tags
}

output "zone_redundant" {
  value = azurerm_spring_cloud_service.this.zone_redundant
}

output "id" {
  description = "The ID of the Spring Cloud Service."
  value       = azurerm_spring_cloud_service.this.id
}

output "service_registry_id" {
  description = "The ID of the Spring Cloud Service Registry."
  value       = azurerm_spring_cloud_service.this.service_registry_id
}

output "outbound_public_ip_addresses" {
  description = "A list of the outbound Public IP Addresses used by this Spring Cloud Service."
  value       = azurerm_spring_cloud_service.this.outbound_public_ip_addresses
}

output "required_network_traffic_rules" {
  description = "A list of 'required_network_traffic_rules' blocks."
  value       = azurerm_spring_cloud_service.this.required_network_traffic_rules
}

output "direction" {
  description = "The direction of required traffic. Possible values are 'Inbound', 'Outbound'."
  value       = azurerm_spring_cloud_service.this.direction
}

output "fqdns" {
  description = "The FQDN list of required traffic."
  value       = azurerm_spring_cloud_service.this.fqdns
}

output "ip_addresses" {
  description = "The IP list of required traffic."
  value       = azurerm_spring_cloud_service.this.ip_addresses
}

output "port" {
  description = "The port of required traffic."
  value       = azurerm_spring_cloud_service.this.port
}

output "protocol" {
  description = "The protocol of required traffic."
  value       = azurerm_spring_cloud_service.this.protocol
}

