output "auto_provision" {
  value = azurerm_security_center_auto_provisioning.this.auto_provision
}

output "id" {
  description = "The ID of the Security Center Auto Provisioning."
  value       = azurerm_security_center_auto_provisioning.this.id
}

