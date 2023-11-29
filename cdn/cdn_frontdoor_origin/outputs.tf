output "name" {
  value = azurerm_cdn_frontdoor_origin.this.name
}

output "cdn_frontdoor_origin_group_id" {
  value = azurerm_cdn_frontdoor_origin.this.cdn_frontdoor_origin_group_id
}

output "host_name" {
  value = azurerm_cdn_frontdoor_origin.this.host_name
}

output "certificate_name_check_enabled" {
  value = azurerm_cdn_frontdoor_origin.this.certificate_name_check_enabled
}

output "enabled" {
  value = azurerm_cdn_frontdoor_origin.this.enabled
}

output "http_port" {
  value = azurerm_cdn_frontdoor_origin.this.http_port
}

output "https_port" {
  value = azurerm_cdn_frontdoor_origin.this.https_port
}

output "origin_host_header" {
  value = azurerm_cdn_frontdoor_origin.this.origin_host_header
}

output "priority" {
  value = azurerm_cdn_frontdoor_origin.this.priority
}

output "private_link" {
  value = azurerm_cdn_frontdoor_origin.this.private_link
}

output "weight" {
  value = azurerm_cdn_frontdoor_origin.this.weight
}

output "id" {
  description = "The ID of the Front Door Origin."
  value       = azurerm_cdn_frontdoor_origin.this.id
}

