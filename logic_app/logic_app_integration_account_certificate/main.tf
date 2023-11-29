data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logic_app_integration_account_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.this.name
  integration_account_name = var.integration_account_name

  ########################################
  # optional vars
  ########################################

  dynamic "key_vault_key" { # var.key_vault_key
    for_each = var.key_vault_key != null ? var.key_vault_key : []
    content {
      key_name     = lookup(key_vault_key.value, "key_name")     # (Required) 
      key_vault_id = lookup(key_vault_key.value, "key_vault_id") # (Required) 
      key_version  = lookup(key_vault_key.value, "key_version", null)
    }
  }

  metadata           = var.metadata
  public_certificate = var.public_certificate
}
