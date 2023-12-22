data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_kusto_cluster" "this" {
  name                = var.kusto_cluster_name
  resource_group_name = var.kusto_cluster_resource_group_name == null ? null : var.kusto_cluster_resource_group_name
}


resource "azurerm_kusto_cluster_principal_assignment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  cluster_name        = data.azurerm_kusto_cluster.this.name
  principal_id        = var.principal_id
  principal_type      = var.principal_type
  role                = var.role
  tenant_id           = var.tenant_id
}
