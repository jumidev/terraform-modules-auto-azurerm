

resource "azurerm_cosmosdb_sql_role_assignment" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = var.resource_group_name
  account_name        = var.account_name
  principal_id        = var.principal_id
  role_definition_id  = var.role_definition_id
  scope               = var.scope

  ########################################
  # optional vars
  ########################################
  name = var.name
}
