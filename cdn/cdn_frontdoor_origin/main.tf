

resource "azurerm_cdn_frontdoor_origin" "this" {

  ########################################
  # required vars
  ########################################
  name                           = var.name
  cdn_frontdoor_origin_group_id  = var.cdn_frontdoor_origin_group_id
  host_name                      = var.host_name
  certificate_name_check_enabled = var.certificate_name_check_enabled

  ########################################
  # optional vars
  ########################################
  enabled            = var.enabled    # Default: True
  http_port          = var.http_port  # Default: 80
  https_port         = var.https_port # Default: 443
  origin_host_header = var.origin_host_header
  priority           = var.priority # Default: 1

  dynamic "private_link" { # var.private_link
    for_each = var.private_link != null ? var.private_link : []
    content {
      request_message        = lookup(private_link.value, "request_message", "Access request for CDN FrontDoor Private Link Origin")
      target_type            = lookup(private_link.value, "target_type", null)
      location               = lookup(private_link.value, "location")               # (Required) 
      private_link_target_id = lookup(private_link.value, "private_link_target_id") # (Required) 
    }
  }

  weight = var.weight # Default: 500
}
