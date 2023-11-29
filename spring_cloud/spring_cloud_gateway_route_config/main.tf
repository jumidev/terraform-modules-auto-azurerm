

resource "azurerm_spring_cloud_gateway_route_config" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_gateway_id = var.spring_cloud_gateway_id

  ########################################
  # optional vars
  ########################################
  filters                = var.filters
  predicates             = var.predicates
  sso_validation_enabled = var.sso_validation_enabled

  dynamic "route" { # var.route
    for_each = var.route != null ? var.route : []
    content {
      order                  = lookup(route.value, "order") # (Required) 
      description            = lookup(route.value, "description", null)
      filters                = lookup(route.value, "filters", null)
      predicates             = lookup(route.value, "predicates", null)
      sso_validation_enabled = lookup(route.value, "sso_validation_enabled", null)
      classification_tags    = lookup(route.value, "classification_tags", null)
      title                  = lookup(route.value, "title", null)
      token_relay            = lookup(route.value, "token_relay", null)
      uri                    = lookup(route.value, "uri", null)
    }
  }


  dynamic "open_api" { # var.open_api
    for_each = var.open_api != null ? var.open_api : []
    content {
      uri = lookup(open_api.value, "uri", null)
    }
  }

  protocol            = var.protocol # Default: HTTP
  spring_cloud_app_id = var.spring_cloud_app_id
}
