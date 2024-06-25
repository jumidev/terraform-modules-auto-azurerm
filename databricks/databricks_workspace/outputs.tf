output "name" {
  value = azurerm_databricks_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_databricks_workspace.this.resource_group_name
}

output "location" {
  value = azurerm_databricks_workspace.this.location
}

output "load_balancer_backend_address_pool_id" {
  value = azurerm_databricks_workspace.this.load_balancer_backend_address_pool_id
}

output "sku" {
  value = azurerm_databricks_workspace.this.sku
}

output "managed_services_cmk_key_vault_id" {
  value = azurerm_databricks_workspace.this.managed_services_cmk_key_vault_id
}

output "managed_disk_cmk_key_vault_id" {
  value = azurerm_databricks_workspace.this.managed_disk_cmk_key_vault_id
}

output "managed_services_cmk_key_vault_key_id" {
  value = azurerm_databricks_workspace.this.managed_services_cmk_key_vault_key_id
}

output "managed_disk_cmk_key_vault_key_id" {
  value = azurerm_databricks_workspace.this.managed_disk_cmk_key_vault_key_id
}

output "managed_disk_cmk_rotation_to_latest_version_enabled" {
  value = azurerm_databricks_workspace.this.managed_disk_cmk_rotation_to_latest_version_enabled
}

output "managed_resource_group_name" {
  value = azurerm_databricks_workspace.this.managed_resource_group_name
}

output "customer_managed_key_enabled" {
  value = azurerm_databricks_workspace.this.customer_managed_key_enabled
}

output "infrastructure_encryption_enabled" {
  value = azurerm_databricks_workspace.this.infrastructure_encryption_enabled
}

output "public_network_access_enabled" {
  value = azurerm_databricks_workspace.this.public_network_access_enabled
}

output "default_storage_firewall_enabled" {
  value = azurerm_databricks_workspace.this.default_storage_firewall_enabled
}

output "access_connector_id" {
  value = azurerm_databricks_workspace.this.access_connector_id
}

output "network_security_group_rules_required" {
  value = azurerm_databricks_workspace.this.network_security_group_rules_required
}

output "custom_parameters" {
  value = azurerm_databricks_workspace.this.custom_parameters
}

output "tags" {
  value = azurerm_databricks_workspace.this.tags
}

output "vnet_address_prefix" {
  description = "Address prefix for Managed virtual network. Defaults to '10.139'. Changing this forces a new resource to be created. ~> **Note:** Databricks requires that a network security group is associated with the 'public' and 'private' subnets when a 'virtual_network_id' has been defined. Both 'public' and 'private' subnets must be delegated to 'Microsoft.Databricks/workspaces'. For more information about subnet delegation see the [product documentation](https://docs.microsoft.com/azure/virtual-network/subnet-delegation-overview). ## Example HCL Configurations * [Databricks Workspace Secure Connectivity Cluster with Load Balancer](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/secure-connectivity-cluster/with-load-balancer) * [Databricks Workspace Secure Connectivity Cluster without Load Balancer](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/secure-connectivity-cluster/without-load-balancer) * [Databricks Workspace with Private Endpoint](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/private-endpoint/databricks/private-endpoint) * [Databricks Workspace with Private Endpoint, Customer Managed Keys for Managed Services and Databricks File System Customer Managed Keys](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/private-endpoint/databricks/managed-services) * [Databricks Workspace with Root Databricks File System Customer Managed Keys](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/dbfs) * [Databricks Workspace with Root Databricks File System Customer Managed Keys in a Different Subscription](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/dbfs-cross-subscription) * [Databricks Workspace with Customer Managed Keys for Managed Services](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/managed-services) * [Databricks Workspace with Customer Managed Keys for Managed Services with Key Vault and Key in a Different Subscription](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/managed-services-cross-subscription) In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_databricks_workspace.this.vnet_address_prefix
}

output "id" {
  description = "The ID of the Databricks Workspace in the Azure management plane."
  value       = azurerm_databricks_workspace.this.id
}

output "disk_encryption_set_id" {
  description = "The ID of Managed Disk Encryption Set created by the Databricks Workspace."
  value       = azurerm_databricks_workspace.this.disk_encryption_set_id
}

output "managed_disk_identity" {
  description = "A 'managed_disk_identity' block."
  value       = azurerm_databricks_workspace.this.managed_disk_identity
}

output "managed_resource_group_id" {
  description = "The ID of the Managed Resource Group created by the Databricks Workspace."
  value       = azurerm_databricks_workspace.this.managed_resource_group_id
}

output "workspace_url" {
  description = "The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'"
  value       = azurerm_databricks_workspace.this.workspace_url
}

output "workspace_id" {
  description = "The unique identifier of the databricks workspace in Databricks control plane."
  value       = azurerm_databricks_workspace.this.workspace_id
}

output "storage_account_identity" {
  description = "A 'storage_account_identity' block."
  value       = azurerm_databricks_workspace.this.storage_account_identity
}

output "principal_id" {
  description = "The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys."
  value       = azurerm_databricks_workspace.this.principal_id
}

output "tenant_id" {
  description = "The UUID of the tenant where the internal databricks storage account was created."
  value       = azurerm_databricks_workspace.this.tenant_id
}

output "type" {
  description = "The type of the internal databricks storage account."
  value       = azurerm_databricks_workspace.this.type
}

