output "name" {
  value = azurerm_container_group.this.name
}

output "resource_group_name" {
  value = azurerm_container_group.this.resource_group_name
}

output "location" {
  value = azurerm_container_group.this.location
}

output "sku" {
  value = azurerm_container_group.this.sku
}

output "identity" {
  value = azurerm_container_group.this.identity
}

output "init_container" {
  value = azurerm_container_group.this.init_container
}

output "container" {
  value = azurerm_container_group.this.container
}

output "os_type" {
  value = azurerm_container_group.this.os_type
}

output "dns_config" {
  value = azurerm_container_group.this.dns_config
}

output "diagnostics" {
  value = azurerm_container_group.this.diagnostics
}

output "dns_name_label" {
  value = azurerm_container_group.this.dns_name_label
}

output "dns_name_label_reuse_policy" {
  value = azurerm_container_group.this.dns_name_label_reuse_policy
}

output "exposed_port" {
  value = azurerm_container_group.this.exposed_port
}

output "ip_address_type" {
  value = azurerm_container_group.this.ip_address_type
}

output "key_vault_key_id" {
  value = azurerm_container_group.this.key_vault_key_id
}

output "key_vault_user_assigned_identity_id" {
  value = azurerm_container_group.this.key_vault_user_assigned_identity_id
}

output "subnet_ids" {
  value = azurerm_container_group.this.subnet_ids
}

output "image_registry_credential" {
  value = azurerm_container_group.this.image_registry_credential
}

output "priority" {
  value = azurerm_container_group.this.priority
}

output "restart_policy" {
  value = azurerm_container_group.this.restart_policy
}

output "zones" {
  value = azurerm_container_group.this.zones
}

output "tags" {
  value = azurerm_container_group.this.tags
}

output "privilege_enabled" {
  description = "Whether the container's permission is elevated to privileged? Changing this forces a new resource to be created. ~> **NOTE:** Currently, this only applies when the 'os_type' is 'Linux' and the 'sku' is 'Confidential'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_group.this.privilege_enabled
}

output "id" {
  description = "The ID of the Container Group."
  value       = azurerm_container_group.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_container_group.this.identity
}

output "ip_address" {
  description = "The IP address allocated to the container group."
  value       = azurerm_container_group.this.ip_address
}

output "fqdn" {
  description = "The FQDN of the container group derived from 'dns_name_label'."
  value       = azurerm_container_group.this.fqdn
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_container_group.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_container_group.this.tenant_id
}

