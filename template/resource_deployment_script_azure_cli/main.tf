data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_resource_deployment_script_azure_cli" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  version             = var.version
  retention_interval  = var.retention_interval

  ########################################
  # optional vars
  ########################################
  command_line       = var.command_line
  cleanup_preference = var.cleanup_preference # Default: Always

  dynamic "container" { # var.container
    for_each = var.container != null ? var.container : []
    content {
      container_group_name = lookup(container.value, "container_group_name", null)
    }
  }


  dynamic "environment_variable" { # var.environment_variable
    for_each = var.environment_variable != null ? var.environment_variable : []
    content {
      name         = environment_variable.key
      secure_value = lookup(environment_variable.value, "secure_value", null)
      value        = lookup(environment_variable.value, "value", null)
    }
  }

  force_update_tag = var.force_update_tag

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) 
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  primary_script_uri = var.primary_script_uri
  script_content     = var.script_content

  dynamic "storage_account" { # var.storage_account
    for_each = var.storage_account != null ? var.storage_account : []
    content {
      key  = lookup(storage_account.value, "key") # (Required) 
      name = storage_account.key
    }
  }

  supporting_script_uris = var.supporting_script_uris
  timeout                = var.timeout # Default: P1D
  tags                   = var.tags
}
