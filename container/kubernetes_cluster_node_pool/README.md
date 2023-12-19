# azurerm_kubernetes_cluster_node_pool

Manages a Node Pool within a Kubernetes Cluster-> **Note:** Due to the fast-moving nature of AKS, we recommend using the latest version of the Azure Provider when using AKS - you can find [the latest version of the Azure Provider here](https://registry.terraform.io/providers/hashicorp/azurerm/latest).~> **NOTE:** Multiple Node Pools are only supported when the Kubernetes Cluster is using Virtual Machine Scale Sets.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/kubernetes_cluster_node_pool"   
}

inputs = {
   name = "The name of the Node Pool which should be created within the Kubernetes Cluster..."   
   # kubernetes_cluster_id → set in component_inputs
   vm_size = "The SKU which should be used for the Virtual Machines used in this Node Pool..."   
}

component_inputs = {
   kubernetes_cluster_id = "path/to/kubernetes_cluster_component:id"   
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
| **name** | string |  The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created. | 
| **kubernetes_cluster_id** | string |  The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created. | 
| **vm_size** | string |  The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **capacity_reservation_group_id** | string |  -  |  -  |  Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created. | 
| **custom_ca_trust_enabled** | bool |  -  |  -  |  Specifies whether to trust a Custom CA. | 
| **enable_auto_scaling** | bool |  -  |  -  |  Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler). | 
| **enable_host_encryption** | bool |  -  |  -  |  Should the nodes in this Node Pool have host encryption enabled? Changing this forces a new resource to be created. | 
| **enable_node_public_ip** | bool |  -  |  -  |  Should each node have a Public IP Address? Changing this forces a new resource to be created. | 
| **eviction_policy** | string |  -  |  `Deallocate`, `Delete`  |  The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **host_group_id** | string |  -  |  -  |  The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created. | 
| **kubelet_config** | [block](#kubelet_config-block-structure) |  -  |  -  |  A `kubelet_config` block. Changing this forces a new resource to be created. | 
| **linux_os_config** | [block](#linux_os_config-block-structure) |  -  |  -  |  A `linux_os_config` block. Changing this forces a new resource to be created. | 
| **fips_enabled** | bool |  -  |  -  |  Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this forces a new resource to be created. | 
| **gpu_instance** | string |  -  |  `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g`, `MIG7g`  |  Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created. | 
| **kubelet_disk_type** | string |  -  |  `OS`, `Temporary`  |  The type of disk used by kubelet. Possible values are `OS` and `Temporary`. | 
| **max_pods** | number |  -  |  -  |  The maximum number of pods that can run on each agent. Changing this forces a new resource to be created. | 
| **message_of_the_day** | string |  -  |  -  |  A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It cannot be specified for Windows nodes and must be a static string (i.e. will be printed raw and not executed as a script). Changing this forces a new resource to be created. | 
| **mode** | string |  `User`  |  `System`, `User`  |  Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`. | 
| **node_network_profile** | [block](#node_network_profile-block-structure) |  -  |  -  |  A `node_network_profile` block. | 
| **node_labels** | string |  -  |  -  |  A map of Kubernetes labels which should be applied to nodes in this Node Pool. | 
| **node_public_ip_prefix_id** | string |  -  |  -  |  Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `enable_node_public_ip` should be `true`. Changing this forces a new resource to be created. | 
| **node_taints** | list |  -  |  -  |  A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`). Changing this forces a new resource to be created. | 
| **orchestrator_version** | string |  -  |  -  |  Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). | 
| **os_disk_size_gb** | number |  -  |  -  |  The Agent Operating System disk size in GB. Changing this forces a new resource to be created. | 
| **os_disk_type** | string |  `Managed`  |  `Ephemeral`, `Managed`  |  The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this forces a new resource to be created. | 
| **pod_subnet_id** | string |  -  |  -  |  The ID of the Subnet where the pods in the Node Pool should exist. Changing this forces a new resource to be created. | 
| **os_sku** | string |  `Ubuntu`  |  `AzureLinux`, `CBLMariner`, `Mariner`, `Ubuntu`, `Windows2019`, `Windows2022`  |  Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `CBLMariner`, `Mariner`, `Ubuntu`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` if OSType=Linux or `Windows2019` if OSType=Windows. And the default Windows OSSKU will be changed to `Windows2022` after Windows2019 is deprecated. Changing this forces a new resource to be created. | 
| **os_type** | string |  `Linux`  |  `Linux`, `Windows`  |  The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`. | 
| **priority** | string |  `Regular`  |  `Regular`, `Spot`  |  The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created. | 
| **proximity_placement_group_id** | string |  -  |  -  |  The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created. | 
| **spot_max_price** | string |  -  |  `-1`  |  The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created. | 
| **snapshot_id** | string |  -  |  -  |  The ID of the Snapshot which should be used to create this Node Pool. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **scale_down_mode** | string |  `Delete`  |  `Delete`, `Deallocate`  |  Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`. | 
| **ultra_ssd_enabled** | bool |  `False`  |  -  |  Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this forces a new resource to be created. | 
| **upgrade_settings** | [block](#upgrade_settings-block-structure) |  -  |  -  |  A `upgrade_settings` block. | 
| **vnet_subnet_id** | string |  -  |  -  |  The ID of the Subnet where this Node Pool should exist. Changing this forces a new resource to be created. | 
| **windows_profile** | [block](#windows_profile-block-structure) |  -  |  -  |  A `windows_profile` block. Changing this forces a new resource to be created. | 
| **workload_runtime** | string |  -  |  `OCIContainer`, `WasmWasi`, `KataMshvVmIsolation`  |  Used to specify the workload runtime. Allowed values are `OCIContainer`, `WasmWasi` and `KataMshvVmIsolation`. | 
| **zones** | string |  -  |  -  |  Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this forces a new Kubernetes Cluster Node Pool to be created. | 
| **max_count** | string |  -  |  `0`, `1000`, `min_count`  |  The maximum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be greater than or equal to `min_count`. | 
| **min_count** | string |  -  |  `0`, `1000`, `max_count`  |  The minimum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be less than or equal to `max_count`. | 
| **node_count** | string |  -  |  `0`, `1000`, `1`  |  The number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` (inclusive) for user pools and between `1` and `1000` (inclusive) for system pools. | 

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
| `net_ipv4_tcp_tw_reuse` | string | No | - | Is sysctl setting net.ipv4.tcp_tw_reuse enabled? Changing this forces a new resource to be created. |
| `net_netfilter_nf_conntrack_buckets` | string | No | - | The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between '65536' and '524288'. Changing this forces a new resource to be created. |
| `net_netfilter_nf_conntrack_max` | string | No | - | The sysctl setting net.netfilter.nf_conntrack_max. Must be between '131072' and '2097152'. Changing this forces a new resource to be created. |
| `vm_max_map_count` | number | No | - | The sysctl setting vm.max_map_count. Must be between '65530' and '262144'. Changing this forces a new resource to be created. |
| `vm_swappiness` | string | No | - | The sysctl setting vm.swappiness. Must be between '0' and '100'. Changing this forces a new resource to be created. |
| `vm_vfs_cache_pressure` | string | No | - | The sysctl setting vm.vfs_cache_pressure. Must be between '0' and '100'. Changing this forces a new resource to be created. |

