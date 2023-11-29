

resource "azurerm_cosmosdb_mongo_role_definition" "this" {

  ########################################
  # required vars
  ########################################
  cosmos_mongo_database_id = var.cosmos_mongo_database_id
  role_name                = var.role_name

  ########################################
  # optional vars
  ########################################
  inherited_role_names = var.inherited_role_names

  dynamic "privilege" { # var.privilege
    for_each = var.privilege != null ? var.privilege : []
    content {
      actions = lookup(privilege.value, "actions") # (Required) 

      dynamic "resource" { # privilege.value.resource
        for_each = privilege.value.resource != null ? privilege.value.resource : []
        content {
          collection_name = lookup(resource.value, "collection_name", null)
          db_name         = lookup(resource.value, "db_name", null)
        }
      }

    }
  }

}
