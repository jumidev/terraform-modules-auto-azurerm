output "name" {
  value = azurerm_application_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_application_gateway.this.resource_group_name
}

output "location" {
  value = azurerm_application_gateway.this.location
}

output "backend_address_pool" {
  value = azurerm_application_gateway.this.backend_address_pool
}

output "backend_http_settings" {
  value = azurerm_application_gateway.this.backend_http_settings
}

output "frontend_ip_configuration" {
  value = azurerm_application_gateway.this.frontend_ip_configuration
}

output "frontend_port" {
  value = azurerm_application_gateway.this.frontend_port
}

output "gateway_ip_configuration" {
  value = azurerm_application_gateway.this.gateway_ip_configuration
}

output "http_listener" {
  value = azurerm_application_gateway.this.http_listener
}

output "request_routing_rule" {
  value = azurerm_application_gateway.this.request_routing_rule
}

output "sku" {
  value = azurerm_application_gateway.this.sku
}

output "fips_enabled" {
  value = azurerm_application_gateway.this.fips_enabled
}

output "global" {
  value = azurerm_application_gateway.this.global
}

output "identity" {
  value = azurerm_application_gateway.this.identity
}

output "private_link_configuration" {
  value = azurerm_application_gateway.this.private_link_configuration
}

output "zones" {
  value = azurerm_application_gateway.this.zones
}

output "trusted_client_certificate" {
  value = azurerm_application_gateway.this.trusted_client_certificate
}

output "ssl_profile" {
  value = azurerm_application_gateway.this.ssl_profile
}

output "authentication_certificate" {
  value = azurerm_application_gateway.this.authentication_certificate
}

output "trusted_root_certificate" {
  value = azurerm_application_gateway.this.trusted_root_certificate
}

output "ssl_policy" {
  value = azurerm_application_gateway.this.ssl_policy
}

output "enable_http2" {
  value = azurerm_application_gateway.this.enable_http2
}

output "force_firewall_policy_association" {
  value = azurerm_application_gateway.this.force_firewall_policy_association
}

output "probe" {
  value = azurerm_application_gateway.this.probe
}

output "ssl_certificate" {
  value = azurerm_application_gateway.this.ssl_certificate
}

output "tags" {
  value = azurerm_application_gateway.this.tags
}

output "url_path_map" {
  value = azurerm_application_gateway.this.url_path_map
}

output "waf_configuration" {
  value = azurerm_application_gateway.this.waf_configuration
}

output "custom_error_configuration" {
  value = azurerm_application_gateway.this.custom_error_configuration
}

output "firewall_policy_id" {
  value = azurerm_application_gateway.this.firewall_policy_id
}

output "redirect_configuration" {
  value = azurerm_application_gateway.this.redirect_configuration
}

output "autoscale_configuration" {
  value = azurerm_application_gateway.this.autoscale_configuration
}

output "rewrite_rule_set" {
  value = azurerm_application_gateway.this.rewrite_rule_set
}

output "reroute" {
  description = "Whether the URL path map should be reevaluated after this rewrite has been applied. [More info on rewrite configuration](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers-url#rewrite-configuration) In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_application_gateway.this.reroute
}

output "id" {
  description = "The ID of the Rewrite Rule Set"
  value       = azurerm_application_gateway.this.id
}

output "authentication_certificate" {
  description = "A list of 'authentication_certificate' blocks."
  value       = azurerm_application_gateway.this.authentication_certificate
}

output "backend_address_pool" {
  description = "A list of 'backend_address_pool' blocks."
  value       = azurerm_application_gateway.this.backend_address_pool
}

output "backend_http_settings" {
  description = "A list of 'backend_http_settings' blocks."
  value       = azurerm_application_gateway.this.backend_http_settings
}

output "frontend_ip_configuration" {
  description = "A list of 'frontend_ip_configuration' blocks."
  value       = azurerm_application_gateway.this.frontend_ip_configuration
}

output "frontend_port" {
  description = "A list of 'frontend_port' blocks."
  value       = azurerm_application_gateway.this.frontend_port
}

output "gateway_ip_configuration" {
  description = "A list of 'gateway_ip_configuration' blocks."
  value       = azurerm_application_gateway.this.gateway_ip_configuration
}

