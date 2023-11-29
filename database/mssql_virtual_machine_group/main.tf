data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_mssql_virtual_machine_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sql_image_offer     = var.sql_image_offer
  sql_image_sku       = var.sql_image_sku

  wsfc_domain_profile {
    cluster_subnet_type            = lookup(wsfc_domain_profile.value, "cluster_subnet_type") # (Required) 
    fqdn                           = lookup(wsfc_domain_profile.value, "fqdn")                # (Required) 
    cluster_bootstrap_account_name = lookup(wsfc_domain_profile.value, "cluster_bootstrap_account_name", null)
    cluster_operator_account_name  = lookup(wsfc_domain_profile.value, "cluster_operator_account_name", null)
    organizational_unit_path       = lookup(wsfc_domain_profile.value, "organizational_unit_path", null)
    sql_service_account_name       = lookup(wsfc_domain_profile.value, "sql_service_account_name", null)
    storage_account_primary_key    = lookup(wsfc_domain_profile.value, "storage_account_primary_key", null)
    storage_account_url            = lookup(wsfc_domain_profile.value, "storage_account_url", null)
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
