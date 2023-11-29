data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channel_line" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  bot_name            = var.bot_name

  dynamic "line_channel" { # var.line_channel
    for_each = var.line_channel != null ? var.line_channel : []
    content {
      access_token = lookup(line_channel.value, "access_token") # (Required) 
      secret       = lookup(line_channel.value, "secret")       # (Required) 
    }
  }

}
