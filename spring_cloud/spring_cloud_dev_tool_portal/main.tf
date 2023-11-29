

resource "azurerm_spring_cloud_dev_tool_portal" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id

  ########################################
  # optional vars
  ########################################
  application_accelerator_enabled = var.application_accelerator_enabled
  application_live_view_enabled   = var.application_live_view_enabled
  public_network_access_enabled   = var.public_network_access_enabled

  dynamic "sso" { # var.sso
    for_each = var.sso != null ? var.sso : []
    content {
      client_id     = lookup(sso.value, "client_id", null)
      client_secret = lookup(sso.value, "client_secret", null)
      metadata_url  = lookup(sso.value, "metadata_url", null)
      scope         = lookup(sso.value, "scope", null)
    }
  }

}
