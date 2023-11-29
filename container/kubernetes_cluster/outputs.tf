output "name" {
  value = azurerm_kubernetes_cluster.this.name
}

output "location" {
  value = azurerm_kubernetes_cluster.this.location
}

output "resource_group_name" {
  value = azurerm_kubernetes_cluster.this.resource_group_name
}

output "default_node_pool" {
  value = azurerm_kubernetes_cluster.this.default_node_pool
}

output "dns_prefix" {
  value = azurerm_kubernetes_cluster.this.dns_prefix
}

output "dns_prefix_private_cluster" {
  value = azurerm_kubernetes_cluster.this.dns_prefix_private_cluster
}

output "aci_connector_linux" {
  value = azurerm_kubernetes_cluster.this.aci_connector_linux
}

output "automatic_channel_upgrade" {
  value = azurerm_kubernetes_cluster.this.automatic_channel_upgrade
}

output "api_server_access_profile" {
  value = azurerm_kubernetes_cluster.this.api_server_access_profile
}

output "auto_scaler_profile" {
  value = azurerm_kubernetes_cluster.this.auto_scaler_profile
}

output "azure_active_directory_role_based_access_control" {
  value = azurerm_kubernetes_cluster.this.azure_active_directory_role_based_access_control
}

output "azure_policy_enabled" {
  value = azurerm_kubernetes_cluster.this.azure_policy_enabled
}

output "confidential_computing" {
  value = azurerm_kubernetes_cluster.this.confidential_computing
}

output "custom_ca_trust_certificates_base64" {
  value = azurerm_kubernetes_cluster.this.custom_ca_trust_certificates_base64
}

output "disk_encryption_set_id" {
  value = azurerm_kubernetes_cluster.this.disk_encryption_set_id
}

output "edge_zone" {
  value = azurerm_kubernetes_cluster.this.edge_zone
}

output "http_application_routing_enabled" {
  value = azurerm_kubernetes_cluster.this.http_application_routing_enabled
}

output "http_proxy_config" {
  value = azurerm_kubernetes_cluster.this.http_proxy_config
}

output "identity" {
  value = azurerm_kubernetes_cluster.this.identity
}

output "image_cleaner_enabled" {
  value = azurerm_kubernetes_cluster.this.image_cleaner_enabled
}

output "image_cleaner_interval_hours" {
  value = azurerm_kubernetes_cluster.this.image_cleaner_interval_hours
}

output "ingress_application_gateway" {
  value = azurerm_kubernetes_cluster.this.ingress_application_gateway
}

output "key_management_service" {
  value = azurerm_kubernetes_cluster.this.key_management_service
}

output "key_vault_secrets_provider" {
  value = azurerm_kubernetes_cluster.this.key_vault_secrets_provider
}

output "kubelet_identity" {
  value = azurerm_kubernetes_cluster.this.kubelet_identity
}

output "kubernetes_version" {
  value = azurerm_kubernetes_cluster.this.kubernetes_version
}

output "linux_profile" {
  value = azurerm_kubernetes_cluster.this.linux_profile
}

output "local_account_disabled" {
  value = azurerm_kubernetes_cluster.this.local_account_disabled
}

output "maintenance_window" {
  value = azurerm_kubernetes_cluster.this.maintenance_window
}

output "maintenance_window_auto_upgrade" {
  value = azurerm_kubernetes_cluster.this.maintenance_window_auto_upgrade
}

output "maintenance_window_node_os" {
  value = azurerm_kubernetes_cluster.this.maintenance_window_node_os
}

output "microsoft_defender" {
  value = azurerm_kubernetes_cluster.this.microsoft_defender
}

output "monitor_metrics" {
  value = azurerm_kubernetes_cluster.this.monitor_metrics
}

output "network_profile" {
  value = azurerm_kubernetes_cluster.this.network_profile
}

output "node_os_channel_upgrade" {
  value = azurerm_kubernetes_cluster.this.node_os_channel_upgrade
}

output "node_resource_group" {
  value = azurerm_kubernetes_cluster.this.node_resource_group
}

output "oidc_issuer_enabled" {
  value = azurerm_kubernetes_cluster.this.oidc_issuer_enabled
}

output "oms_agent" {
  value = azurerm_kubernetes_cluster.this.oms_agent
}

output "open_service_mesh_enabled" {
  value = azurerm_kubernetes_cluster.this.open_service_mesh_enabled
}

output "private_cluster_enabled" {
  value = azurerm_kubernetes_cluster.this.private_cluster_enabled
}

output "private_dns_zone_id" {
  value = azurerm_kubernetes_cluster.this.private_dns_zone_id
}

output "private_cluster_public_fqdn_enabled" {
  value = azurerm_kubernetes_cluster.this.private_cluster_public_fqdn_enabled
}

output "service_mesh_profile" {
  value = azurerm_kubernetes_cluster.this.service_mesh_profile
}

output "workload_autoscaler_profile" {
  value = azurerm_kubernetes_cluster.this.workload_autoscaler_profile
}

output "workload_identity_enabled" {
  value = azurerm_kubernetes_cluster.this.workload_identity_enabled
}

output "public_network_access_enabled" {
  value = azurerm_kubernetes_cluster.this.public_network_access_enabled
}

output "role_based_access_control_enabled" {
  value = azurerm_kubernetes_cluster.this.role_based_access_control_enabled
}

output "run_command_enabled" {
  value = azurerm_kubernetes_cluster.this.run_command_enabled
}

output "service_principal" {
  value = azurerm_kubernetes_cluster.this.service_principal
}

