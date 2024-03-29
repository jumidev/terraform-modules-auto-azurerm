output "name" {
  value = azurerm_cdn_frontdoor_route.this.name
}

output "cdn_frontdoor_endpoint_id" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_endpoint_id
}

output "cdn_frontdoor_origin_group_id" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_origin_group_id
}

output "cdn_frontdoor_origin_ids" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_origin_ids
}

output "forwarding_protocol" {
  value = azurerm_cdn_frontdoor_route.this.forwarding_protocol
}

output "patterns_to_match" {
  value = azurerm_cdn_frontdoor_route.this.patterns_to_match
}

output "supported_protocols" {
  value = azurerm_cdn_frontdoor_route.this.supported_protocols
}

output "cache" {
  value = azurerm_cdn_frontdoor_route.this.cache
}

output "cdn_frontdoor_custom_domain_ids" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_custom_domain_ids
}

output "cdn_frontdoor_origin_path" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_origin_path
}

output "cdn_frontdoor_rule_set_ids" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_rule_set_ids
}

output "enabled" {
  value = azurerm_cdn_frontdoor_route.this.enabled
}

output "https_redirect_enabled" {
  value = azurerm_cdn_frontdoor_route.this.https_redirect_enabled
}

output "link_to_default_domain" {
  value = azurerm_cdn_frontdoor_route.this.link_to_default_domain
}

output "content_types_to_compress" {
  description = "A list of one or more 'Content types' (formerly known as 'MIME types') to compress. Possible values include 'application/eot', 'application/font', 'application/font-sfnt', 'application/javascript', 'application/json', 'application/opentype', 'application/otf', 'application/pkcs7-mime', 'application/truetype', 'application/ttf', 'application/vnd.ms-fontobject', 'application/xhtml+xml', 'application/xml', 'application/xml+rss', 'application/x-font-opentype', 'application/x-font-truetype', 'application/x-font-ttf', 'application/x-httpd-cgi', 'application/x-mpegurl', 'application/x-opentype', 'application/x-otf', 'application/x-perl', 'application/x-ttf', 'application/x-javascript', 'font/eot', 'font/ttf', 'font/otf', 'font/opentype', 'image/svg+xml', 'text/css', 'text/csv', 'text/html', 'text/javascript', 'text/js', 'text/plain', 'text/richtext', 'text/tab-separated-values', 'text/xml', 'text/x-script', 'text/x-component' or 'text/x-java-source'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_frontdoor_route.this.content_types_to_compress
}

output "id" {
  description = "The ID of the Front Door Route."
  value       = azurerm_cdn_frontdoor_route.this.id
}

output "cdn_frontdoor_custom_domain_id" {
  value = azurerm_cdn_frontdoor_custom_domain_association.this.*.cdn_frontdoor_custom_domain_id
}

output "cdn_frontdoor_route_ids" {
  value = azurerm_cdn_frontdoor_custom_domain_association.this.*.cdn_frontdoor_route_ids
}

output "cdn_frontdoor_route_ids" {
  description = "One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with. -> **NOTE:** This should include all of the Front Door Route resources that the Front Door Custom Domain is associated with. If the list of Front Door Routes is not complete you will receive the service side error 'This resource is still associated with a route. Please delete the association with the route first before deleting this resource' when you attempt to 'destroy'/'delete' your Front Door Custom Domain. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_frontdoor_custom_domain_association.this.*.cdn_frontdoor_route_ids
}

output "id" {
  description = "The ID of the Front Door Custom Domain Association."
  value       = azurerm_cdn_frontdoor_custom_domain_association.this.*.id
}

