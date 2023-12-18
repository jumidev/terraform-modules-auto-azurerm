output "name" {
  value = azurerm_spring_cloud_app.this.name
}

output "resource_group_name" {
  value = azurerm_spring_cloud_app.this.resource_group_name
}

output "service_name" {
  value = azurerm_spring_cloud_app.this.service_name
}

output "addon_json" {
  value = azurerm_spring_cloud_app.this.addon_json
}

output "custom_persistent_disk" {
  value = azurerm_spring_cloud_app.this.custom_persistent_disk
}

output "identity" {
  value = azurerm_spring_cloud_app.this.identity
}

output "is_public" {
  value = azurerm_spring_cloud_app.this.is_public
}

output "https_only" {
  value = azurerm_spring_cloud_app.this.https_only
}

output "ingress_settings" {
  value = azurerm_spring_cloud_app.this.ingress_settings
}

output "persistent_disk" {
  value = azurerm_spring_cloud_app.this.persistent_disk
}

output "public_endpoint_enabled" {
  value = azurerm_spring_cloud_app.this.public_endpoint_enabled
}

output "tls_enabled" {
  value = azurerm_spring_cloud_app.this.tls_enabled
}

output "id" {
  description = "The ID of the Spring Cloud Application."
  value       = azurerm_spring_cloud_app.this.id
}

output "fqdn" {
  description = "The Fully Qualified DNS Name of the Spring Application in the service."
  value       = azurerm_spring_cloud_app.this.fqdn
}

output "url" {
  description = "The public endpoint of the Spring Cloud Application."
  value       = azurerm_spring_cloud_app.this.url
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application."
  value       = azurerm_spring_cloud_app.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application."
  value       = azurerm_spring_cloud_app.this.tenant_id
}

output "spring_cloud_app_cosmosdb_association" {
  value = var.spring_cloud_app_cosmosdb_association
}

output "spring_cloud_app_redis_association" {
  value = var.spring_cloud_app_redis_association
}

output "spring_cloud_app_mysql_association" {
  value = var.spring_cloud_app_mysql_association
}

