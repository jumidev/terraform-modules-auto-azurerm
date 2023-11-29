output "name" {
  value = azurerm_batch_pool.this.name
}

output "resource_group_name" {
  value = azurerm_batch_pool.this.resource_group_name
}

output "account_name" {
  value = azurerm_batch_pool.this.account_name
}

output "node_agent_sku_id" {
  value = azurerm_batch_pool.this.node_agent_sku_id
}

output "stop_pending_resize_operation" {
  value = azurerm_batch_pool.this.stop_pending_resize_operation
}

output "vm_size" {
  value = azurerm_batch_pool.this.vm_size
}

output "storage_image_reference" {
  value = azurerm_batch_pool.this.storage_image_reference
}

output "data_disks" {
  value = azurerm_batch_pool.this.data_disks
}

output "display_name" {
  value = azurerm_batch_pool.this.display_name
}

output "disk_encryption" {
  value = azurerm_batch_pool.this.disk_encryption
}

output "extensions" {
  value = azurerm_batch_pool.this.extensions
}

output "inter_node_communication" {
  value = azurerm_batch_pool.this.inter_node_communication
}

output "identity" {
  value = azurerm_batch_pool.this.identity
}

output "license_type" {
  value = azurerm_batch_pool.this.license_type
}

output "max_tasks_per_node" {
  value = azurerm_batch_pool.this.max_tasks_per_node
}

output "fixed_scale" {
  value = azurerm_batch_pool.this.fixed_scale
}

output "auto_scale" {
  value = azurerm_batch_pool.this.auto_scale
}

output "start_task" {
  value = azurerm_batch_pool.this.start_task
}

output "certificate" {
  value = azurerm_batch_pool.this.certificate
}

output "container_configuration" {
  value = azurerm_batch_pool.this.container_configuration
}

output "metadata" {
  value = azurerm_batch_pool.this.metadata
}

output "mount" {
  value = azurerm_batch_pool.this.mount
}

output "network_configuration" {
  value = azurerm_batch_pool.this.network_configuration
}

output "node_placement" {
  value = azurerm_batch_pool.this.node_placement
}

output "os_disk_placement" {
  value = azurerm_batch_pool.this.os_disk_placement
}

output "target_node_communication_mode" {
  value = azurerm_batch_pool.this.target_node_communication_mode
}

output "task_scheduling_policy" {
  value = azurerm_batch_pool.this.task_scheduling_policy
}

output "user_accounts" {
  value = azurerm_batch_pool.this.user_accounts
}

output "windows" {
  value = azurerm_batch_pool.this.windows
}

output "id" {
  description = "The ID of the Batch Pool."
  value       = azurerm_batch_pool.this.id
}

