# azurerm_kubernetes_cluster

Manages a Managed Kubernetes Cluster (also known as AKS / Azure Kubernetes Service)-> **Note:** Due to the fast-moving nature of AKS, we recommend using the latest version of the Azure Provider when using AKS - you can find [the latest version of the Azure Provider here](https://registry.terraform.io/providers/hashicorp/azurerm/latest).~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **var.default_node_pool** | block | True | -  |  -  | A `default_node_pool` block. | 
| **var.dns_prefix** | string | False | -  |  -  | DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created. | 
| **var.dns_prefix_private_cluster** | string | False | -  |  -  | Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created. | 
| **var.aci_connector_linux** | block | False | -  |  -  | A `aci_connector_linux` block. For more details, please visit [Create and configure an AKS cluster to use virtual nodes](https://docs.microsoft.com/azure/aks/virtual-nodes-portal). | 
| **var.automatic_channel_upgrade** | string | False | -  |  `patch`, `rapid`, `node-image`, `stable`  | The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. Omitting this field sets this value to `none`. | 
| **var.api_server_access_profile** | block | False | -  |  -  | An `api_server_access_profile` block. | 
| **var.auto_scaler_profile** | block | False | -  |  -  | A `auto_scaler_profile` block. | 
| **var.azure_active_directory_role_based_access_control** | block | False | -  |  -  | A `azure_active_directory_role_based_access_control` block. | 
| **var.azure_policy_enabled** | bool | False | -  |  -  | Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks) | 
| **var.confidential_computing** | block | False | -  |  -  | A `confidential_computing` block. For more details please [the documentation](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-nodes-aks-overview) | 
| **var.custom_ca_trust_certificates_base64** | list | False | -  |  -  | A list of up to 10 base64 encoded CAs that will be added to the trust store on nodes with the `custom_ca_trust_enabled` feature enabled. | 
| **var.disk_encryption_set_id** | string | False | -  |  -  | The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created. | 
| **var.edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **var.http_application_routing_enabled** | bool | False | -  |  -  | Should HTTP Application Routing be enabled? | 
| **var.http_proxy_config** | block | False | -  |  -  | A `http_proxy_config` block. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. One of either `identity` or `service_principal` must be specified. | 
| **var.image_cleaner_enabled** | bool | False | -  |  -  | Specifies whether Image Cleaner is enabled. | 
| **var.image_cleaner_interval_hours** | string | False | `48`  |  -  | Specifies the interval in hours when images should be cleaned up. Defaults to `48`. | 
| **var.ingress_application_gateway** | block | False | -  |  -  | A `ingress_application_gateway` block. | 
| **var.key_management_service** | block | False | -  |  -  | A `key_management_service` block. For more details, please visit [Key Management Service (KMS) etcd encryption to an AKS cluster](https://learn.microsoft.com/en-us/azure/aks/use-kms-etcd-encryption). | 
| **var.key_vault_secrets_provider** | block | False | -  |  -  | A `key_vault_secrets_provider` block. For more details, please visit [Azure Keyvault Secrets Provider for AKS](https://docs.microsoft.com/azure/aks/csi-secrets-store-driver). | 
| **var.kubelet_identity** | block | False | -  |  -  | A `kubelet_identity` block. | 
| **var.kubernetes_version** | string | False | -  |  -  | Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). | 
| **var.linux_profile** | block | False | -  |  -  | A `linux_profile` block. | 
| **var.local_account_disabled** | bool | False | -  |  -  | If `true` local accounts will be disabled. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information. | 
| **var.maintenance_window** | block | False | -  |  -  | A `maintenance_window` block. | 
| **var.maintenance_window_auto_upgrade** | block | False | -  |  -  | A `maintenance_window_auto_upgrade` block. | 
| **var.maintenance_window_node_os** | block | False | -  |  -  | A `maintenance_window_node_os` block. | 
| **var.microsoft_defender** | block | False | -  |  -  | A `microsoft_defender` block. | 
| **var.monitor_metrics** | block | False | -  |  -  | Specifies a Prometheus add-on profile for the Kubernetes Cluster. A `monitor_metrics` block. | 
| **var.network_profile** | block | False | -  |  -  | A `network_profile` block. Changing this forces a new resource to be created. | 
| **var.node_os_channel_upgrade** | string | False | -  |  `Unmanaged`, `SecurityPatch`, `NodeImage`, `None`  | The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`. | 
| **var.node_resource_group** | string | False | -  |  -  | The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created. | 
| **var.oidc_issuer_enabled** | bool | False | -  |  -  | Enable or Disable the [OIDC issuer URL](https://learn.microsoft.com/en-gb/azure/aks/use-oidc-issuer) | 
| **var.oms_agent** | block | False | -  |  -  | A `oms_agent` block. | 
| **var.open_service_mesh_enabled** | bool | False | -  |  -  | Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about). | 
| **var.private_cluster_enabled** | bool | False | `False`  |  -  | Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.private_dns_zone_id** | string | False | -  |  -  | Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created. | 
| **var.private_cluster_public_fqdn_enabled** | bool | False | `False`  |  -  | Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to `false`. | 
| **var.service_mesh_profile** | block | False | -  |  -  | A `service_mesh_profile` block. | 
| **var.workload_autoscaler_profile** | block | False | -  |  -  | A `workload_autoscaler_profile` block defined below. | 
| **var.workload_identity_enabled** | bool | False | `False`  |  -  | Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to `false`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this Kubernetes Cluster. Defaults to `true`. | 
| **var.role_based_access_control_enabled** | bool | False | `True`  |  -  | Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to `true`. Changing this forces a new resource to be created. | 
| **var.run_command_enabled** | bool | False | `True`  |  -  | Whether to enable run command for the cluster or not. Defaults to `true`. | 
| **var.service_principal** | block | False | -  |  -  | A `service_principal` block. One of either `identity` or `service_principal` must be specified. | 
| **var.sku_tier** | string | False | `Free`  |  `Free`, `Standard`  | The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, and `Standard` (which includes the Uptime SLA). Defaults to `Free`. | 
| **var.storage_profile** | block | False | -  |  -  | A `storage_profile` block. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **var.web_app_routing** | block | False | -  |  -  | A `web_app_routing` block. | 
| **var.windows_profile** | block | False | -  |  -  | A `windows_profile` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **default_node_pool** | block  | - | 
| **dns_prefix** | string  | - | 
| **dns_prefix_private_cluster** | string  | - | 
| **aci_connector_linux** | block  | - | 
| **automatic_channel_upgrade** | string  | - | 
| **api_server_access_profile** | block  | - | 
| **auto_scaler_profile** | block  | - | 
| **azure_active_directory_role_based_access_control** | block  | - | 
| **azure_policy_enabled** | bool  | - | 
| **confidential_computing** | block  | - | 
| **custom_ca_trust_certificates_base64** | list  | - | 
| **disk_encryption_set_id** | string  | - | 
| **edge_zone** | string  | - | 
| **http_application_routing_enabled** | bool  | - | 
| **http_proxy_config** | block  | - | 
| **identity** | block  | - | 
| **image_cleaner_enabled** | bool  | - | 
| **image_cleaner_interval_hours** | string  | - | 
| **ingress_application_gateway** | block  | - | 
| **key_management_service** | block  | - | 
| **key_vault_secrets_provider** | block  | - | 
| **kubelet_identity** | block  | - | 
| **kubernetes_version** | string  | - | 
| **linux_profile** | block  | - | 
| **local_account_disabled** | bool  | - | 
| **maintenance_window** | block  | - | 
| **maintenance_window_auto_upgrade** | block  | - | 
| **maintenance_window_node_os** | block  | - | 
| **microsoft_defender** | block  | - | 
| **monitor_metrics** | block  | - | 
| **network_profile** | block  | - | 
| **node_os_channel_upgrade** | string  | - | 
| **node_resource_group** | string  | - | 
| **oidc_issuer_enabled** | bool  | - | 
| **oms_agent** | block  | - | 
| **open_service_mesh_enabled** | bool  | - | 
| **private_cluster_enabled** | bool  | - | 
| **private_dns_zone_id** | string  | - | 
| **private_cluster_public_fqdn_enabled** | bool  | - | 
| **service_mesh_profile** | block  | - | 
| **workload_autoscaler_profile** | block  | - | 
| **workload_identity_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **role_based_access_control_enabled** | bool  | - | 
| **run_command_enabled** | bool  | - | 
| **service_principal** | block  | - | 
| **sku_tier** | string  | - | 
| **storage_profile** | block  | - | 
| **tags** | map  | - | 
| **web_app_routing** | block  | - | 
| **windows_profile** | block  | - | 
| **id** | string  | The Kubernetes Managed Cluster ID. | 
| **fqdn** | string  | The FQDN of the Azure Kubernetes Managed Cluster. | 
| **private_fqdn** | string  | The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster. | 
| **portal_fqdn** | string  | The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster. | 
| **kube_admin_config** | block  | A `kube_admin_config` block. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled. | 
| **kube_admin_config_raw** | string  | Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled. | 
| **kube_config** | block  | A `kube_config` block. | 
| **kube_config_raw** | string  | Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. | 
| **http_application_routing_zone_name** | string  | The Zone Name of the HTTP Application Routing. | 
| **oidc_issuer_url** | string  | The OIDC issuer URL that is associated with the cluster. | 
| **node_resource_group** | string  | The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster. | 
| **node_resource_group_id** | string  | The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster. | 
| **network_profile** | block  | A `network_profile` block. | 
| **ingress_application_gateway** | block  | An `ingress_application_gateway` block. | 
| **oms_agent** | block  | An `oms_agent` block. | 
| **key_vault_secrets_provider** | block  | A `key_vault_secrets_provider` block. | 
| **connector_identity** | block  | A `connector_identity` block is exported. The exported attributes are defined below. | 
| **client_id** | string  | The Client ID of the user-defined Managed Identity used for Web App Routing. | 
| **object_id** | string  | The Object ID of the user-defined Managed Identity used for Web App Routing | 
| **user_assigned_identity_id** | string  | The ID of the User Assigned Identity used for Web App Routing. | 
| **effective_outbound_ips** | string  | The outcome (resource IDs) of the specified arguments. | 
| **nat_gateway_profile** | block  | A `nat_gateway_profile` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 
| **client_key** | string  | Base64 encoded private key used by clients to authenticate to the Kubernetes cluster. | 
| **client_certificate** | string  | Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster. | 
| **cluster_ca_certificate** | string  | Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster. | 
| **host** | string  | The Kubernetes cluster server host. | 
| **username** | string  | A username used to authenticate to the Kubernetes cluster. | 
| **password** | string  | A password or token used to authenticate to the Kubernetes cluster. | 
| **effective_gateway_id** | string  | The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster. | 
| **ingress_application_gateway_identity** | block  | An `ingress_application_gateway_identity` block is exported. The exported attributes are defined below. | 
| **oms_agent_identity** | block  | An `oms_agent_identity` block is exported. The exported attributes are defined below. | 
| **secret_identity** | block  | An `secret_identity` block is exported. The exported attributes are defined below. | 
| **web_app_routing_identity** | block  | A `web_app_routing_identity` block is exported. The exported attributes are defined below. | 
| **vertical_pod_autoscaler_controlled_values** | string  | Which resources values should be controlled. | 
| **vertical_pod_autoscaler_update_mode** | string  | How the autoscaler applies changes to pod resources. | 