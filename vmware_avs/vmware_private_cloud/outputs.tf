output "name" {
  value = azurerm_vmware_private_cloud.this.name
}

output "resource_group_name" {
  value = azurerm_vmware_private_cloud.this.resource_group_name
}

output "location" {
  value = azurerm_vmware_private_cloud.this.location
}

output "management_cluster" {
  value = azurerm_vmware_private_cloud.this.management_cluster
}

output "network_subnet_cidr" {
  value = azurerm_vmware_private_cloud.this.network_subnet_cidr
}

output "sku_name" {
  value = azurerm_vmware_private_cloud.this.sku_name
}

output "internet_connection_enabled" {
  value = azurerm_vmware_private_cloud.this.internet_connection_enabled
}

output "nsxt_password" {
  value     = random_string.nsxt_password.result
  sensitive = true
}

output "vcenter_password" {
  value     = random_string.vcenter_password.result
  sensitive = true
}

output "tags" {
  value = azurerm_vmware_private_cloud.this.tags
}

output "id" {
  description = "The ID of the management cluster."
  value       = azurerm_vmware_private_cloud.this.id
}

output "circuit" {
  description = "A 'circuit' block."
  value       = azurerm_vmware_private_cloud.this.circuit
}

output "hcx_cloud_manager_endpoint" {
  description = "The endpoint for the HCX Cloud Manager."
  value       = azurerm_vmware_private_cloud.this.hcx_cloud_manager_endpoint
}

output "nsxt_manager_endpoint" {
  description = "The endpoint for the NSX-T Data Center manager."
  value       = azurerm_vmware_private_cloud.this.nsxt_manager_endpoint
}

output "vcsa_endpoint" {
  description = "The endpoint for Virtual Center Server Appliance."
  value       = azurerm_vmware_private_cloud.this.vcsa_endpoint
}

output "nsxt_certificate_thumbprint" {
  description = "The thumbprint of the NSX-T Manager SSL certificate."
  value       = azurerm_vmware_private_cloud.this.nsxt_certificate_thumbprint
}

output "vcenter_certificate_thumbprint" {
  description = "The thumbprint of the vCenter Server SSL certificate."
  value       = azurerm_vmware_private_cloud.this.vcenter_certificate_thumbprint
}

output "management_subnet_cidr" {
  description = "The network used to access vCenter Server and NSX-T Manager."
  value       = azurerm_vmware_private_cloud.this.management_subnet_cidr
}

output "provisioning_subnet_cidr" {
  description = "The network which is used for virtual machine cold migration, cloning, and snapshot migration."
  value       = azurerm_vmware_private_cloud.this.provisioning_subnet_cidr
}

output "vmotion_subnet_cidr" {
  description = "The network which is used for live migration of virtual machines."
  value       = azurerm_vmware_private_cloud.this.vmotion_subnet_cidr
}

output "express_route_id" {
  description = "The ID of the ExpressRoute Circuit."
  value       = azurerm_vmware_private_cloud.this.express_route_id
}

output "express_route_private_peering_id" {
  description = "The ID of the ExpressRoute Circuit private peering."
  value       = azurerm_vmware_private_cloud.this.express_route_private_peering_id
}

output "primary_subnet_cidr" {
  description = "The CIDR of the primary subnet."
  value       = azurerm_vmware_private_cloud.this.primary_subnet_cidr
}

output "secondary_subnet_cidr" {
  description = "The CIDR of the secondary subnet."
  value       = azurerm_vmware_private_cloud.this.secondary_subnet_cidr
}

output "hosts" {
  description = "A list of hosts in the management cluster."
  value       = azurerm_vmware_private_cloud.this.hosts
}

