data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}


resource "azurerm_api_management_named_value" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  api_management_name = data.azurerm_api_management.this.name
  display_name        = var.display_name

  ########################################
  # optional vars
  ########################################
  value = var.value

  dynamic "value_from_key_vault" { # var.value_from_key_vault
    for_each = var.value_from_key_vault != null ? var.value_from_key_vault : []
    content {
      secret_id          = lookup(value_from_key_vault.value, "secret_id") # (Required) 
      identity_client_id = lookup(value_from_key_vault.value, "identity_client_id", null)
    }
  }

  secret = var.secret # Default: False
  tags   = var.tags
}
