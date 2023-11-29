# azurerm_kubernetes_cluster

Manages a Managed Kubernetes Cluster (also known as AKS / Azure Kubernetes Service)-> **Note:** Due to the fast-moving nature of AKS, we recommend using the latest version of the Azure Provider when using AKS - you can find [the latest version of the Azure Provider here](https://registry.terraform.io/providers/hashicorp/azurerm/latest).~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **default_node_pool** | block | True | -  |  -  | A `default_node_pool` block. | 
| **dns_prefix** | string | False | -  |  -  | DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created. | 
| **dns_prefix_private_cluster** | string | False | -  |  -  | Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created. | 
| **aci_connector_linux** | block | False | -  |  -  | A `aci_connector_linux` block. For more details, please visit [Create and configure an AKS cluster to use virtual nodes](https://docs.microsoft.com/azure/aks/virtual-nodes-portal). | 
| **automatic_channel_upgrade** | string | False | -  |  `patch`, `rapid`, `node-image`, `stable`  | The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. Omitting this field sets this value to `none`. | 
| **api_server_access_profile** | block | False | -  |  -  | An `api_server_access_profile` block. | 
| **auto_scaler_profile** | block | False | -  |  -  | A `auto_scaler_profile` block. | 
| **azure_active_directory_role_based_access_control** | block | False | -  |  -  | A `azure_active_directory_role_based_access_control` block. | 
| **azure_policy_enabled** | bool | False | -  |  -  | Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks) | 
| **confidential_computing** | block | False | -  |  -  | A `confidential_computing` block. For more details please [the documentation](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-nodes-aks-overview) | 
| **custom_ca_trust_certificates_base64** | list | False | -  |  -  | A list of up to 10 base64 encoded CAs that will be added to the trust store on nodes with the `custom_ca_trust_enabled` feature enabled. | 
| **disk_encryption_set_id** | string | False | -  |  -  | The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created. | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **http_application_routing_enabled** | bool | False | -  |  -  | Should HTTP Application Routing be enabled? | 
| **http_proxy_config** | block | False | -  |  -  | A `http_proxy_config` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. One of either `identity` or `service_principal` must be specified. | 
| **image_cleaner_enabled** | bool | False | -  |  -  | Specifies whether Image Cleaner is enabled. | 
| **image_cleaner_interval_hours** | string | False | `48`  |  -  | Specifies the interval in hours when images should be cleaned up. Defaults to `48`. | 
| **ingress_application_gateway** | block | False | -  |  -  | A `ingress_application_gateway` block. | 
| **key_management_service** | block | False | -  |  -  | A `key_management_service` block. For more details, please visit [Key Management Service (KMS) etcd encryption to an AKS cluster](https://learn.microsoft.com/en-us/azure/aks/use-kms-etcd-encryption). | 
| **key_vault_secrets_provider** | block | False | -  |  -  | A `key_vault_secrets_provider` block. For more details, please visit [Azure Keyvault Secrets Provider for AKS](https://docs.microsoft.com/azure/aks/csi-secrets-store-driver). | 
| **kubelet_identity** | block | False | -  |  -  | A `kubelet_identity` block. | 
| **kubernetes_version** | string | False | -  |  -  | Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). | 
| **linux_profile** | block | False | -  |  -  | A `linux_profile` block. | 
| **local_account_disabled** | bool | False | -  |  -  | If `true` local accounts will be disabled. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information. | 
| **maintenance_window** | block | False | -  |  -  | A `maintenance_window` block. | 
| **maintenance_window_auto_upgrade** | block | False | -  |  -  | A `maintenance_window_auto_upgrade` block. | 
| **maintenance_window_node_os** | block | False | -  |  -  | A `maintenance_window_node_os` block. | 
| **microsoft_defender** | block | False | -  |  -  | A `microsoft_defender` block. | 
| **monitor_metrics** | block | False | -  |  -  | Specifies a Prometheus add-on profile for the Kubernetes Cluster. A `monitor_metrics` block. | 
| **network_profile** | block | False | -  |  -  | A `network_profile` block. Changing this forces a new resource to be created. | 
| **node_os_channel_upgrade** | string | False | -  |  `Unmanaged`, `SecurityPatch`, `NodeImage`, `None`  | The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`. | 
| **node_resource_group** | string | False | -  |  -  | The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created. | 
| **oidc_issuer_enabled** | bool | False | -  |  -  | Enable or Disable the [OIDC issuer URL](https://learn.microsoft.com/en-gb/azure/aks/use-oidc-issuer) | 
| **oms_agent** | block | False | -  |  -  | A `oms_agent` block. | 
| **open_service_mesh_enabled** | bool | False | -  |  -  | Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about). | 
| **private_cluster_enabled** | bool | False | `False`  |  -  | Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to `false`. Changing this forces a new resource to be created. | 
| **private_dns_zone_id** | string | False | -  |  -  | Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created. | 
| **private_cluster_public_fqdn_enabled** | bool | False | `False`  |  -  | Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to `false`. | 
| **service_mesh_profile** | block | False | -  |  -  | A `service_mesh_profile` block. | 
| **workload_autoscaler_profile** | block | False | -  |  -  | A `workload_autoscaler_profile` block defined below. | 
| **workload_identity_enabled** | bool | False | `False`  |  -  | Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to `false`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this Kubernetes Cluster. Defaults to `true`. | 
| **role_based_access_control_enabled** | bool | False | `True`  |  -  | Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to `true`. Changing this forces a new resource to be created. | 
| **run_command_enabled** | bool | False | `True`  |  -  | Whether to enable run command for the cluster or not. Defaults to `true`. | 
| **service_principal** | block | False | -  |  -  | A `service_principal` block. One of either `identity` or `service_principal` must be specified. | 
| **sku_tier** | string | False | `Free`  |  `Free`, `Standard`  | The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, and `Standard` (which includes the Uptime SLA). Defaults to `Free`. | 
| **storage_profile** | block | False | -  |  -  | A `storage_profile` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **web_app_routing** | block | False | -  |  -  | A `web_app_routing` block. | 
| **windows_profile** | block | False | -  |  -  | A `windows_profile` block. | 

