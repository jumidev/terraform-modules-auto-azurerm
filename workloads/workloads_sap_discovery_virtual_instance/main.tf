

resource "azurerm_workloads_sap_discovery_virtual_instance" "this" {

  ########################################
  # required vars
  ########################################
  name                              = var.name
  resource_group_name               = var.resource_group_name
  location                          = var.location
  central_server_virtual_machine_id = var.central_server_virtual_machine_id
  environment                       = var.environment
  sap_product                       = var.sap_product

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) 
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  managed_resource_group_name  = var.managed_resource_group_name
  managed_storage_account_name = var.managed_storage_account_name
  tags                         = var.tags
}
