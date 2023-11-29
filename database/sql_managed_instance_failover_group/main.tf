data "azurerm_sql_server" "this" {
  name                = var.sql_server_name
  resource_group_name = var.sql_server_resource_group_name == null ? null : var.sql_server_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_sql_managed_instance_failover_group" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  managed_instance_name       = data.azurerm_sql_server.this.name
  location                    = var.location
  partner_managed_instance_id = var.partner_managed_instance_id

  read_write_endpoint_failover_policy {
    mode          = lookup(read_write_endpoint_failover_policy.value, "mode") # (Required) 
    grace_minutes = lookup(read_write_endpoint_failover_policy.value, "grace_minutes", null)
  }

  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  readonly_endpoint_failover_policy_enabled = var.readonly_endpoint_failover_policy_enabled # Default: True
}
