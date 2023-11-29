

resource "azurerm_mssql_managed_instance_failover_group" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  location                    = var.location
  managed_instance_id         = var.managed_instance_id
  partner_managed_instance_id = var.partner_managed_instance_id

  read_write_endpoint_failover_policy {
    mode          = lookup(read_write_endpoint_failover_policy.value, "mode") # (Required) 
    grace_minutes = lookup(read_write_endpoint_failover_policy.value, "grace_minutes", null)
  }


  ########################################
  # optional vars
  ########################################
  readonly_endpoint_failover_policy_enabled = var.readonly_endpoint_failover_policy_enabled # Default: True
}
