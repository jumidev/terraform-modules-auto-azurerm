data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_sql_server" "this" {
  name                = var.sql_server_name
  resource_group_name = var.sql_server_resource_group_name == null ? null : var.sql_server_resource_group_name
}


resource "azurerm_sql_failover_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  server_name         = data.azurerm_sql_server.this.name
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
