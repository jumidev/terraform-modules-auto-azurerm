output "domain_service_id" {
  value = azurerm_active_directory_domain_service_replica_set.this.domain_service_id
}

output "location" {
  value = azurerm_active_directory_domain_service_replica_set.this.location
}

output "subnet_id" {
  value = azurerm_active_directory_domain_service_replica_set.this.subnet_id
}

output "subnet_id" {
  description = "The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_active_directory_domain_service_replica_set.this.subnet_id
}

output "id" {
  description = "The ID of the Domain Service Replica Set."
  value       = azurerm_active_directory_domain_service_replica_set.this.id
}

output "domain_controller_ip_addresses" {
  description = "A list of subnet IP addresses for the domain controllers in this Replica Set, typically two."
  value       = azurerm_active_directory_domain_service_replica_set.this.domain_controller_ip_addresses
}

output "external_access_ip_address" {
  description = "The publicly routable IP address for the domain controllers in this Replica Set."
  value       = azurerm_active_directory_domain_service_replica_set.this.external_access_ip_address
}

output "service_status" {
  description = "The current service status for the replica set."
  value       = azurerm_active_directory_domain_service_replica_set.this.service_status
}

