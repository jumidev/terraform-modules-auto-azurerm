data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_data_factory" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "github_configuration" { # var.github_configuration
    for_each = var.github_configuration != null ? var.github_configuration : []
    content {
      account_name       = lookup(github_configuration.value, "account_name")    # (Required) 
      branch_name        = lookup(github_configuration.value, "branch_name")     # (Required) 
      git_url            = lookup(github_configuration.value, "git_url")         # (Required) 
      repository_name    = lookup(github_configuration.value, "repository_name") # (Required) 
      root_folder        = lookup(github_configuration.value, "root_folder")     # (Required) 
      publishing_enabled = lookup(github_configuration.value, "publishing_enabled", true)
    }
  }


  dynamic "global_parameter" { # var.global_parameter
    for_each = var.global_parameter != null ? var.global_parameter : []
    content {
      name  = global_parameter.key
      type  = lookup(global_parameter.value, "type")  # (Required) 
      value = lookup(global_parameter.value, "value") # (Required) 
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "vsts_configuration" { # var.vsts_configuration
    for_each = var.vsts_configuration != null ? var.vsts_configuration : []
    content {
      account_name       = lookup(vsts_configuration.value, "account_name")    # (Required) 
      branch_name        = lookup(vsts_configuration.value, "branch_name")     # (Required) 
      project_name       = lookup(vsts_configuration.value, "project_name")    # (Required) 
      repository_name    = lookup(vsts_configuration.value, "repository_name") # (Required) 
      root_folder        = lookup(vsts_configuration.value, "root_folder")     # (Required) 
      tenant_id          = lookup(vsts_configuration.value, "tenant_id")       # (Required) 
      publishing_enabled = lookup(vsts_configuration.value, "publishing_enabled", true)
    }
  }

  managed_virtual_network_enabled  = var.managed_virtual_network_enabled
  public_network_enabled           = var.public_network_enabled # Default: True
  customer_managed_key_id          = var.customer_managed_key_id
  customer_managed_key_identity_id = var.customer_managed_key_identity_id
  purview_id                       = var.purview_id
  tags                             = var.tags
}
