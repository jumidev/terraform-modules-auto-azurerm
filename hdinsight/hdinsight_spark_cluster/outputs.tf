output "name" {
  value = azurerm_hdinsight_spark_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_hdinsight_spark_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_hdinsight_spark_cluster.this.location
}

output "cluster_version" {
  value = azurerm_hdinsight_spark_cluster.this.cluster_version
}

output "component_version" {
  value = azurerm_hdinsight_spark_cluster.this.component_version
}

output "encryption_in_transit_enabled" {
  value = azurerm_hdinsight_spark_cluster.this.encryption_in_transit_enabled
}

output "disk_encryption" {
  value = azurerm_hdinsight_spark_cluster.this.disk_encryption
}

output "gateway" {
  value = azurerm_hdinsight_spark_cluster.this.gateway
}

output "roles" {
  value = azurerm_hdinsight_spark_cluster.this.roles
}

output "network" {
  value = azurerm_hdinsight_spark_cluster.this.network
}

output "compute_isolation" {
  value = azurerm_hdinsight_spark_cluster.this.compute_isolation
}

output "storage_account" {
  value = azurerm_hdinsight_spark_cluster.this.storage_account
}

output "storage_account_gen2" {
  value = azurerm_hdinsight_spark_cluster.this.storage_account_gen2
}

output "tier" {
  value = azurerm_hdinsight_spark_cluster.this.tier
}

output "tls_min_version" {
  value = azurerm_hdinsight_spark_cluster.this.tls_min_version
}

output "tags" {
  value = azurerm_hdinsight_spark_cluster.this.tags
}

output "metastores" {
  value = azurerm_hdinsight_spark_cluster.this.metastores
}

output "monitor" {
  value = azurerm_hdinsight_spark_cluster.this.monitor
}

output "extension" {
  value = azurerm_hdinsight_spark_cluster.this.extension
}

output "security_profile" {
  value = azurerm_hdinsight_spark_cluster.this.security_profile
}

output "id" {
  description = "The ID of the HDInsight Spark Cluster."
  value       = azurerm_hdinsight_spark_cluster.this.id
}

output "https_endpoint" {
  description = "The HTTPS Connectivity Endpoint for this HDInsight Spark Cluster."
  value       = azurerm_hdinsight_spark_cluster.this.https_endpoint
}

output "ssh_endpoint" {
  description = "The SSH Connectivity Endpoint for this HDInsight Spark Cluster."
  value       = azurerm_hdinsight_spark_cluster.this.ssh_endpoint
}

