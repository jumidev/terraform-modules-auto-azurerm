data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_connection_type" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name

  dynamic "field" { # var.field
    for_each = var.field != null ? var.field : []
    content {
      name         = field.key
      type         = lookup(field.value, "type") # (Required) 
      is_encrypted = lookup(field.value, "is_encrypted", null)
      is_optional  = lookup(field.value, "is_optional", null)
    }
  }


  ########################################
  # optional vars
  ########################################
  is_global = var.is_global
}
