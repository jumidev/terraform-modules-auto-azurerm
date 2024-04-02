

resource "azurerm_redis_enterprise_database" "this" {

  ########################################
  # required vars
  ########################################
  cluster_id = var.cluster_id

  ########################################
  # optional vars
  ########################################
  name                = var.name # Default: default
  resource_group_name = var.resource_group_name
  client_protocol     = var.client_protocol   # Default: Encrypted
  clustering_policy   = var.clustering_policy # Default: OSSCluster
  eviction_policy     = var.eviction_policy   # Default: VolatileLRU

  dynamic "module" { # var.module
    for_each = var.module != null ? var.module : []
    content {
      name = module.key
      args = lookup(module.value, "args", "")
    }
  }

  linked_database_id             = var.linked_database_id
  linked_database_group_nickname = var.linked_database_group_nickname
  port                           = var.port
}
