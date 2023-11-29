output "aws_role_arn" {
  value = azurerm_sentinel_data_connector_aws_cloud_trail.this.aws_role_arn
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_aws_cloud_trail.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_aws_cloud_trail.this.name
}

output "id" {
  description = "The ID of the AWS CloudTrail Data Connector."
  value       = azurerm_sentinel_data_connector_aws_cloud_trail.this.id
}

