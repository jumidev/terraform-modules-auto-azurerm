

resource "azurerm_container_registry_cache_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  container_registry_id = var.container_registry_id
  source_repo           = var.source_repo
  target_repo           = var.target_repo

  ########################################
  # optional vars
  ########################################
  credential_set_id = var.credential_set_id
}
