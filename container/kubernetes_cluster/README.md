# azurerm_kubernetes_cluster

Manages a Managed Kubernetes Cluster (also known as AKS / Azure Kubernetes Service)-> **Note:** Due to the fast-moving nature of AKS, we recommend using the latest version of the Azure Provider when using AKS - you can find [the latest version of the Azure Provider here](https://registry.terraform.io/providers/hashicorp/azurerm/latest).~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/kubernetes_cluster" 
}

inputs = {
   name = "name of kubernetes_cluster" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   default_node_pool = {
      example_default_node_pool = {
         vm_size = "..."   
         capacity_reservation_group_id = "TODO link to compute.capacity_reservation_group.id"   
         host_group_id = "TODO link to compute.dedicated_host_group.id"   
         node_public_ip_prefix_id = "TODO link to network.public_ip_prefix.id"   
         pod_subnet_id = "TODO link to network.subnet.id"   
         proximity_placement_group_id = "TODO link to compute.proximity_placement_group.id"   
         snapshot_id = "TODO link to compute.snapshot.id"   
         vnet_subnet_id = "TODO link to network.subnet.id"   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | 
| **location** | string |  The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **default_node_pool** | [block](#default_node_pool-block-structure) |  A `default_node_pool` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **dns_prefix** | string |  -  |  -  |  DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created. | 
| **dns_prefix_private_cluster** | string |  -  |  -  |  Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created. | 
| **aci_connector_linux** | [block](#aci_connector_linux-block-structure) |  -  |  -  |  A `aci_connector_linux` block. For more details, please visit [Create and configure an AKS cluster to use virtual nodes](https://docs.microsoft.com/azure/aks/virtual-nodes-portal). | 
| **automatic_channel_upgrade** | string |  -  |  `patch`, `rapid`, `node-image`, `stable`  |  The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. Omitting this field sets this value to `none`. | 
| **api_server_access_profile** | [block](#api_server_access_profile-block-structure) |  -  |  -  |  An `api_server_access_profile` block. | 
| **auto_scaler_profile** | [block](#auto_scaler_profile-block-structure) |  -  |  -  |  A `auto_scaler_profile` block. | 
| **azure_active_directory_role_based_access_control** | [block](#azure_active_directory_role_based_access_control-block-structure) |  -  |  -  |  A `azure_active_directory_role_based_access_control` block. | 
| **azure_policy_enabled** | bool |  -  |  -  |  Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks) | 
| **confidential_computing** | [block](#confidential_computing-block-structure) |  -  |  -  |  A `confidential_computing` block. For more details please [the documentation](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-nodes-aks-overview) | 
| **custom_ca_trust_certificates_base64** | list |  -  |  -  |  A list of up to 10 base64 encoded CAs that will be added to the trust store on nodes with the `custom_ca_trust_enabled` feature enabled. | 
| **disk_encryption_set_id** | string |  -  |  -  |  The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **http_application_routing_enabled** | bool |  -  |  -  |  Should HTTP Application Routing be enabled? | 
| **http_proxy_config** | [block](#http_proxy_config-block-structure) |  -  |  -  |  A `http_proxy_config` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. One of either `identity` or `service_principal` must be specified. | 
| **image_cleaner_enabled** | bool |  -  |  -  |  Specifies whether Image Cleaner is enabled. | 
| **image_cleaner_interval_hours** | string |  `48`  |  -  |  Specifies the interval in hours when images should be cleaned up. Defaults to `48`. | 
| **ingress_application_gateway** | [block](#ingress_application_gateway-block-structure) |  -  |  -  |  A `ingress_application_gateway` block. | 
| **key_management_service** | [block](#key_management_service-block-structure) |  -  |  -  |  A `key_management_service` block. For more details, please visit [Key Management Service (KMS) etcd encryption to an AKS cluster](https://learn.microsoft.com/en-us/azure/aks/use-kms-etcd-encryption). | 
| **key_vault_secrets_provider** | [block](#key_vault_secrets_provider-block-structure) |  -  |  -  |  A `key_vault_secrets_provider` block. For more details, please visit [Azure Keyvault Secrets Provider for AKS](https://docs.microsoft.com/azure/aks/csi-secrets-store-driver). | 
| **kubelet_identity** | [block](#kubelet_identity-block-structure) |  -  |  -  |  A `kubelet_identity` block. | 
| **kubernetes_version** | string |  -  |  -  |  Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). | 
| **linux_profile** | [block](#linux_profile-block-structure) |  -  |  -  |  A `linux_profile` block. | 
| **local_account_disabled** | bool |  -  |  -  |  If `true` local accounts will be disabled. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information. | 
| **maintenance_window** | [block](#maintenance_window-block-structure) |  -  |  -  |  A `maintenance_window` block. | 
| **maintenance_window_auto_upgrade** | [block](#maintenance_window_auto_upgrade-block-structure) |  -  |  -  |  A `maintenance_window_auto_upgrade` block. | 
| **maintenance_window_node_os** | [block](#maintenance_window_node_os-block-structure) |  -  |  -  |  A `maintenance_window_node_os` block. | 
| **microsoft_defender** | [block](#microsoft_defender-block-structure) |  -  |  -  |  A `microsoft_defender` block. | 
| **monitor_metrics** | [block](#monitor_metrics-block-structure) |  -  |  -  |  Specifies a Prometheus add-on profile for the Kubernetes Cluster. A `monitor_metrics` block. | 
| **network_profile** | [block](#network_profile-block-structure) |  -  |  -  |  A `network_profile` block. Changing this forces a new resource to be created. | 
| **node_os_channel_upgrade** | string |  -  |  `Unmanaged`, `SecurityPatch`, `NodeImage`, `None`  |  The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`. | 
| **node_resource_group** | string |  -  |  -  |  The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created. | 
| **oidc_issuer_enabled** | bool |  -  |  -  |  Enable or Disable the [OIDC issuer URL](https://learn.microsoft.com/en-gb/azure/aks/use-oidc-issuer) | 
| **oms_agent** | [block](#oms_agent-block-structure) |  -  |  -  |  A `oms_agent` block. | 
| **open_service_mesh_enabled** | bool |  -  |  -  |  Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about). | 
| **private_cluster_enabled** | bool |  `False`  |  -  |  Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to `false`. Changing this forces a new resource to be created. | 
| **private_dns_zone_id** | string |  -  |  -  |  Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created. | 
| **private_cluster_public_fqdn_enabled** | bool |  `False`  |  -  |  Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to `false`. | 
| **service_mesh_profile** | [block](#service_mesh_profile-block-structure) |  -  |  -  |  A `service_mesh_profile` block. | 
| **workload_autoscaler_profile** | [block](#workload_autoscaler_profile-block-structure) |  -  |  -  |  A `workload_autoscaler_profile` block defined below. | 
| **workload_identity_enabled** | bool |  `False`  |  -  |  Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to `false`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether public network access is allowed for this Kubernetes Cluster. Defaults to `true`. | 
| **role_based_access_control_enabled** | bool |  `True`  |  -  |  Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to `true`. Changing this forces a new resource to be created. | 
| **run_command_enabled** | bool |  `True`  |  -  |  Whether to enable run command for the cluster or not. Defaults to `true`. | 
| **service_principal** | [block](#service_principal-block-structure) |  -  |  -  |  A `service_principal` block. One of either `identity` or `service_principal` must be specified. | 
| **sku_tier** | string |  `Free`  |  `Free`, `Standard`  |  The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, and `Standard` (which includes the Uptime SLA). Defaults to `Free`. | 
| **storage_profile** | [block](#storage_profile-block-structure) |  -  |  -  |  A `storage_profile` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **web_app_routing** | [block](#web_app_routing-block-structure) |  -  |  -  |  A `web_app_routing` block. | 
| **windows_profile** | [block](#windows_profile-block-structure) |  -  |  -  |  A `windows_profile` block. | 

### `microsoft_defender` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | Specifies the ID of the Log Analytics Workspace where the audit logs collected by Microsoft Defender should be sent to. |

### `maintenance_window_auto_upgrade` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frequency` | string | Yes | - | Frequency of maintenance. Possible options are 'Weekly', 'AbsoluteMonthly' and 'RelativeMonthly'. |
| `interval` | string | Yes | - | The interval for maintenance runs. Depending on the frequency this interval is week or month based. |
| `duration` | string | Yes | - | The duration of the window for maintenance to run in hours. |
| `day_of_week` | string | No | - | The day of the week for the maintenance run. Required in combination with weekly frequency. Possible values are 'Friday', 'Monday', 'Saturday', 'Sunday', 'Thursday', 'Tuesday' and 'Wednesday'. |
| `day_of_month` | string | No | - | The day of the month for the maintenance run. Required in combination with RelativeMonthly frequency. Value between 0 and 31 (inclusive). |
| `week_index` | string | No | - | Specifies on which instance of the allowed days specified in 'day_of_week' the maintenance occurs. Options are 'First', 'Second', 'Third', 'Fourth', and 'Last'. Required in combination with relative monthly frequency. |
| `start_time` | string | No | - | The time for maintenance to begin, based on the timezone determined by 'utc_offset'. Format is 'HH:mm'. |
| `utc_offset` | string | No | - | Used to determine the timezone for cluster maintenance. |
| `start_date` | datetime | No | - | The date on which the maintenance window begins to take effect. |
| `not_allowed` | [block](#maintenance_window_auto_upgrade-block-structure) | No | - | One or more 'not_allowed' block. |

### `ingress_application_gateway` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `gateway_id` | string | No | - | The ID of the Application Gateway to integrate with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-existing) page for further details. |
| `gateway_name` | string | No | - | The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details. |
| `subnet_cidr` | string | No | - | The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details. |
| `subnet_id` | string | No | - | The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details. |

### `node_network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `node_public_ip_tags` | map | No | - | Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created. |

### `service_principal` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | Yes | - | The Client ID for the Service Principal. |
| `client_secret` | string | Yes | - | The Client Secret for the Service Principal. |

### `api_server_access_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `authorized_ip_ranges` | string | No | - | Set of authorized IP ranges to allow access to API server, e.g. ['198.51.100.0/24']. |
| `subnet_id` | string | No | - | The ID of the Subnet where the API server endpoint is delegated to. |
| `vnet_integration_enabled` | bool | No | - | Should API Server VNet Integration be enabled? For more details please visit [Use API Server VNet Integration](https://learn.microsoft.com/en-us/azure/aks/api-server-vnet-integration). |

### `default_node_pool` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `vm_size` | string | Yes | - | The size of the Virtual Machine, such as 'Standard_DS2_v2'. 'temporary_name_for_rotation' must be specified when attempting a resize. |
| `capacity_reservation_group_id` | string | No | - | Specifies the ID of the Capacity Reservation Group within which this AKS Cluster should be created. Changing this forces a new resource to be created. |
| `custom_ca_trust_enabled` | bool | No | - | Specifies whether to trust a Custom CA. |
| `enable_auto_scaling` | bool | No | - | Should [the Kubernetes Auto Scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler) be enabled for this Node Pool? |
| `enable_host_encryption` | bool | No | - | Should the nodes in the Default Node Pool have host encryption enabled? 'temporary_name_for_rotation' must be specified when changing this property. |
| `enable_node_public_ip` | bool | No | - | Should nodes in this Node Pool have a Public IP Address? 'temporary_name_for_rotation' must be specified when changing this property. |
| `gpu_instance` | string | No | - | Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are 'MIG1g', 'MIG2g', 'MIG3g', 'MIG4g' and 'MIG7g'. Changing this forces a new resource to be created. |
| `host_group_id` | string | No | - | Specifies the ID of the Host Group within which this AKS Cluster should be created. Changing this forces a new resource to be created. |
| `kubelet_config` | [block](#default_node_pool-block-structure) | No | - | A 'kubelet_config' block. 'temporary_name_for_rotation' must be specified when changing this block. |
| `linux_os_config` | [block](#default_node_pool-block-structure) | No | - | A 'linux_os_config' block. 'temporary_name_for_rotation' must be specified when changing this block. |
| `fips_enabled` | bool | No | - | Should the nodes in this Node Pool have Federal Information Processing Standard enabled? 'temporary_name_for_rotation' must be specified when changing this block. |
| `kubelet_disk_type` | string | No | - | The type of disk used by kubelet. Possible values are 'OS' and 'Temporary'. |
| `max_pods` | int | No | - | The maximum number of pods that can run on each agent. 'temporary_name_for_rotation' must be specified when changing this property. |
| `message_of_the_day` | string | No | - | A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It cannot be specified for Windows nodes and must be a static string (i.e. will be printed raw and not executed as a script). Changing this forces a new resource to be created. |
| `node_network_profile` | [block](#default_node_pool-block-structure) | No | - | A 'node_network_profile' block. |
| `node_public_ip_prefix_id` | string | No | - | Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. 'enable_node_public_ip' should be 'true'. Changing this forces a new resource to be created. |
| `node_labels` | string | No | - | A map of Kubernetes labels which should be applied to nodes in the Default Node Pool. |
| `node_taints` | list | No | - | A list of the taints added to new nodes during node pool create and scale. 'temporary_name_for_rotation' must be specified when changing this property. |
| `only_critical_addons_enabled` | bool | No | - | Enabling this option will taint default node pool with 'CriticalAddonsOnly=true:NoSchedule' taint. 'temporary_name_for_rotation' must be specified when changing this property. |
| `orchestrator_version` | string | No | - | Version of Kubernetes used for the Agents. If not specified, the default node pool will be created with the version specified by 'kubernetes_version'. If both are unspecified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as '1.22' are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). |
| `os_disk_size_gb` | int | No | - | The size of the OS Disk which should be used for each agent in the Node Pool. 'temporary_name_for_rotation' must be specified when attempting a change. |
| `os_disk_type` | string | No | Managed | The type of disk which should be used for the Operating System. Possible values are 'Ephemeral' and 'Managed'. Defaults to 'Managed'. 'temporary_name_for_rotation' must be specified when attempting a change. |
| `os_sku` | string | No | Ubuntu | Specifies the OS SKU used by the agent pool. Possible values are 'AzureLinux', 'CBLMariner', 'Mariner', 'Ubuntu', 'Windows2019' and 'Windows2022'. If not specified, the default is 'Ubuntu' if OSType=Linux or 'Windows2019' if OSType=Windows. And the default Windows OSSKU will be changed to 'Windows2022' after Windows2019 is deprecated. 'temporary_name_for_rotation' must be specified when attempting a change. |
| `pod_subnet_id` | string | No | - | The ID of the Subnet where the pods in the default Node Pool should exist. |
| `proximity_placement_group_id` | string | No | - | The ID of the Proximity Placement Group. Changing this forces a new resource to be created. |
| `scale_down_mode` | string | No | Delete | Specifies the autoscaling behaviour of the Kubernetes Cluster. Allowed values are 'Delete' and 'Deallocate'. Defaults to 'Delete'. |
| `snapshot_id` | string | No | - | The ID of the Snapshot which should be used to create this default Node Pool. 'temporary_name_for_rotation' must be specified when changing this property. |
| `temporary_name_for_rotation` | string | No | - | Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing. |
| `type` | string | No | VirtualMachineScaleSets | The type of Node Pool which should be created. Possible values are 'AvailabilitySet' and 'VirtualMachineScaleSets'. Defaults to 'VirtualMachineScaleSets'. Changing this forces a new resource to be created. |
| `tags` | map | No | - | A mapping of tags to assign to the Node Pool. |
| `ultra_ssd_enabled` | bool | No | False | Used to specify whether the UltraSSD is enabled in the Default Node Pool. Defaults to 'false'. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. 'temporary_name_for_rotation' must be specified when attempting a change. |
| `upgrade_settings` | [block](#default_node_pool-block-structure) | No | - | A 'upgrade_settings' block. |
| `vnet_subnet_id` | string | No | - | The ID of a Subnet where the Kubernetes Node Pool should exist. |
| `workload_runtime` | string | No | - | Specifies the workload runtime used by the node pool. Possible values are 'OCIContainer' and 'KataMshvVmIsolation'. |
| `zones` | string | No | - | Specifies a list of Availability Zones in which this Kubernetes Cluster should be located. 'temporary_name_for_rotation' must be specified when changing this property. |
| `max_count` | int | No | - | The maximum number of nodes which should exist in this Node Pool. If specified this must be between '1' and '1000'. |
| `min_count` | int | No | - | The minimum number of nodes which should exist in this Node Pool. If specified this must be between '1' and '1000'. |
| `node_count` | int | No | - | The initial number of nodes which should exist in this Node Pool. If specified this must be between '1' and '1000' and between 'min_count' and 'max_count'. |

### `allowed` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day` | string | Yes | - | A day in a week. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |
| `hours` | string | Yes | - | An array of hour slots in a day. For example, specifying '1' will allow maintenance from 1:00am to 2:00am. Specifying '1', '2' will allow maintenance from 1:00am to 3:00m. Possible values are between '0' and '23'. |

### `ssh_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_data` | string | Yes | - | The Public SSH Key used to access the cluster. |

### `monitor_metrics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `annotations_allowed` | bool | No | - | Specifies a comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric. |
| `labels_allowed` | bool | No | - | Specifies a Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric. |

### `oms_agent` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | The ID of the Log Analytics Workspace which the OMS Agent should send data to. |
| `msi_auth_for_monitoring_enabled` | bool | No | - | Is managed identity authentication for monitoring enabled? |

### `network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `network_plugin` | string | Yes | - | Network plugin to use for networking. Currently supported values are 'azure', 'kubenet' and 'none'. Changing this forces a new resource to be created. |
| `network_mode` | string | No | - | Network mode to be used with Azure CNI. Possible values are 'bridge' and 'transparent'. Changing this forces a new resource to be created. |
| `network_policy` | string | No | - | Sets up network policy to be used with Azure CNI. [Network policy allows us to control the traffic flow between pods](https://docs.microsoft.com/azure/aks/use-network-policies). Currently supported values are 'calico', 'azure' and 'cilium'. |
| `dns_service_ip` | string | No | - | IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created. |
| `docker_bridge_cidr` | string | No | - | IP address (in CIDR notation) used as the Docker bridge IP address on nodes. Changing this forces a new resource to be created. |
| `ebpf_data_plane` | string | No | - | Specifies the eBPF data plane used for building the Kubernetes network. Possible value is 'cilium'. Disabling this forces a new resource to be created. |
| `network_plugin_mode` | string | No | - | Specifies the network plugin mode used for building the Kubernetes network. Possible value is 'overlay'. |
| `outbound_type` | string | No | loadBalancer | The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are 'loadBalancer', 'userDefinedRouting', 'managedNATGateway' and 'userAssignedNATGateway'. Defaults to 'loadBalancer'. Changing this forces a new resource to be created. |
| `pod_cidr` | string | No | - | The CIDR to use for pod IP addresses. This field can only be set when 'network_plugin' is set to 'kubenet'. Changing this forces a new resource to be created. |
| `pod_cidrs` | list | No | - | A list of CIDRs to use for pod IP addresses. For single-stack networking a single IPv4 CIDR is expected. For dual-stack networking an IPv4 and IPv6 CIDR are expected. Changing this forces a new resource to be created. |
| `service_cidr` | string | No | - | The Network Range used by the Kubernetes service. Changing this forces a new resource to be created. |
| `service_cidrs` | list | No | - | A list of CIDRs to use for Kubernetes services. For single-stack networking a single IPv4 CIDR is expected. For dual-stack networking an IPv4 and IPv6 CIDR are expected. Changing this forces a new resource to be created. |
| `ip_versions` | string | No | - | Specifies a list of IP versions the Kubernetes Cluster will use to assign IP addresses to its nodes and pods. Possible values are 'IPv4' and/or 'IPv6'. 'IPv4' must always be specified. Changing this forces a new resource to be created. |
| `load_balancer_sku` | string | No | standard | Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are 'basic' and 'standard'. Defaults to 'standard'. Changing this forces a new resource to be created. |
| `load_balancer_profile` | [block](#network_profile-block-structure) | No | - | A 'load_balancer_profile' block. This can only be specified when 'load_balancer_sku' is set to 'standard'. Changing this forces a new resource to be created. |
| `nat_gateway_profile` | [block](#network_profile-block-structure) | No | - | A 'nat_gateway_profile' block. This can only be specified when 'load_balancer_sku' is set to 'standard' and 'outbound_type' is set to 'managedNATGateway' or 'userAssignedNATGateway'. Changing this forces a new resource to be created. |

### `storage_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `blob_driver_enabled` | bool | No | False | Is the Blob CSI driver enabled? Defaults to 'false'. |
| `disk_driver_enabled` | bool | No | True | Is the Disk CSI driver enabled? Defaults to 'true'. |
| `disk_driver_version` | string | No | v1 | Disk CSI Driver version to be used. Possible values are 'v1' and 'v2'. Defaults to 'v1'. |
| `file_driver_enabled` | bool | No | True | Is the File CSI driver enabled? Defaults to 'true'. |
| `snapshot_controller_enabled` | bool | No | True | Is the Snapshot Controller enabled? Defaults to 'true'. |

### `web_app_routing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_zone_id` | string | Yes | - | Specifies the ID of the DNS Zone in which DNS entries are created for applications deployed to the cluster when Web App Routing is enabled. For Bring-Your-Own DNS zones this property should be set to an empty string ''''. |

### `service_mesh_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The mode of the service mesh. Possible value is 'Istio'. |
| `internal_ingress_gateway_enabled` | bool | No | - | Is Istio Internal Ingress Gateway enabled? |
| `external_ingress_gateway_enabled` | bool | No | - | Is Istio External Ingress Gateway enabled? |

### `http_proxy_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `http_proxy` | string | No | - | The proxy address to be used when communicating over HTTP. |
| `https_proxy` | string | No | - | The proxy address to be used when communicating over HTTPS. |
| `no_proxy` | string | No | - | The list of domains that will not use the proxy for communication. |
| `trusted_ca` | string | No | - | The base64 encoded alternative CA certificate content in PEM format. |

### `aci_connector_linux` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_name` | string | Yes | - | The subnet name for the virtual nodes to run. |

### `linux_os_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `swap_file_size_mb` | int | No | - | Specifies the size of the swap file on each node in MB. |
| `sysctl_config` | [block](#linux_os_config-block-structure) | No | - | A 'sysctl_config' block. Changing this forces a new resource to be created. |
| `transparent_huge_page_defrag` | string | No | - | specifies the defrag configuration for Transparent Huge Page. Possible values are 'always', 'defer', 'defer+madvise', 'madvise' and 'never'. |
| `transparent_huge_page_enabled` | string | No | - | Specifies the Transparent Huge Page enabled configuration. Possible values are 'always', 'madvise' and 'never'. |

### `maintenance_window` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed` | [block](#maintenance_window-block-structure) | No | - | One or more 'allowed' blocks. |
| `not_allowed` | [block](#maintenance_window-block-structure) | No | - | One or more 'not_allowed' block. |

### `auto_scaler_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `balance_similar_node_groups` | bool | No | False | Detect similar node groups and balance the number of nodes between them. Defaults to 'false'. |
| `expander` | string | No | random | Expander to use. Possible values are 'least-waste', 'priority', 'most-pods' and 'random'. Defaults to 'random'. |
| `max_graceful_termination_sec` | int | No | 600 | Maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. Defaults to '600'. |
| `max_node_provisioning_time` | string | No | 15m | Maximum time the autoscaler waits for a node to be provisioned. Defaults to '15m'. |
| `max_unready_nodes` | int | No | 3 | Maximum Number of allowed unready nodes. Defaults to '3'. |
| `max_unready_percentage` | string | No | 45 | Maximum percentage of unready nodes the cluster autoscaler will stop if the percentage is exceeded. Defaults to '45'. |
| `new_pod_scale_up_delay` | string | No | 10s | For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. Defaults to '10s'. |
| `scale_down_delay_after_add` | string | No | 10m | How long after the scale up of AKS nodes the scale down evaluation resumes. Defaults to '10m'. |
| `scale_down_delay_after_delete` | string | No | scan_interval | How long after node deletion that scale down evaluation resumes. Defaults to the value used for 'scan_interval'. |
| `scale_down_delay_after_failure` | string | No | 3m | How long after scale down failure that scale down evaluation resumes. Defaults to '3m'. |
| `scan_interval` | string | No | 10s | How often the AKS Cluster should be re-evaluated for scale up/down. Defaults to '10s'. |
| `scale_down_unneeded` | string | No | 10m | How long a node should be unneeded before it is eligible for scale down. Defaults to '10m'. |
| `scale_down_unready` | string | No | 20m | How long an unready node should be unneeded before it is eligible for scale down. Defaults to '20m'. |
| `scale_down_utilization_threshold` | string | No | 0.5 | Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. Defaults to '0.5'. |
| `empty_bulk_delete_max` | int | No | 10 | Maximum number of empty nodes that can be deleted at the same time. Defaults to '10'. |
| `skip_nodes_with_local_storage` | bool | No | True | If 'true' cluster autoscaler will never delete nodes with pods with local storage, for example, EmptyDir or HostPath. Defaults to 'true'. |
| `skip_nodes_with_system_pods` | bool | No | True | If 'true' cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Defaults to 'true'. |

### `linux_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_username` | string | Yes | - | The Admin Username for the Cluster. Changing this forces a new resource to be created. |
| `ssh_key` | [block](#linux_profile-block-structure) | Yes | - | An 'ssh_key' block. Only one is currently allowed. Changing this will update the key on all node pools. More information can be found in [the documentation](https://learn.microsoft.com/en-us/azure/aks/node-access#update-ssh-key-on-an-existing-aks-cluster-preview). |

### `key_vault_secrets_provider` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_rotation_enabled` | bool | No | - | Should the secret store CSI driver on the AKS cluster be enabled? |
| `secret_rotation_interval` | string | No | 2m | The interval to poll for secret rotation. This attribute is only set when 'secret_rotation' is true. Defaults to '2m'. |

### `confidential_computing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `sgx_quote_helper_enabled` | bool | Yes | - | Should the SGX quote helper be enabled? |

### `upgrade_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_surge` | string | Yes | - | The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade. |

### `kubelet_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | No | - | The Client ID of the user-defined Managed Identity to be assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created. |
| `object_id` | string | No | - | The Object ID of the user-defined Managed Identity assigned to the Kubelets.If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created. |
| `user_assigned_identity_id` | string | No | - | The ID of the User Assigned Identity assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created. |

### `azure_active_directory_role_based_access_control` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `managed` | string | No | - | Is the Azure Active Directory integration Managed, meaning that Azure will create/manage the Service Principal used for integration. |
| `tenant_id` | string | No | - | The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used. |
| `admin_group_object_ids` | list | No | - | A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster. |
| `azure_rbac_enabled` | bool | No | - | Is Role Based Access Control based on Azure AD enabled? |
| `client_app_id` | string | No | - | The Client ID of an Azure Active Directory Application. |
| `server_app_id` | string | No | - | The Server ID of an Azure Active Directory Application. |
| `server_app_secret` | string | No | - | The Server Secret of an Azure Active Directory Application. |

### `maintenance_window_node_os` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frequency` | string | Yes | - | Frequency of maintenance. Possible options are 'Daily', 'Weekly', 'AbsoluteMonthly' and 'RelativeMonthly'. |
| `interval` | string | Yes | - | The interval for maintenance runs. Depending on the frequency this interval is week or month based. |
| `duration` | string | Yes | - | The duration of the window for maintenance to run in hours. |
| `day_of_week` | string | No | - | The day of the week for the maintenance run. Required in combination with weekly frequency. Possible values are 'Friday', 'Monday', 'Saturday', 'Sunday', 'Thursday', 'Tuesday' and 'Wednesday'. |
| `day_of_month` | string | No | - | The day of the month for the maintenance run. Required in combination with RelativeMonthly frequency. Value between 0 and 31 (inclusive). |
| `week_index` | string | No | - | The week in the month used for the maintenance run. Options are 'First', 'Second', 'Third', 'Fourth', and 'Last'. |
| `start_time` | string | No | - | The time for maintenance to begin, based on the timezone determined by 'utc_offset'. Format is 'HH:mm'. |
| `utc_offset` | string | No | - | Used to determine the timezone for cluster maintenance. |
| `start_date` | datetime | No | - | The date on which the maintenance window begins to take effect. |
| `not_allowed` | [block](#maintenance_window_node_os-block-structure) | No | - | One or more 'not_allowed' block. |

### `load_balancer_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `idle_timeout_in_minutes` | int | No | 30 | Desired outbound flow idle timeout in minutes for the cluster load balancer. Must be between '4' and '120' inclusive. Defaults to '30'. |
| `managed_outbound_ip_count` | int | No | - | Count of desired managed outbound IPs for the cluster load balancer. Must be between '1' and '100' inclusive. |
| `managed_outbound_ipv6_count` | int | No | - | The desired number of IPv6 outbound IPs created and managed by Azure for the cluster load balancer. Must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack. |
| `outbound_ip_address_ids` | string | No | - | The ID of the Public IP Addresses which should be used for outbound communication for the cluster load balancer. |
| `outbound_ip_prefix_ids` | string | No | - | The ID of the outbound Public IP Address Prefixes which should be used for the cluster load balancer. |
| `outbound_ports_allocated` | int | No | 0 | Number of desired SNAT port for each VM in the clusters load balancer. Must be between '0' and '64000' inclusive. Defaults to '0'. |

### `gmsa` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_server` | string | Yes | - | Specifies the DNS server for Windows gMSA. Set this to an empty string if you have configured the DNS server in the VNet which was used to create the managed cluster. |
| `root_domain` | string | Yes | - | Specifies the root domain name for Windows gMSA. Set this to an empty string if you have configured the DNS server in the VNet which was used to create the managed cluster. |

### `windows_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_username` | string | Yes | - | The Admin Username for Windows VMs. Changing this forces a new resource to be created. |
| `admin_password` | string | No | - | The Admin Password for Windows VMs. Length must be between 14 and 123 characters. |
| `license` | string | No | - | Specifies the type of on-premise license which should be used for Node Pool Windows Virtual Machine. At this time the only possible value is 'Windows_Server'. |
| `gmsa` | [block](#windows_profile-block-structure) | No | - | A 'gmsa' block. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are 'SystemAssigned' or 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kubernetes Cluster. |

### `kubelet_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_unsafe_sysctls` | string | No | - | Specifies the allow list of unsafe sysctls command or patterns (ending in '*'). |
| `container_log_max_line` | int | No | - | Specifies the maximum number of container log files that can be present for a container. must be at least 2. |
| `container_log_max_size_mb` | int | No | - | Specifies the maximum size (e.g. 10MB) of container log file before it is rotated. |
| `cpu_cfs_quota_enabled` | bool | No | - | Is CPU CFS quota enforcement for containers enabled? |
| `cpu_cfs_quota_period` | string | No | - | Specifies the CPU CFS quota period value. |
| `cpu_manager_policy` | string | No | - | Specifies the CPU Manager policy to use. Possible values are 'none' and 'static',. |
| `image_gc_high_threshold` | string | No | - | Specifies the percent of disk usage above which image garbage collection is always run. Must be between '0' and '100'. |
| `image_gc_low_threshold` | string | No | - | Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between '0' and '100'. |
| `pod_max_pid` | int | No | - | Specifies the maximum number of processes per pod. |
| `topology_manager_policy` | string | No | - | Specifies the Topology Manager policy to use. Possible values are 'none', 'best-effort', 'restricted' or 'single-numa-node'. |

### `key_management_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | Identifier of Azure Key Vault key. See [key identifier format](https://learn.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details. When Azure Key Vault key management service is enabled, this field is required and must be a valid key identifier. When 'enabled' is 'false', leave the field empty. |
| `key_vault_network_access` | string | No | Public | Network access of the key vault Network access of key vault. The possible values are 'Public' and 'Private'. 'Public' means the key vault allows public access from all networks. 'Private' means the key vault disables public access and enables private link. Defaults to 'Public'. |

### `nat_gateway_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `idle_timeout_in_minutes` | int | No | 4 | Desired outbound flow idle timeout in minutes for the cluster load balancer. Must be between '4' and '120' inclusive. Defaults to '4'. |
| `managed_outbound_ip_count` | int | No | - | Count of desired managed outbound IPs for the cluster load balancer. Must be between '1' and '100' inclusive. |

### `workload_autoscaler_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `keda_enabled` | bool | No | - | Specifies whether KEDA Autoscaler can be used for workloads. |
| `vertical_pod_autoscaler_enabled` | bool | No | - | Specifies whether Vertical Pod Autoscaler should be enabled. |

### `sysctl_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `fs_aio_max_nr` | string | No | - | The sysctl setting fs.aio-max-nr. Must be between '65536' and '6553500'. Changing this forces a new resource to be created. |
| `fs_file_max` | string | No | - | The sysctl setting fs.file-max. Must be between '8192' and '12000500'. Changing this forces a new resource to be created. |
| `fs_inotify_max_user_watches` | string | No | - | The sysctl setting fs.inotify.max_user_watches. Must be between '781250' and '2097152'. Changing this forces a new resource to be created. |
| `fs_nr_open` | string | No | - | The sysctl setting fs.nr_open. Must be between '8192' and '20000500'. Changing this forces a new resource to be created. |
| `kernel_threads_max` | string | No | - | The sysctl setting kernel.threads-max. Must be between '20' and '513785'. Changing this forces a new resource to be created. |
| `net_core_netdev_max_backlog` | string | No | - | The sysctl setting net.core.netdev_max_backlog. Must be between '1000' and '3240000'. Changing this forces a new resource to be created. |
| `net_core_optmem_max` | string | No | - | The sysctl setting net.core.optmem_max. Must be between '20480' and '4194304'. Changing this forces a new resource to be created. |
| `net_core_rmem_default` | string | No | - | The sysctl setting net.core.rmem_default. Must be between '212992' and '134217728'. Changing this forces a new resource to be created. |
| `net_core_rmem_max` | string | No | - | The sysctl setting net.core.rmem_max. Must be between '212992' and '134217728'. Changing this forces a new resource to be created. |
| `net_core_somaxconn` | string | No | - | The sysctl setting net.core.somaxconn. Must be between '4096' and '3240000'. Changing this forces a new resource to be created. |
| `net_core_wmem_default` | string | No | - | The sysctl setting net.core.wmem_default. Must be between '212992' and '134217728'. Changing this forces a new resource to be created. |
| `net_core_wmem_max` | string | No | - | The sysctl setting net.core.wmem_max. Must be between '212992' and '134217728'. Changing this forces a new resource to be created. |
| `net_ipv4_ip_local_port_range_max` | string | No | - | The sysctl setting net.ipv4.ip_local_port_range max value. Must be between '32768' and '65535'. Changing this forces a new resource to be created. |
| `net_ipv4_ip_local_port_range_min` | string | No | - | The sysctl setting net.ipv4.ip_local_port_range min value. Must be between '1024' and '60999'. Changing this forces a new resource to be created. |
| `net_ipv4_neigh_default_gc_thresh1` | string | No | - | The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between '128' and '80000'. Changing this forces a new resource to be created. |
| `net_ipv4_neigh_default_gc_thresh2` | string | No | - | The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between '512' and '90000'. Changing this forces a new resource to be created. |
| `net_ipv4_neigh_default_gc_thresh3` | string | No | - | The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between '1024' and '100000'. Changing this forces a new resource to be created. |
| `net_ipv4_tcp_fin_timeout` | string | No | - | The sysctl setting net.ipv4.tcp_fin_timeout. Must be between '5' and '120'. Changing this forces a new resource to be created. |
| `net_ipv4_tcp_keepalive_intvl` | string | No | - | The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between '10' and '90'. Changing this forces a new resource to be created. |
| `net_ipv4_tcp_keepalive_probes` | string | No | - | The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between '1' and '15'. Changing this forces a new resource to be created. |
| `net_ipv4_tcp_keepalive_time` | string | No | - | The sysctl setting net.ipv4.tcp_keepalive_time. Must be between '30' and '432000'. Changing this forces a new resource to be created. |
| `net_ipv4_tcp_max_syn_backlog` | string | No | - | The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between '128' and '3240000'. Changing this forces a new resource to be created. |
| `net_ipv4_tcp_max_tw_buckets` | string | No | - | The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between '8000' and '1440000'. Changing this forces a new resource to be created. |
| `net_ipv4_tcp_tw_reuse` | string | No | - | The sysctl setting net.ipv4.tcp_tw_reuse. Changing this forces a new resource to be created. |
| `net_netfilter_nf_conntrack_buckets` | string | No | - | The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between '65536' and '524288'. Changing this forces a new resource to be created. |
| `net_netfilter_nf_conntrack_max` | string | No | - | The sysctl setting net.netfilter.nf_conntrack_max. Must be between '131072' and '2097152'. Changing this forces a new resource to be created. |
| `vm_max_map_count` | int | No | - | The sysctl setting vm.max_map_count. Must be between '65530' and '262144'. Changing this forces a new resource to be created. |
| `vm_swappiness` | string | No | - | The sysctl setting vm.swappiness. Must be between '0' and '100'. Changing this forces a new resource to be created. |
| `vm_vfs_cache_pressure` | string | No | - | The sysctl setting vm.vfs_cache_pressure. Must be between '0' and '100'. Changing this forces a new resource to be created. |

### `not_allowed` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `end` | string | Yes | - | The end of a time span, formatted as an RFC3339 string. |
| `start` | string | Yes | - | The start of a time span, formatted as an RFC3339 string. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Kubernetes Managed Cluster ID. | 
| **fqdn** | string | No  | The FQDN of the Azure Kubernetes Managed Cluster. | 
| **private_fqdn** | string | No  | The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster. | 
| **portal_fqdn** | string | No  | The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster. | 
| **kube_admin_config** | block | Yes  | A `kube_admin_config` block. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled. | 
| **kube_admin_config_raw** | string | Yes  | Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled. | 
| **kube_config** | block | Yes  | A `kube_config` block. | 
| **kube_config_raw** | string | Yes  | Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. | 
| **http_application_routing_zone_name** | string | No  | The Zone Name of the HTTP Application Routing. | 
| **oidc_issuer_url** | string | No  | The OIDC issuer URL that is associated with the cluster. | 
| **node_resource_group** | string | No  | The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster. | 
| **node_resource_group_id** | string | No  | The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster. | 
| **network_profile** | block | No  | A `network_profile` block. | 
| **ingress_application_gateway** | block | No  | An `ingress_application_gateway` block. | 
| **oms_agent** | block | No  | An `oms_agent` block. | 
| **key_vault_secrets_provider** | block | No  | A `key_vault_secrets_provider` block. | 
| **connector_identity** | block | No  | A `connector_identity` block is exported. The exported attributes are defined below. | 
| **client_id** | string | No  | The Client ID of the user-defined Managed Identity used for Web App Routing. | 
| **object_id** | string | No  | The Object ID of the user-defined Managed Identity used for Web App Routing | 
| **user_assigned_identity_id** | string | No  | The ID of the User Assigned Identity used for Web App Routing. | 
| **effective_outbound_ips** | string | No  | The outcome (resource IDs) of the specified arguments. | 
| **nat_gateway_profile** | block | No  | A `nat_gateway_profile` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **client_key** | string | Yes  | Base64 encoded private key used by clients to authenticate to the Kubernetes cluster. | 
| **client_certificate** | string | No  | Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster. | 
| **cluster_ca_certificate** | string | No  | Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster. | 
| **host** | string | No  | The Kubernetes cluster server host. | 
| **username** | string | No  | A username used to authenticate to the Kubernetes cluster. | 
| **password** | string | Yes  | A password or token used to authenticate to the Kubernetes cluster. | 
| **effective_gateway_id** | string | No  | The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster. | 
| **ingress_application_gateway_identity** | block | No  | An `ingress_application_gateway_identity` block is exported. The exported attributes are defined below. | 
| **oms_agent_identity** | block | No  | An `oms_agent_identity` block is exported. The exported attributes are defined below. | 
| **secret_identity** | block | No  | An `secret_identity` block is exported. The exported attributes are defined below. | 
| **web_app_routing_identity** | block | No  | A `web_app_routing_identity` block is exported. The exported attributes are defined below. | 
| **vertical_pod_autoscaler_controlled_values** | string | No  | Which resources values should be controlled. | 
| **vertical_pod_autoscaler_update_mode** | string | No  | How the autoscaler applies changes to pod resources. | 

Additionally, all variables are provided as outputs.
