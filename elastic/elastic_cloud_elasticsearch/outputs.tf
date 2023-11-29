output "elastic_cloud_email_address" {
  value = azurerm_elastic_cloud_elasticsearch.this.elastic_cloud_email_address
}

output "location" {
  value = azurerm_elastic_cloud_elasticsearch.this.location
}

output "name" {
  value = azurerm_elastic_cloud_elasticsearch.this.name
}

output "resource_group_name" {
  value = azurerm_elastic_cloud_elasticsearch.this.resource_group_name
}

output "sku_name" {
  value = azurerm_elastic_cloud_elasticsearch.this.sku_name
}

output "logs" {
  value = azurerm_elastic_cloud_elasticsearch.this.logs
}

output "monitoring_enabled" {
  value = azurerm_elastic_cloud_elasticsearch.this.monitoring_enabled
}

output "tags" {
  value = azurerm_elastic_cloud_elasticsearch.this.tags
}

output "id" {
  description = "The ID of the Elasticsearch."
  value       = azurerm_elastic_cloud_elasticsearch.this.id
}

output "elastic_cloud_deployment_id" {
  description = "The ID of the Deployment within Elastic Cloud."
  value       = azurerm_elastic_cloud_elasticsearch.this.elastic_cloud_deployment_id
}

output "elastic_cloud_sso_default_url" {
  description = "The Default URL used for Single Sign On (SSO) to Elastic Cloud."
  value       = azurerm_elastic_cloud_elasticsearch.this.elastic_cloud_sso_default_url
}

output "elastic_cloud_user_id" {
  description = "The ID of the User Account within Elastic Cloud."
  value       = azurerm_elastic_cloud_elasticsearch.this.elastic_cloud_user_id
}

output "elasticsearch_service_url" {
  description = "The URL to the Elasticsearch Service associated with this Elasticsearch."
  value       = azurerm_elastic_cloud_elasticsearch.this.elasticsearch_service_url
}

output "kibana_service_url" {
  description = "The URL to the Kibana Dashboard associated with this Elasticsearch."
  value       = azurerm_elastic_cloud_elasticsearch.this.kibana_service_url
}

output "kibana_sso_uri" {
  description = "The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch."
  value       = azurerm_elastic_cloud_elasticsearch.this.kibana_sso_uri
}