### `kubelet_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_unsafe_sysctls` | string | No | - | Specifies the allow list of unsafe sysctls command or patterns (ending in '*'). Changing this forces a new resource to be created. |
| `container_log_max_line` | string | No | - | Specifies the maximum number of container log files that can be present for a container. must be at least 2. Changing this forces a new resource to be created. |
| `container_log_max_size_mb` | string | No | - | Specifies the maximum size (e.g. 10MB) of container log file before it is rotated. Changing this forces a new resource to be created. |
| `cpu_cfs_quota_enabled` | bool | No | - | Is CPU CFS quota enforcement for containers enabled? Changing this forces a new resource to be created. |
| `cpu_cfs_quota_period` | string | No | - | Specifies the CPU CFS quota period value. Changing this forces a new resource to be created. |
| `cpu_manager_policy` | string | No | - | Specifies the CPU Manager policy to use. Possible values are 'none' and 'static', Changing this forces a new resource to be created. |
| `image_gc_high_threshold` | string | No | - | Specifies the percent of disk usage above which image garbage collection is always run. Must be between '0' and '100'. Changing this forces a new resource to be created. |
| `image_gc_low_threshold` | string | No | - | Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between '0' and '100'. Changing this forces a new resource to be created. |
| `pod_max_pid` | string | No | - | Specifies the maximum number of processes per pod. Changing this forces a new resource to be created. |
| `topology_manager_policy` | string | No | - | Specifies the Topology Manager policy to use. Possible values are 'none', 'best-effort', 'restricted' or 'single-numa-node'. Changing this forces a new resource to be created. |

### `node_network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `node_public_ip_tags` | map | No | - | Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created. |

### `linux_os_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `swap_file_size_mb` | string | No | - | Specifies the size of swap file on each node in MB. Changing this forces a new resource to be created. |
| `sysctl_config` | [block](#sysctl_config-block-structure) | No | - | A 'sysctl_config' block. Changing this forces a new resource to be created. |
| `transparent_huge_page_defrag` | string | No | - | specifies the defrag configuration for Transparent Huge Page. Possible values are 'always', 'defer', 'defer+madvise', 'madvise' and 'never'. Changing this forces a new resource to be created. |
| `transparent_huge_page_enabled` | string | No | - | Specifies the Transparent Huge Page enabled configuration. Possible values are 'always', 'madvise' and 'never'. Changing this forces a new resource to be created. |

### `upgrade_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_surge` | string | Yes | - | The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade. |

### `windows_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `outbound_nat_enabled` | bool | No | True | Should the Windows nodes in this Node Pool have outbound NAT enabled? Defaults to 'true'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kubernetes Cluster Node Pool. | 

Additionally, all variables are provided as outputs.
