data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_cosmosdb_account" "this" {
  name                = var.cosmosdb_account_name
  resource_group_name = var.cosmosdb_account_resource_group_name == null ? null : var.cosmosdb_account_resource_group_name
}


resource "azurerm_cosmosdb_sql_role_definition" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = data.azurerm_cosmosdb_account.this.name
  assignable_scopes   = var.assignable_scopes
  name                = var.name

  permissions {
    data_actions = lookup(permissions.value, "data_actions") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  role_definition_id = var.role_definition_id
  type               = var.type # Default: CustomRole
}
