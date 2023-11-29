output "name" {
  value = azurerm_video_analyzer.this.name
}

output "resource_group_name" {
  value = azurerm_video_analyzer.this.resource_group_name
}

output "location" {
  value = azurerm_video_analyzer.this.location
}

output "storage_account" {
  value = azurerm_video_analyzer.this.storage_account
}

output "identity" {
  value = azurerm_video_analyzer.this.identity
}

output "tags" {
  value = azurerm_video_analyzer.this.tags
}

output "id" {
  description = "The ID of the Video Analyzer."
  value       = azurerm_video_analyzer.this.id
}

