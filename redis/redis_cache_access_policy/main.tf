

resource "azurerm_redis_cache_access_policy" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  redis_cache_id = var.redis_cache_id
  permissions    = var.permissions
}
