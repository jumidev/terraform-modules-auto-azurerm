

resource "azurerm_cosmosdb_mongo_user_definition" "this" {

  ########################################
  # required vars
  ########################################
  cosmos_mongo_database_id = var.cosmos_mongo_database_id
  username                 = var.username
  password                 = var.password

  ########################################
  # optional vars
  ########################################
  inherited_role_names = var.inherited_role_names
}
