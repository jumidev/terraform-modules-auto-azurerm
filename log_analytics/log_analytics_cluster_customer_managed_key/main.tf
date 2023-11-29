

resource "azurerm_log_analytics_cluster_customer_managed_key" "this" {

  ########################################
  # required vars
  ########################################
  key_vault_key_id         = var.key_vault_key_id
  log_analytics_cluster_id = var.log_analytics_cluster_id
}
