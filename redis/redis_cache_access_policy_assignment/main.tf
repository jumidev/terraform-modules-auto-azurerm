

resource "azurerm_redis_cache_access_policy_assignment" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  redis_cache_id     = var.redis_cache_id
  access_policy_name = var.access_policy_name
  object_id          = var.object_id
  object_id_alias    = var.object_id_alias
}
