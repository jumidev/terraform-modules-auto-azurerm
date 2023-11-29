data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_web_chat" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bot_name            = var.bot_name

  ########################################
  # optional vars
  ########################################
  site_names = var.site_names

  dynamic "site" { # var.site
    for_each = var.site != null ? var.site : []
    content {
      name                        = site.key
      user_upload_enabled         = lookup(site.value, "user_upload_enabled", true)
      endpoint_parameters_enabled = lookup(site.value, "endpoint_parameters_enabled", null)
      storage_enabled             = lookup(site.value, "storage_enabled", true)
    }
  }

}
