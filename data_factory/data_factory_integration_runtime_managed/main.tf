

resource "azurerm_data_factory_integration_runtime_managed" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id
  location        = var.location
  node_size       = var.node_size

  ########################################
  # optional vars
  ########################################
  number_of_nodes                  = var.number_of_nodes                  # Default: 1
  max_parallel_executions_per_node = var.max_parallel_executions_per_node # Default: 1
  edition                          = var.edition                          # Default: Standard
  license_type                     = var.license_type                     # Default: LicenseIncluded

  dynamic "catalog_info" { # var.catalog_info
    for_each = var.catalog_info != null ? var.catalog_info : []
    content {
      server_endpoint        = lookup(catalog_info.value, "server_endpoint") # (Required) 
      administrator_login    = lookup(catalog_info.value, "administrator_login", null)
      administrator_password = lookup(catalog_info.value, "administrator_password", null)
      pricing_tier           = lookup(catalog_info.value, "pricing_tier", "Basic")
    }
  }


  dynamic "custom_setup_script" { # var.custom_setup_script
    for_each = var.custom_setup_script != null ? var.custom_setup_script : []
    content {
      blob_container_uri = lookup(custom_setup_script.value, "blob_container_uri") # (Required) 
      sas_token          = lookup(custom_setup_script.value, "sas_token")          # (Required) 
    }
  }


  dynamic "vnet_integration" { # var.vnet_integration
    for_each = var.vnet_integration != null ? var.vnet_integration : []
    content {
      vnet_id     = lookup(vnet_integration.value, "vnet_id")     # (Required) 
      subnet_name = lookup(vnet_integration.value, "subnet_name") # (Required) 
    }
  }

  description = var.description
}
