

resource "azurerm_spring_cloud_api_portal" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id

  ########################################
  # optional vars
  ########################################
  gateway_ids                   = var.gateway_ids
  https_only_enabled            = var.https_only_enabled
  instance_count                = var.instance_count # Default: 1
  public_network_access_enabled = var.public_network_access_enabled

  dynamic "sso" { # var.sso
    for_each = var.sso != null ? var.sso : []
    content {
      client_id     = lookup(sso.value, "client_id", null)
      client_secret = lookup(sso.value, "client_secret", null)
      issuer_uri    = lookup(sso.value, "issuer_uri", null)
      scope         = lookup(sso.value, "scope", null)
    }
  }

}
