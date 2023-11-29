output "name" {
  value = azurerm_sentinel_watchlist.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_watchlist.this.log_analytics_workspace_id
}

output "display_name" {
  value = azurerm_sentinel_watchlist.this.display_name
}

output "item_search_key" {
  value = azurerm_sentinel_watchlist.this.item_search_key
}

output "default_duration" {
  value = azurerm_sentinel_watchlist.this.default_duration
}

output "description" {
  value = azurerm_sentinel_watchlist.this.description
}

output "labels" {
  value = azurerm_sentinel_watchlist.this.labels
}

output "id" {
  description = "The ID of the Sentinel Watchlist."
  value       = azurerm_sentinel_watchlist.this.id
}

