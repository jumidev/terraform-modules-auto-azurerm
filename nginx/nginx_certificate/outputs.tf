output "name" {
  value = azurerm_nginx_certificate.this.name
}

output "nginx_deployment_id" {
  value = azurerm_nginx_certificate.this.nginx_deployment_id
}

output "certificate_virtual_path" {
  value = azurerm_nginx_certificate.this.certificate_virtual_path
}

output "key_virtual_path" {
  value = azurerm_nginx_certificate.this.key_virtual_path
}

output "key_vault_secret_id" {
  value = azurerm_nginx_certificate.this.key_vault_secret_id
}

output "id" {
  description = "The ID of this Nginx Certificate."
  value       = azurerm_nginx_certificate.this.id
}

