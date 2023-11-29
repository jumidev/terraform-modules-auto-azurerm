data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_directline" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bot_name            = var.bot_name

  dynamic "site" { # var.site
    for_each = var.site != null ? var.site : []
    content {
      name                            = site.key
      user_upload_enabled             = lookup(site.value, "user_upload_enabled", true)
      enabled                         = lookup(site.value, "enabled", true)
      endpoint_parameters_enabled     = lookup(site.value, "endpoint_parameters_enabled", null)
      storage_enabled                 = lookup(site.value, "storage_enabled", true)
      v1_allowed                      = lookup(site.value, "v1_allowed", true)
      v3_allowed                      = lookup(site.value, "v3_allowed", true)
      enhanced_authentication_enabled = lookup(site.value, "enhanced_authentication_enabled", null)
      trusted_origins                 = lookup(site.value, "trusted_origins", null)
    }
  }

}
