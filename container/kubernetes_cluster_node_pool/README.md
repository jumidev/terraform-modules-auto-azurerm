# azurerm_kubernetes_cluster_node_pool

Manages a Node Pool within a Kubernetes Cluster-> **Note:** Due to the fast-moving nature of AKS, we recommend using the latest version of the Azure Provider when using AKS - you can find [the latest version of the Azure Provider here](https://registry.terraform.io/providers/hashicorp/azurerm/latest).~> **NOTE:** Multiple Node Pools are only supported when the Kubernetes Cluster is using Virtual Machine Scale Sets.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/kubernetes_cluster_node_pool" 
}

inputs = {
   name = "name of kubernetes_cluster_node_pool" 
   kubernetes_cluster_id = "kubernetes_cluster_id of kubernetes_cluster_node_pool" 
   vm_size = "vm_size of kubernetes_cluster_node_pool" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created. | 
| **var.kubernetes_cluster_id** | string | True | -  |  -  |  The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created. | 
| **var.vm_size** | string | True | -  |  -  |  The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created. | 
| **var.capacity_reservation_group_id** | string | False | -  |  -  |  Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created. | 
| **var.custom_ca_trust_enabled** | bool | False | -  |  -  |  Specifies whether to trust a Custom CA. | 
| **var.enable_auto_scaling** | bool | False | -  |  -  |  Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler). | 
| **var.enable_host_encryption** | bool | False | -  |  -  |  Should the nodes in this Node Pool have host encryption enabled? Changing this forces a new resource to be created. | 
| **var.enable_node_public_ip** | bool | False | -  |  -  |  Should each node have a Public IP Address? Changing this forces a new resource to be created. | 
| **var.eviction_policy** | string | False | -  |  `Deallocate`, `Delete`  |  The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **var.host_group_id** | string | False | -  |  -  |  The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created. | 
| **var.kubelet_config** | block | False | -  |  -  |  A `kubelet_config` block. Changing this forces a new resource to be created. | 
| **var.linux_os_config** | block | False | -  |  -  |  A `linux_os_config` block. Changing this forces a new resource to be created. | 
| **var.fips_enabled** | bool | False | -  |  -  |  Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this forces a new resource to be created. | 
| **var.gpu_instance** | string | False | -  |  `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g`, `MIG7g`  |  Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created. | 
| **var.kubelet_disk_type** | string | False | -  |  `OS`, `Temporary`  |  The type of disk used by kubelet. Possible values are `OS` and `Temporary`. | 
| **var.max_pods** | int | False | -  |  -  |  The maximum number of pods that can run on each agent. Changing this forces a new resource to be created. | 
| **var.message_of_the_day** | string | False | -  |  -  |  A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It cannot be specified for Windows nodes and must be a static string (i.e. will be printed raw and not executed as a script). Changing this forces a new resource to be created. | 
| **var.mode** | string | False | `User`  |  `System`, `User`  |  Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`. | 
| **var.node_network_profile** | block | False | -  |  -  |  A `node_network_profile` block. | 
| **var.node_labels** | string | False | -  |  -  |  A map of Kubernetes labels which should be applied to nodes in this Node Pool. | 
| **var.node_public_ip_prefix_id** | string | False | -  |  -  |  Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `enable_node_public_ip` should be `true`. Changing this forces a new resource to be created. | 
| **var.node_taints** | list | False | -  |  -  |  A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`). Changing this forces a new resource to be created. | 
| **var.orchestrator_version** | string | False | -  |  -  |  Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). | 
| **var.os_disk_size_gb** | int | False | -  |  -  |  The Agent Operating System disk size in GB. Changing this forces a new resource to be created. | 
| **var.os_disk_type** | string | False | `Managed`  |  `Ephemeral`, `Managed`  |  The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this forces a new resource to be created. | 
| **var.pod_subnet_id** | string | False | -  |  -  |  The ID of the Subnet where the pods in the Node Pool should exist. Changing this forces a new resource to be created. | 
| **var.os_sku** | string | False | `Ubuntu`  |  `AzureLinux`, `CBLMariner`, `Mariner`, `Ubuntu`, `Windows2019`, `Windows2022`  |  Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `CBLMariner`, `Mariner`, `Ubuntu`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` if OSType=Linux or `Windows2019` if OSType=Windows. And the default Windows OSSKU will be changed to `Windows2022` after Windows2019 is deprecated. Changing this forces a new resource to be created. | 
| **var.os_type** | string | False | `Linux`  |  `Linux`, `Windows`  |  The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`. | 
| **var.priority** | string | False | `Regular`  |  `Regular`, `Spot`  |  The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  |  The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created. | 
| **var.spot_max_price** | string | False | -  |  `-1`  |  The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created. | 
| **var.snapshot_id** | string | False | -  |  -  |  The ID of the Snapshot which should be used to create this Node Pool. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.scale_down_mode** | string | False | `Delete`  |  `Delete`, `Deallocate`  |  Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`. | 
| **var.ultra_ssd_enabled** | bool | False | `False`  |  -  |  Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this forces a new resource to be created. | 
| **var.upgrade_settings** | block | False | -  |  -  |  A `upgrade_settings` block. | 
| **var.vnet_subnet_id** | string | False | -  |  -  |  The ID of the Subnet where this Node Pool should exist. Changing this forces a new resource to be created. | 
| **var.windows_profile** | block | False | -  |  -  |  A `windows_profile` block. Changing this forces a new resource to be created. | 
| **var.workload_runtime** | string | False | -  |  `OCIContainer`, `WasmWasi`, `KataMshvVmIsolation`  |  Used to specify the workload runtime. Allowed values are `OCIContainer`, `WasmWasi` and `KataMshvVmIsolation`. | 
| **var.zones** | string | False | -  |  -  |  Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this forces a new Kubernetes Cluster Node Pool to be created. | 
| **var.max_count** | string | False | -  |  `0`, `1000`, `min_count`  |  The maximum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be greater than or equal to `min_count`. | 
| **var.min_count** | string | False | -  |  `0`, `1000`, `max_count`  |  The minimum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be less than or equal to `max_count`. | 
| **var.node_count** | string | False | -  |  `0`, `1000`, `1`  |  The number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` (inclusive) for user pools and between `1` and `1000` (inclusive) for system pools. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kubernetes Cluster Node Pool. | 

Additionally, all variables are provided as outputs.
