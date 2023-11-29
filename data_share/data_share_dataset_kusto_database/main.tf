

resource "azurerm_data_share_dataset_kusto_database" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  share_id          = var.share_id
  kusto_database_id = var.kusto_database_id
}
