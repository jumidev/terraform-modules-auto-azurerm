

resource "azurerm_hpc_cache_access_policy" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  hpc_cache_id = var.hpc_cache_id
  access_rule  = var.access_rule
}
