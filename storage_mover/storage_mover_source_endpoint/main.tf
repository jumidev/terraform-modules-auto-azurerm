

resource "azurerm_storage_mover_source_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  storage_mover_id = var.storage_mover_id
  host             = var.host

  ########################################
  # optional vars
  ########################################
  export      = var.export
  nfs_version = var.nfs_version # Default: NFSauto
  description = var.description
}