output "sku_tier" {
  value = azurerm_kubernetes_cluster.this.sku_tier
}

output "storage_profile" {
  value = azurerm_kubernetes_cluster.this.storage_profile
}

output "tags" {
  value = azurerm_kubernetes_cluster.this.tags
}

output "web_app_routing" {
  value = azurerm_kubernetes_cluster.this.web_app_routing
}

output "windows_profile" {
  value = azurerm_kubernetes_cluster.this.windows_profile
}

output "id" {
  description = "The Kubernetes Managed Cluster ID."
  value       = azurerm_kubernetes_cluster.this.id
}

output "fqdn" {
  description = "The FQDN of the Azure Kubernetes Managed Cluster."
  value       = azurerm_kubernetes_cluster.this.fqdn
}

output "private_fqdn" {
  description = "The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.this.private_fqdn
}

output "portal_fqdn" {
  description = "The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.this.portal_fqdn
}

output "kube_admin_config" {
  description = "A 'kube_admin_config' block. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled."
  value       = azurerm_kubernetes_cluster.this.kube_admin_config
}

output "kube_admin_config_raw" {
  description = "Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled."
  value       = azurerm_kubernetes_cluster.this.kube_admin_config_raw
}

output "kube_config" {
  description = "A 'kube_config' block."
  value       = azurerm_kubernetes_cluster.this.kube_config
}

output "kube_config_raw" {
  description = "Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools."
  value       = azurerm_kubernetes_cluster.this.kube_config_raw
}

output "http_application_routing_zone_name" {
  description = "The Zone Name of the HTTP Application Routing."
  value       = azurerm_kubernetes_cluster.this.http_application_routing_zone_name
}

output "oidc_issuer_url" {
  description = "The OIDC issuer URL that is associated with the cluster."
  value       = azurerm_kubernetes_cluster.this.oidc_issuer_url
}

output "node_resource_group" {
  description = "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.this.node_resource_group
}

output "node_resource_group_id" {
  description = "The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.this.node_resource_group_id
}

output "network_profile" {
  description = "A 'network_profile' block."
  value       = azurerm_kubernetes_cluster.this.network_profile
}

output "ingress_application_gateway" {
  description = "An 'ingress_application_gateway' block."
  value       = azurerm_kubernetes_cluster.this.ingress_application_gateway
}

output "oms_agent" {
  description = "An 'oms_agent' block."
  value       = azurerm_kubernetes_cluster.this.oms_agent
}

output "key_vault_secrets_provider" {
  description = "A 'key_vault_secrets_provider' block."
  value       = azurerm_kubernetes_cluster.this.key_vault_secrets_provider
}

output "connector_identity" {
  description = "A 'connector_identity' block is exported. The exported attributes are defined below."
  value       = azurerm_kubernetes_cluster.this.connector_identity
}

output "client_id" {
  description = "The Client ID of the user-defined Managed Identity used for Web App Routing."
  value       = azurerm_kubernetes_cluster.this.client_id
}

output "object_id" {
  description = "The Object ID of the user-defined Managed Identity used for Web App Routing"
  value       = azurerm_kubernetes_cluster.this.object_id
}

output "user_assigned_identity_id" {
  description = "The ID of the User Assigned Identity used for Web App Routing."
  value       = azurerm_kubernetes_cluster.this.user_assigned_identity_id
}

output "effective_outbound_ips" {
  description = "The outcome (resource IDs) of the specified arguments."
  value       = azurerm_kubernetes_cluster.this.effective_outbound_ips
}

output "nat_gateway_profile" {
  description = "A 'nat_gateway_profile' block."
  value       = azurerm_kubernetes_cluster.this.nat_gateway_profile
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_kubernetes_cluster.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_kubernetes_cluster.this.tenant_id
}

output "client_key" {
  description = "Base64 encoded private key used by clients to authenticate to the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.this.client_key
}

output "client_certificate" {
  description = "Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.this.client_certificate
}

output "cluster_ca_certificate" {
  description = "Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.this.cluster_ca_certificate
}

output "host" {
  description = "The Kubernetes cluster server host."
  value       = azurerm_kubernetes_cluster.this.host
}

output "username" {
  description = "A username used to authenticate to the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.this.username
}

output "password" {
  description = "A password or token used to authenticate to the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.this.password
}

output "effective_gateway_id" {
  description = "The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.this.effective_gateway_id
}

output "ingress_application_gateway_identity" {
  description = "An 'ingress_application_gateway_identity' block is exported. The exported attributes are defined below."
  value       = azurerm_kubernetes_cluster.this.ingress_application_gateway_identity
}

output "oms_agent_identity" {
  description = "An 'oms_agent_identity' block is exported. The exported attributes are defined below."
  value       = azurerm_kubernetes_cluster.this.oms_agent_identity
}

output "secret_identity" {
  description = "An 'secret_identity' block is exported. The exported attributes are defined below."
  value       = azurerm_kubernetes_cluster.this.secret_identity
}

output "web_app_routing_identity" {
  description = "A 'web_app_routing_identity' block is exported. The exported attributes are defined below."
  value       = azurerm_kubernetes_cluster.this.web_app_routing_identity
}

output "vertical_pod_autoscaler_controlled_values" {
  description = "Which resources values should be controlled."
  value       = azurerm_kubernetes_cluster.this.vertical_pod_autoscaler_controlled_values
}

output "vertical_pod_autoscaler_update_mode" {
  description = "How the autoscaler applies changes to pod resources."
  value       = azurerm_kubernetes_cluster.this.vertical_pod_autoscaler_update_mode
}

