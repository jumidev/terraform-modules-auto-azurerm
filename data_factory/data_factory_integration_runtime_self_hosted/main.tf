

resource "azurerm_data_factory_integration_runtime_self_hosted" "this" {

  ########################################
  # required vars
  ########################################
  data_factory_id = var.data_factory_id
  name            = var.name

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "rbac_authorization" { # var.rbac_authorization
    for_each = var.rbac_authorization != null ? var.rbac_authorization : []
    content {
      resource_id = lookup(rbac_authorization.value, "resource_id") # (Required) 
    }
  }

}
