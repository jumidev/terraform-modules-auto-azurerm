

resource "azurerm_web_pubsub_network_acl" "this" {

  ########################################
  # required vars
  ########################################
  web_pubsub_id = var.web_pubsub_id

  public_network {
    allowed_request_types = lookup(public_network.value, "allowed_request_types", null)
    denied_request_types  = lookup(public_network.value, "denied_request_types", null)
  }


  ########################################
  # optional vars
  ########################################
  default_action = var.default_action # Default: Deny

  dynamic "private_endpoint" { # var.private_endpoint
    for_each = var.private_endpoint != null ? var.private_endpoint : []
    content {
      allowed_request_types = lookup(private_endpoint.value, "allowed_request_types", null)
      denied_request_types  = lookup(private_endpoint.value, "denied_request_types", null)
    }
  }

}
