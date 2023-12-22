data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_kusto_cluster" "this" {
  name                = var.kusto_cluster_name
  resource_group_name = var.kusto_cluster_resource_group_name != null ? var.kusto_cluster_resource_group_name : var.resource_group_name

}
data "azurerm_kusto_database" "this" {
  name                = var.kusto_database_name
  resource_group_name = var.kusto_database_resource_group_name != null ? var.kusto_database_resource_group_name : var.resource_group_name

  cluster_name = var.kusto_database_cluster_name != null ? var.kusto_database_cluster_name : var.cluster_name

}


resource "azurerm_kusto_database_principal_assignment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  cluster_name        = data.azurerm_kusto_cluster.this.name
  database_name       = data.azurerm_kusto_database.this.name
  principal_id        = var.principal_id
  principal_type      = var.principal_type
  role                = var.role
  tenant_id           = var.tenant_id
}
