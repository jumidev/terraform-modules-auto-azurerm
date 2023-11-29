

resource "azurerm_mssql_failover_group" "this" {

  ########################################
  # required vars
  ########################################
  name      = var.name
  server_id = var.server_id

  partner_server {
  }


  read_write_endpoint_failover_policy {
    mode          = lookup(read_write_endpoint_failover_policy.value, "mode") # (Required) 
    grace_minutes = lookup(read_write_endpoint_failover_policy.value, "grace_minutes", null)
  }


  ########################################
  # optional vars
  ########################################
  databases                                 = var.databases
  readonly_endpoint_failover_policy_enabled = var.readonly_endpoint_failover_policy_enabled # Default: False
  tags                                      = var.tags
}
