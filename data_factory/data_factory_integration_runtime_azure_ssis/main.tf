

resource "azurerm_data_factory_integration_runtime_azure_ssis" "this" {

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
      pricing_tier           = lookup(catalog_info.value, "pricing_tier", null)
      elastic_pool_name      = lookup(catalog_info.value, "elastic_pool_name", null)
      dual_standby_pair_name = lookup(catalog_info.value, "dual_standby_pair_name", null)
    }
  }


  dynamic "custom_setup_script" { # var.custom_setup_script
    for_each = var.custom_setup_script != null ? var.custom_setup_script : []
    content {
      blob_container_uri = lookup(custom_setup_script.value, "blob_container_uri") # (Required) 
      sas_token          = lookup(custom_setup_script.value, "sas_token")          # (Required) 
    }
  }


  dynamic "express_custom_setup" { # var.express_custom_setup
    for_each = var.express_custom_setup != null ? var.express_custom_setup : []
    content {

      dynamic "command_key" { # express_custom_setup.value.command_key
        for_each = express_custom_setup.value.command_key != null ? express_custom_setup.value.command_key : []
        content {
          target_name = lookup(command_key.value, "target_name") # (Required) 
          user_name   = lookup(command_key.value, "user_name")   # (Required) 
          password    = lookup(command_key.value, "password", null)

          dynamic "key_vault_password" { # command_key.value.key_vault_password
            for_each = command_key.value.key_vault_password != null ? command_key.value.key_vault_password : []
            content {
              linked_service_name = lookup(key_vault_password.value, "linked_service_name") # (Required) 
              secret_name         = lookup(key_vault_password.value, "secret_name")         # (Required) 
              secret_version      = lookup(key_vault_password.value, "secret_version", null)
              parameters          = lookup(key_vault_password.value, "parameters", null)
            }
          }

        }
      }


      dynamic "component" { # express_custom_setup.value.component
        for_each = express_custom_setup.value.component != null ? express_custom_setup.value.component : []
        content {
          name    = component.key
          license = lookup(component.value, "license", null)

          dynamic "key_vault_license" { # component.value.key_vault_license
            for_each = component.value.key_vault_license != null ? component.value.key_vault_license : []
            content {
              linked_service_name = lookup(key_vault_license.value, "linked_service_name") # (Required) 
              secret_name         = lookup(key_vault_license.value, "secret_name")         # (Required) 
              secret_version      = lookup(key_vault_license.value, "secret_version", null)
              parameters          = lookup(key_vault_license.value, "parameters", null)
            }
          }

        }
      }

      environment        = lookup(express_custom_setup.value, "environment", null)
      powershell_version = lookup(express_custom_setup.value, "powershell_version", null)
    }
  }


  dynamic "express_vnet_integration" { # var.express_vnet_integration
    for_each = var.express_vnet_integration != null ? var.express_vnet_integration : []
    content {
      subnet_id = lookup(express_vnet_integration.value, "subnet_id") # (Required) 
    }
  }


  dynamic "package_store" { # var.package_store
    for_each = var.package_store != null ? var.package_store : []
    content {
      name                = package_store.key
      linked_service_name = lookup(package_store.value, "linked_service_name") # (Required) 
    }
  }


  dynamic "proxy" { # var.proxy
    for_each = var.proxy != null ? var.proxy : []
    content {
      self_hosted_integration_runtime_name = lookup(proxy.value, "self_hosted_integration_runtime_name") # (Required) 
      staging_storage_linked_service_name  = lookup(proxy.value, "staging_storage_linked_service_name")  # (Required) 
      path                                 = lookup(proxy.value, "path", null)
    }
  }


  dynamic "vnet_integration" { # var.vnet_integration
    for_each = var.vnet_integration != null ? var.vnet_integration : []
    content {
      vnet_id     = lookup(vnet_integration.value, "vnet_id", null)
      subnet_name = lookup(vnet_integration.value, "subnet_name", null)
      subnet_id   = lookup(vnet_integration.value, "subnet_id", null)
      public_ips  = lookup(vnet_integration.value, "public_ips", null)
    }
  }

  description = var.description
}
