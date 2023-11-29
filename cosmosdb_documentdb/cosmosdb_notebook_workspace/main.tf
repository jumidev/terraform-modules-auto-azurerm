data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_cosmosdb_notebook_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = var.account_name
}