output "http_listener" {
  description = "A list of 'http_listener' blocks."
  value       = azurerm_application_gateway.this.http_listener
}

output "private_endpoint_connection" {
  description = "A list of 'private_endpoint_connection' blocks."
  value       = azurerm_application_gateway.this.private_endpoint_connection
}

output "private_link_configuration" {
  description = "A list of 'private_link_configuration' blocks."
  value       = azurerm_application_gateway.this.private_link_configuration
}

output "probe" {
  description = "A 'probe' block."
  value       = azurerm_application_gateway.this.probe
}

output "request_routing_rule" {
  description = "A list of 'request_routing_rule' blocks."
  value       = azurerm_application_gateway.this.request_routing_rule
}

output "ssl_certificate" {
  description = "A list of 'ssl_certificate' blocks."
  value       = azurerm_application_gateway.this.ssl_certificate
}

output "url_path_map" {
  description = "A list of 'url_path_map' blocks."
  value       = azurerm_application_gateway.this.url_path_map
}

output "custom_error_configuration" {
  description = "A list of 'custom_error_configuration' blocks."
  value       = azurerm_application_gateway.this.custom_error_configuration
}

output "redirect_configuration" {
  description = "A list of 'redirect_configuration' blocks."
  value       = azurerm_application_gateway.this.redirect_configuration
}

output "probe_id" {
  description = "The ID of the associated Probe."
  value       = azurerm_application_gateway.this.probe_id
}

output "private_link_configuration_id" {
  description = "The ID of the associated private link configuration."
  value       = azurerm_application_gateway.this.private_link_configuration_id
}

output "frontend_ip_configuration_id" {
  description = "The ID of the associated Frontend Configuration."
  value       = azurerm_application_gateway.this.frontend_ip_configuration_id
}

output "frontend_port_id" {
  description = "The ID of the associated Frontend Port."
  value       = azurerm_application_gateway.this.frontend_port_id
}

output "ssl_certificate_id" {
  description = "The ID of the associated SSL Certificate."
  value       = azurerm_application_gateway.this.ssl_certificate_id
}

output "ssl_profile_id" {
  description = "The ID of the associated SSL Profile."
  value       = azurerm_application_gateway.this.ssl_profile_id
}

output "backend_address_pool_id" {
  description = "The ID of the associated Backend Address Pool."
  value       = azurerm_application_gateway.this.backend_address_pool_id
}

output "backend_http_settings_id" {
  description = "The ID of the associated Backend HTTP Settings Configuration."
  value       = azurerm_application_gateway.this.backend_http_settings_id
}

output "redirect_configuration_id" {
  description = "The ID of the associated Redirect Configuration."
  value       = azurerm_application_gateway.this.redirect_configuration_id
}

output "rewrite_rule_set_id" {
  description = "The ID of the associated Rewrite Rule Set."
  value       = azurerm_application_gateway.this.rewrite_rule_set_id
}

output "name" {
  description = "The name of the private endpoint connection."
  value       = azurerm_application_gateway.this.name
}

output "http_listener_id" {
  description = "The ID of the associated HTTP Listener."
  value       = azurerm_application_gateway.this.http_listener_id
}

output "url_path_map_id" {
  description = "The ID of the associated URL Path Map."
  value       = azurerm_application_gateway.this.url_path_map_id
}

output "public_cert_data" {
  description = "The Public Certificate Data associated with the SSL Certificate."
  value       = azurerm_application_gateway.this.public_cert_data
}

output "default_backend_address_pool_id" {
  description = "The ID of the Default Backend Address Pool."
  value       = azurerm_application_gateway.this.default_backend_address_pool_id
}

output "default_backend_http_settings_id" {
  description = "The ID of the Default Backend HTTP Settings Collection."
  value       = azurerm_application_gateway.this.default_backend_http_settings_id
}

output "default_redirect_configuration_id" {
  description = "The ID of the Default Redirect Configuration."
  value       = azurerm_application_gateway.this.default_redirect_configuration_id
}

output "path_rule" {
  description = "A list of 'path_rule' blocks."
  value       = azurerm_application_gateway.this.path_rule
}

