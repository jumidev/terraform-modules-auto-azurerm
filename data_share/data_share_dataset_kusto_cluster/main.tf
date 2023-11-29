

resource "azurerm_data_share_dataset_kusto_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  share_id         = var.share_id
  kusto_cluster_id = var.kusto_cluster_id
}
