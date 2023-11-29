data "azurerm_kusto_database" "this" {
  name                = var.kusto_database_name
  resource_group_name = var.kusto_database_resource_group_name
  cluster_name        = var.kusto_database_cluster_name
}


resource "azurerm_data_factory_linked_service_kusto" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  data_factory_id     = var.data_factory_id
  kusto_endpoint      = var.kusto_endpoint
  kusto_database_name = data.azurerm_kusto_database.this.name

  ########################################
  # optional vars
  ########################################
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties
  use_managed_identity     = var.use_managed_identity
  service_principal_id     = var.service_principal_id
  service_principal_key    = var.service_principal_key
  tenant                   = var.tenant
}
