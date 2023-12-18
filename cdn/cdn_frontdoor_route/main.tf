

resource "azurerm_cdn_frontdoor_route" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  cdn_frontdoor_endpoint_id     = var.cdn_frontdoor_endpoint_id
  cdn_frontdoor_origin_group_id = var.cdn_frontdoor_origin_group_id
  cdn_frontdoor_origin_ids      = var.cdn_frontdoor_origin_ids
  patterns_to_match             = var.patterns_to_match
  supported_protocols           = var.supported_protocols

  ########################################
  # optional vars
  ########################################
  forwarding_protocol = var.forwarding_protocol # Default: MatchRequest

  dynamic "cache" { # var.cache
    for_each = var.cache != null ? var.cache : []
    content {
      query_string_caching_behavior = lookup(cache.value, "query_string_caching_behavior", "IgnoreQueryString")
      query_strings                 = lookup(cache.value, "query_strings", null)
      compression_enabled           = lookup(cache.value, "compression_enabled", false)
      content_types_to_compress     = lookup(cache.value, "content_types_to_compress", null)
    }
  }

  cdn_frontdoor_custom_domain_ids = var.cdn_frontdoor_custom_domain_ids
  cdn_frontdoor_origin_path       = var.cdn_frontdoor_origin_path
  cdn_frontdoor_rule_set_ids      = var.cdn_frontdoor_rule_set_ids
  enabled                         = var.enabled                # Default: True
  https_redirect_enabled          = var.https_redirect_enabled # Default: True
  link_to_default_domain          = var.link_to_default_domain # Default: True
}

##############################################################################################
# optional azurerm_cdn_frontdoor_custom_domain_association 
##############################################################################################
resource "azurerm_cdn_frontdoor_custom_domain_association" "this" {
  count                          = var.cdn_frontdoor_custom_domain_id != null ? 1 : 0
  cdn_frontdoor_custom_domain_id = var.cdn_frontdoor_custom_domain_id
  cdn_frontdoor_route_ids        = azurerm_cdn_frontdoor_route.this.id
}
