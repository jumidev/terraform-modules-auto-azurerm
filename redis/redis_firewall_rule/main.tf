

resource "azurerm_redis_firewall_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  redis_cache_name    = var.redis_cache_name
  resource_group_name = var.resource_group_name
  start_ip            = var.start_ip
  end_ip              = var.end_ip
}
