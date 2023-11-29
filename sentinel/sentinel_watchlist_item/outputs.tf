output "watchlist_id" {
  value = azurerm_sentinel_watchlist_item.this.watchlist_id
}

output "properties" {
  value = azurerm_sentinel_watchlist_item.this.properties
}

output "name" {
  value = azurerm_sentinel_watchlist_item.this.name
}

output "id" {
  description = "The ID of the Sentinel Watchlist Item."
  value       = azurerm_sentinel_watchlist_item.this.id
}

