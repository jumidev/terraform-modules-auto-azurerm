

resource "azurerm_sql_failover_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  partner_servers     = var.partner_servers

  read_write_endpoint_failover_policy {
    mode          = lookup(read_write_endpoint_failover_policy.value, "mode") # (Required) 
    grace_minutes = lookup(read_write_endpoint_failover_policy.value, "grace_minutes", null)
  }


  ########################################
  # optional vars
  ########################################
  databases = var.databases

  dynamic "readonly_endpoint_failover_policy" { # var.readonly_endpoint_failover_policy
    for_each = var.readonly_endpoint_failover_policy != null ? var.readonly_endpoint_failover_policy : []
    content {
      mode = lookup(readonly_endpoint_failover_policy.value, "mode") # (Required) possible values: Enabled | Disabled
    }
  }

  tags = var.tags
}
