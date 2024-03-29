output "name" {
  value = azurerm_cdn_frontdoor_origin_group.this.name
}

output "cdn_frontdoor_profile_id" {
  value = azurerm_cdn_frontdoor_origin_group.this.cdn_frontdoor_profile_id
}

output "load_balancing" {
  value = azurerm_cdn_frontdoor_origin_group.this.load_balancing
}

output "health_probe" {
  value = azurerm_cdn_frontdoor_origin_group.this.health_probe
}

output "restore_traffic_time_to_healed_or_new_endpoint_in_minutes" {
  value = azurerm_cdn_frontdoor_origin_group.this.restore_traffic_time_to_healed_or_new_endpoint_in_minutes
}

output "session_affinity_enabled" {
  value = azurerm_cdn_frontdoor_origin_group.this.session_affinity_enabled
}

output "successful_samples_required" {
  description = "Specifies the number of samples within the sample period that must succeed. Possible values are between '0' and '255' (inclusive). Defaults to '3'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_frontdoor_origin_group.this.successful_samples_required
}

output "id" {
  description = "The ID of the Front Door Origin Group."
  value       = azurerm_cdn_frontdoor_origin_group.this.id
}

