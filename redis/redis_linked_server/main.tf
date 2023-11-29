data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_redis_linked_server" "this" {

  ########################################
  # required vars
  ########################################
  linked_redis_cache_id       = var.linked_redis_cache_id
  linked_redis_cache_location = var.linked_redis_cache_location
  target_redis_cache_name     = var.target_redis_cache_name
  resource_group_name         = data.azurerm_resource_group.this.name
  server_role                 = var.server_role
}
