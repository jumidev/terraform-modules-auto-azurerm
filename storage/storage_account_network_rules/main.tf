

resource "azurerm_storage_account_network_rules" "this" {

  ########################################
  # required vars
  ########################################
  storage_account_id = var.storage_account_id
  default_action     = var.default_action

  ########################################
  # optional vars
  ########################################
  bypass                     = var.bypass
  ip_rules                   = var.ip_rules
  virtual_network_subnet_ids = var.virtual_network_subnet_ids

  dynamic "private_link_access" { # var.private_link_accesss
    for_each = var.private_link_accesss != null ? var.private_link_accesss : []
    content {
      endpoint_resource_id = lookup(private_link_access.value, "endpoint_resource_id") # (Required) 
      endpoint_tenant_id   = lookup(private_link_access.value, "endpoint_tenant_id", null)
    }
  }

}
