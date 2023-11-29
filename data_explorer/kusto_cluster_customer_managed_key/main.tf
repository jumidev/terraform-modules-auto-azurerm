

resource "azurerm_kusto_cluster_customer_managed_key" "this" {

  ########################################
  # required vars
  ########################################
  cluster_id   = var.cluster_id
  key_vault_id = var.key_vault_id
  key_name     = var.key_name

  ########################################
  # optional vars
  ########################################
  key_version   = var.key_version
  user_identity = var.user_identity
}
