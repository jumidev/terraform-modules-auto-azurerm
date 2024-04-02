resource "random_string" "sql_administrator_login_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_synapse_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                                 = var.name
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = var.storage_data_lake_gen2_filesystem_id

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  sql_administrator_login          = var.sql_administrator_login
  sql_administrator_login_password = random_string.sql_administrator_login_password.result
  azuread_authentication_only      = var.azuread_authentication_only # Default: False

  dynamic "aad_admin" { # var.aad_admin
    for_each = var.aad_admin != null ? var.aad_admin : []
    content {
      login     = lookup(aad_admin.value, "login")     # (Required) 
      object_id = lookup(aad_admin.value, "object_id") # (Required) 
      tenant_id = lookup(aad_admin.value, "tenant_id") # (Required) 
    }
  }

  compute_subnet_id = var.compute_subnet_id

  dynamic "azure_devops_repo" { # var.azure_devops_repo
    for_each = var.azure_devops_repo != null ? var.azure_devops_repo : []
    content {
      account_name    = lookup(azure_devops_repo.value, "account_name") # (Required) 
      branch_name     = lookup(azure_devops_repo.value, "branch_name")  # (Required) 
      last_commit_id  = lookup(azure_devops_repo.value, "last_commit_id", null)
      project_name    = lookup(azure_devops_repo.value, "project_name")    # (Required) 
      repository_name = lookup(azure_devops_repo.value, "repository_name") # (Required) 
      root_folder     = lookup(azure_devops_repo.value, "root_folder")     # (Required) possible values: /
      tenant_id       = lookup(azure_devops_repo.value, "tenant_id", null)
    }
  }

  data_exfiltration_protection_enabled = var.data_exfiltration_protection_enabled

  dynamic "customer_managed_key" { # var.customer_managed_key
    for_each = var.customer_managed_key != null ? var.customer_managed_key : []
    content {
      key_versionless_id = lookup(customer_managed_key.value, "key_versionless_id") # (Required) 
      key_name           = lookup(customer_managed_key.value, "key_name", null)
    }
  }


  dynamic "github_repo" { # var.github_repo
    for_each = var.github_repo != null ? var.github_repo : []
    content {
      account_name    = lookup(github_repo.value, "account_name") # (Required) 
      branch_name     = lookup(github_repo.value, "branch_name")  # (Required) 
      last_commit_id  = lookup(github_repo.value, "last_commit_id", null)
      repository_name = lookup(github_repo.value, "repository_name") # (Required) 
      root_folder     = lookup(github_repo.value, "root_folder")     # (Required) possible values: /
      git_url         = lookup(github_repo.value, "git_url", null)
    }
  }

  linking_allowed_for_aad_tenant_ids = var.linking_allowed_for_aad_tenant_ids
  managed_resource_group_name        = var.managed_resource_group_name
  managed_virtual_network_enabled    = var.managed_virtual_network_enabled
  public_network_access_enabled      = var.public_network_access_enabled # Default: True
  purview_id                         = var.purview_id

  dynamic "sql_aad_admin" { # var.sql_aad_admin
    for_each = var.sql_aad_admin != null ? var.sql_aad_admin : []
    content {
      login     = lookup(sql_aad_admin.value, "login")     # (Required) 
      object_id = lookup(sql_aad_admin.value, "object_id") # (Required) 
      tenant_id = lookup(sql_aad_admin.value, "tenant_id") # (Required) 
    }
  }

  sql_identity_control_enabled = var.sql_identity_control_enabled
  tags                         = var.tags
}
