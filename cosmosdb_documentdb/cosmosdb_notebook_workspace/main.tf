

resource "azurerm_cosmosdb_notebook_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  account_name        = var.account_name
}
