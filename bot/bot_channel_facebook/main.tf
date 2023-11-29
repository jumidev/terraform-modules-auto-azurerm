data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_facebook" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name         = data.azurerm_resource_group.this.name
  location                    = var.location
  bot_name                    = var.bot_name
  facebook_application_id     = var.facebook_application_id
  facebook_application_secret = var.facebook_application_secret

  dynamic "page" { # var.page
    for_each = var.page != null ? var.page : []
    content {
      access_token = lookup(page.value, "access_token") # (Required) 
    }
  }

}
