output "name" {
  value = azurerm_hdinsight_kafka_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_hdinsight_kafka_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_hdinsight_kafka_cluster.this.location
}

output "cluster_version" {
  value = azurerm_hdinsight_kafka_cluster.this.cluster_version
}

output "component_version" {
  value = azurerm_hdinsight_kafka_cluster.this.component_version
}

output "gateway" {
  value = azurerm_hdinsight_kafka_cluster.this.gateway
}

output "roles" {
  value = azurerm_hdinsight_kafka_cluster.this.roles
}

output "network" {
  value = azurerm_hdinsight_kafka_cluster.this.network
}

output "storage_account" {
  value = azurerm_hdinsight_kafka_cluster.this.storage_account
}

output "storage_account_gen2" {
  value = azurerm_hdinsight_kafka_cluster.this.storage_account_gen2
}

output "tier" {
  value = azurerm_hdinsight_kafka_cluster.this.tier
}

output "compute_isolation" {
  value = azurerm_hdinsight_kafka_cluster.this.compute_isolation
}

output "tls_min_version" {
  value = azurerm_hdinsight_kafka_cluster.this.tls_min_version
}

output "encryption_in_transit_enabled" {
  value = azurerm_hdinsight_kafka_cluster.this.encryption_in_transit_enabled
}

output "disk_encryption" {
  value = azurerm_hdinsight_kafka_cluster.this.disk_encryption
}

output "tags" {
  value = azurerm_hdinsight_kafka_cluster.this.tags
}

output "metastores" {
  value = azurerm_hdinsight_kafka_cluster.this.metastores
}

output "monitor" {
  value = azurerm_hdinsight_kafka_cluster.this.monitor
}

output "extension" {
  value = azurerm_hdinsight_kafka_cluster.this.extension
}

output "rest_proxy" {
  value = azurerm_hdinsight_kafka_cluster.this.rest_proxy
}

output "security_profile" {
  value = azurerm_hdinsight_kafka_cluster.this.security_profile
}

output "id" {
  description = "The ID of the HDInsight Kafka Cluster."
  value       = azurerm_hdinsight_kafka_cluster.this.id
}

output "https_endpoint" {
  description = "The HTTPS Connectivity Endpoint for this HDInsight Kafka Cluster."
  value       = azurerm_hdinsight_kafka_cluster.this.https_endpoint
}

output "kafka_rest_proxy_endpoint" {
  description = "The Kafka Rest Proxy Endpoint for this HDInsight Kafka Cluster."
  value       = azurerm_hdinsight_kafka_cluster.this.kafka_rest_proxy_endpoint
}

output "ssh_endpoint" {
  description = "The SSH Connectivity Endpoint for this HDInsight Kafka Cluster."
  value       = azurerm_hdinsight_kafka_cluster.this.ssh_endpoint
}

