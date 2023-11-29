output "name" {
  value = azurerm_sentinel_data_connector_aws_s3.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_aws_s3.this.log_analytics_workspace_id
}

output "aws_role_arn" {
  value = azurerm_sentinel_data_connector_aws_s3.this.aws_role_arn
}

output "destination_table" {
  value = azurerm_sentinel_data_connector_aws_s3.this.destination_table
}

output "sqs_urls" {
  value = azurerm_sentinel_data_connector_aws_s3.this.sqs_urls
}

output "id" {
  description = "The ID of the AWS S3 Data Connector."
  value       = azurerm_sentinel_data_connector_aws_s3.this.id
}

