data "azurerm_redis_cache" "this" {
  name                = var.redis_cache_name
  resource_group_name = var.redis_cache_resource_group_name != null ? var.redis_cache_resource_group_name : var.resource_group_name

}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_redis_firewall_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  redis_cache_name    = data.azurerm_redis_cache.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  start_ip            = var.start_ip
  end_ip              = var.end_ip
}
