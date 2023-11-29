

resource "azurerm_mssql_virtual_machine_availability_group_listener" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  sql_virtual_machine_group_id = var.sql_virtual_machine_group_id

  dynamic "replica" { # var.replica
    for_each = var.replica != null ? var.replica : []
    content {
      commit                 = lookup(replica.value, "commit")                 # (Required) possible values: Synchronous_Commit | Asynchronous_Commit
      failover_mode          = lookup(replica.value, "failover_mode")          # (Required) possible values: Manual | Automatic
      readable_secondary     = lookup(replica.value, "readable_secondary")     # (Required) possible values: No | Read_Only | All
      role                   = lookup(replica.value, "role")                   # (Required) possible values: Primary | Secondary
      sql_virtual_machine_id = lookup(replica.value, "sql_virtual_machine_id") # (Required) 
    }
  }


  ########################################
  # optional vars
  ########################################
  availability_group_name = var.availability_group_name

  dynamic "load_balancer_configuration" { # var.load_balancer_configuration
    for_each = var.load_balancer_configuration != null ? var.load_balancer_configuration : []
    content {
      load_balancer_id        = lookup(load_balancer_configuration.value, "load_balancer_id")        # (Required) 
      private_ip_address      = lookup(load_balancer_configuration.value, "private_ip_address")      # (Required) 
      probe_port              = lookup(load_balancer_configuration.value, "probe_port")              # (Required) 
      sql_virtual_machine_ids = lookup(load_balancer_configuration.value, "sql_virtual_machine_ids") # (Required) 
      subnet_id               = lookup(load_balancer_configuration.value, "subnet_id")               # (Required) 
    }
  }


  dynamic "multi_subnet_ip_configuration" { # var.multi_subnet_ip_configuration
    for_each = var.multi_subnet_ip_configuration != null ? var.multi_subnet_ip_configuration : []
    content {
      private_ip_address     = lookup(multi_subnet_ip_configuration.value, "private_ip_address")     # (Required) 
      sql_virtual_machine_id = lookup(multi_subnet_ip_configuration.value, "sql_virtual_machine_id") # (Required) 
      subnet_id              = lookup(multi_subnet_ip_configuration.value, "subnet_id")              # (Required) 
    }
  }

  port = var.port
}
