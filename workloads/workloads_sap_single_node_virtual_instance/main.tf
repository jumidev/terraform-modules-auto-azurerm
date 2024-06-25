

resource "azurerm_workloads_sap_single_node_virtual_instance" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_location        = var.app_location
  environment         = var.environment
  sap_fqdn            = var.sap_fqdn
  sap_product         = var.sap_product

  single_server_configuration {
    app_resource_group_name        = lookup(single_server_configuration.value, "app_resource_group_name")       # (Required) 
    subnet_id                      = lookup(single_server_configuration.value, "subnet_id")                     # (Required) 
    virtual_machine_configuration  = lookup(single_server_configuration.value, "virtual_machine_configuration") # (Required) 
    database_type                  = lookup(single_server_configuration.value, "database_type", null)
    disk_volume_configuration      = lookup(single_server_configuration.value, "disk_volume_configuration", null)
    secondary_ip_enabled           = lookup(single_server_configuration.value, "secondary_ip_enabled", false)
    virtual_machine_resource_names = lookup(single_server_configuration.value, "virtual_machine_resource_names", null)
  }


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

  managed_resource_group_name = var.managed_resource_group_name
  tags                        = var.tags
}
