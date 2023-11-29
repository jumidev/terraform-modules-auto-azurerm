output "name" {
  value = azurerm_monitor_action_group.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_action_group.this.resource_group_name
}

output "short_name" {
  value = azurerm_monitor_action_group.this.short_name
}

output "enabled" {
  value = azurerm_monitor_action_group.this.enabled
}

output "arm_role_receiver" {
  value = azurerm_monitor_action_group.this.arm_role_receiver
}

output "automation_runbook_receiver" {
  value = azurerm_monitor_action_group.this.automation_runbook_receiver
}

output "azure_app_push_receiver" {
  value = azurerm_monitor_action_group.this.azure_app_push_receiver
}

output "azure_function_receiver" {
  value = azurerm_monitor_action_group.this.azure_function_receiver
}

output "email_receiver" {
  value = azurerm_monitor_action_group.this.email_receiver
}

output "event_hub_receiver" {
  value = azurerm_monitor_action_group.this.event_hub_receiver
}

output "itsm_receiver" {
  value = azurerm_monitor_action_group.this.itsm_receiver
}

output "location" {
  value = azurerm_monitor_action_group.this.location
}

output "logic_app_receiver" {
  value = azurerm_monitor_action_group.this.logic_app_receiver
}

output "sms_receiver" {
  value = azurerm_monitor_action_group.this.sms_receiver
}

output "voice_receiver" {
  value = azurerm_monitor_action_group.this.voice_receiver
}

output "webhook_receiver" {
  value = azurerm_monitor_action_group.this.webhook_receiver
}

output "tags" {
  value = azurerm_monitor_action_group.this.tags
}

output "id" {
  description = "The ID of the Action Group."
  value       = azurerm_monitor_action_group.this.id
}

