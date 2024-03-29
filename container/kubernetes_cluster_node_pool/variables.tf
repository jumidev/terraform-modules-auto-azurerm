# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created. ~> **NOTE:** A Windows Node Pool cannot have a 'name' longer than 6 characters."
  type        = string

}
variable "kubernetes_cluster_id" {
  description = "(REQUIRED) The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created. ~> **NOTE:** The type of Default Node Pool for the Kubernetes Cluster must be 'VirtualMachineScaleSets' to attach multiple node pools."
  type        = string

}
variable "vm_size" {
  description = "(REQUIRED) The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "capacity_reservation_group_id" {
  description = "Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "custom_ca_trust_enabled" {
  description = "Specifies whether to trust a Custom CA. -> **Note:** This requires that the Preview Feature 'Microsoft.ContainerService/CustomCATrustPreview' is enabled and the Resource Provider is re-registered, see [the documentation](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority) for more information."
  type        = bool
  default     = null
}
variable "enable_auto_scaling" {
  description = "Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler)."
  type        = bool
  default     = null
}
variable "enable_host_encryption" {
  description = "Should the nodes in this Node Pool have host encryption enabled? Changing this forces a new resource to be created. ~> **NOTE:** Additional fields must be configured depending on the value of this field - see below."
  type        = bool
  default     = null
}
variable "enable_node_public_ip" {
  description = "Should each node have a Public IP Address? Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "eviction_policy" {
  description = "The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are 'Deallocate' and 'Delete'. Changing this forces a new resource to be created. ~> **Note:** An Eviction Policy can only be configured when 'priority' is set to 'Spot' and will default to 'Delete' unless otherwise specified."
  type        = string
  default     = "Delete"
}
variable "host_group_id" {
  description = "The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "kubelet_config" {
  description = "A 'kubelet_config' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# kubelet_config block structure    :
#   allowed_unsafe_sysctls (string)   : Specifies the allow list of unsafe sysctls command or patterns (ending in '*'). Changing this forces a new resource to be created.
#   container_log_max_line (number)   : Specifies the maximum number of container log files that can be present for a container. must be at least 2. Changing this forces a new resource to be created.
#   container_log_max_size_mb (number): Specifies the maximum size (e.g. 10MB) of container log file before it is rotated. Changing this forces a new resource to be created.
#   cpu_cfs_quota_enabled (bool)      : Is CPU CFS quota enforcement for containers enabled? Changing this forces a new resource to be created.
#   cpu_cfs_quota_period (string)     : Specifies the CPU CFS quota period value. Changing this forces a new resource to be created.
#   cpu_manager_policy (string)       : Specifies the CPU Manager policy to use. Possible values are 'none' and 'static', Changing this forces a new resource to be created.
#   image_gc_high_threshold (string)  : Specifies the percent of disk usage above which image garbage collection is always run. Must be between '0' and '100'. Changing this forces a new resource to be created.
#   image_gc_low_threshold (string)   : Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between '0' and '100'. Changing this forces a new resource to be created.
#   pod_max_pid (number)              : Specifies the maximum number of processes per pod. Changing this forces a new resource to be created.
#   topology_manager_policy (string)  : Specifies the Topology Manager policy to use. Possible values are 'none', 'best-effort', 'restricted' or 'single-numa-node'. Changing this forces a new resource to be created.


variable "linux_os_config" {
  description = "A 'linux_os_config' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# linux_os_config block structure      :
#   swap_file_size_mb (number)           : Specifies the size of swap file on each node in MB. Changing this forces a new resource to be created.
#   sysctl_config (block)                : A 'sysctl_config' block. Changing this forces a new resource to be created.
#   transparent_huge_page_defrag (string): specifies the defrag configuration for Transparent Huge Page. Possible values are 'always', 'defer', 'defer+madvise', 'madvise' and 'never'. Changing this forces a new resource to be created.
#   transparent_huge_page_enabled (bool) : Specifies the Transparent Huge Page enabled configuration. Possible values are 'always', 'madvise' and 'never'. Changing this forces a new resource to be created.
#
# sysctl_config block structure              :
#   fs_aio_max_nr (string)                     : The sysctl setting fs.aio-max-nr. Must be between '65536' and '6553500'. Changing this forces a new resource to be created.
#   fs_file_max (string)                       : The sysctl setting fs.file-max. Must be between '8192' and '12000500'. Changing this forces a new resource to be created.
#   fs_inotify_max_user_watches (string)       : The sysctl setting fs.inotify.max_user_watches. Must be between '781250' and '2097152'. Changing this forces a new resource to be created.
#   fs_nr_open (string)                        : The sysctl setting fs.nr_open. Must be between '8192' and '20000500'. Changing this forces a new resource to be created.
#   kernel_threads_max (string)                : The sysctl setting kernel.threads-max. Must be between '20' and '513785'. Changing this forces a new resource to be created.
#   net_core_netdev_max_backlog (string)       : The sysctl setting net.core.netdev_max_backlog. Must be between '1000' and '3240000'. Changing this forces a new resource to be created.
#   net_core_optmem_max (string)               : The sysctl setting net.core.optmem_max. Must be between '20480' and '4194304'. Changing this forces a new resource to be created.
#   net_core_rmem_default (string)             : The sysctl setting net.core.rmem_default. Must be between '212992' and '134217728'. Changing this forces a new resource to be created.
#   net_core_rmem_max (string)                 : The sysctl setting net.core.rmem_max. Must be between '212992' and '134217728'. Changing this forces a new resource to be created.
#   net_core_somaxconn (string)                : The sysctl setting net.core.somaxconn. Must be between '4096' and '3240000'. Changing this forces a new resource to be created.
#   net_core_wmem_default (string)             : The sysctl setting net.core.wmem_default. Must be between '212992' and '134217728'. Changing this forces a new resource to be created.
#   net_core_wmem_max (string)                 : The sysctl setting net.core.wmem_max. Must be between '212992' and '134217728'. Changing this forces a new resource to be created.
#   net_ipv4_ip_local_port_range_max (string)  : The sysctl setting net.ipv4.ip_local_port_range max value. Must be between '32768' and '65535'. Changing this forces a new resource to be created.
#   net_ipv4_ip_local_port_range_min (string)  : The sysctl setting net.ipv4.ip_local_port_range min value. Must be between '1024' and '60999'. Changing this forces a new resource to be created.
#   net_ipv4_neigh_default_gc_thresh1 (string) : The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between '128' and '80000'. Changing this forces a new resource to be created.
#   net_ipv4_neigh_default_gc_thresh2 (string) : The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between '512' and '90000'. Changing this forces a new resource to be created.
#   net_ipv4_neigh_default_gc_thresh3 (string) : The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between '1024' and '100000'. Changing this forces a new resource to be created.
#   net_ipv4_tcp_fin_timeout (string)          : The sysctl setting net.ipv4.tcp_fin_timeout. Must be between '5' and '120'. Changing this forces a new resource to be created.
#   net_ipv4_tcp_keepalive_intvl (string)      : The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between '10' and '90'. Changing this forces a new resource to be created.
#   net_ipv4_tcp_keepalive_probes (string)     : The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between '1' and '15'. Changing this forces a new resource to be created.
#   net_ipv4_tcp_keepalive_time (string)       : The sysctl setting net.ipv4.tcp_keepalive_time. Must be between '30' and '432000'. Changing this forces a new resource to be created.
#   net_ipv4_tcp_max_syn_backlog (string)      : The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between '128' and '3240000'. Changing this forces a new resource to be created.
#   net_ipv4_tcp_max_tw_buckets (string)       : The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between '8000' and '1440000'. Changing this forces a new resource to be created.
#   net_ipv4_tcp_tw_reuse (string)             : Is sysctl setting net.ipv4.tcp_tw_reuse enabled? Changing this forces a new resource to be created.
#   net_netfilter_nf_conntrack_buckets (string): The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between '65536' and '524288'. Changing this forces a new resource to be created.
#   net_netfilter_nf_conntrack_max (string)    : The sysctl setting net.netfilter.nf_conntrack_max. Must be between '131072' and '2097152'. Changing this forces a new resource to be created.
#   vm_max_map_count (number)                  : The sysctl setting vm.max_map_count. Must be between '65530' and '262144'. Changing this forces a new resource to be created.
#   vm_swappiness (string)                     : The sysctl setting vm.swappiness. Must be between '0' and '100'. Changing this forces a new resource to be created.
#   vm_vfs_cache_pressure (string)             : The sysctl setting vm.vfs_cache_pressure. Must be between '0' and '100'. Changing this forces a new resource to be created.


variable "fips_enabled" {
  description = "Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this forces a new resource to be created. ~> **Note:** FIPS support is in Public Preview - more information and details on how to opt into the Preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview)."
  type        = bool
  default     = null
}
variable "gpu_instance" {
  description = "Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are 'MIG1g', 'MIG2g', 'MIG3g', 'MIG4g' and 'MIG7g'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "kubelet_disk_type" {
  description = "The type of disk used by kubelet. Possible values are 'OS' and 'Temporary'."
  type        = string
  default     = null
}
variable "max_pods" {
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  type        = number
  default     = null
}
variable "message_of_the_day" {
  description = "A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It cannot be specified for Windows nodes and must be a static string (i.e. will be printed raw and not executed as a script). Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "mode" {
  description = "Should this Node Pool be used for System or User resources? Possible values are 'System' and 'User'. Defaults to 'User'."
  type        = string
  default     = "User"
}
variable "node_network_profile" {
  description = "A 'node_network_profile' block."
  type        = map(any)
  default     = null
}
#
# node_network_profile block structure:
#   node_public_ip_tags (map)           : Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created. -> **Note:** This requires that the Preview Feature 'Microsoft.ContainerService/NodePublicIPTagsPreview' is enabled and the Resource Provider is re-registered, see [the documentation](https://learn.microsoft.com/azure/aks/use-node-public-ips#use-public-ip-tags-on-node-public-ips-preview) for more information.


variable "node_labels" {
  description = "A map of Kubernetes labels which should be applied to nodes in this Node Pool."
  type        = string
  default     = null
}
variable "node_public_ip_prefix_id" {
  description = "Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. 'enable_node_public_ip' should be 'true'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "node_taints" {
  description = "A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g 'key=value:NoSchedule'). Changing this forces a new resource to be created."
  type        = list(any)
  default     = []
}
variable "orchestrator_version" {
  description = "Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as '1.22' are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). -> **Note:** This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first."
  type        = string
  default     = null
}
variable "os_disk_size_gb" {
  description = "The Agent Operating System disk size in GB. Changing this forces a new resource to be created."
  type        = number
  default     = null
}
variable "os_disk_type" {
  description = "The type of disk which should be used for the Operating System. Possible values are 'Ephemeral' and 'Managed'. Defaults to 'Managed'. Changing this forces a new resource to be created."
  type        = string
  default     = "Managed"
}
variable "pod_subnet_id" {
  description = "The ID of the Subnet where the pods in the Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "os_sku" {
  description = "Specifies the OS SKU used by the agent pool. Possible values are 'AzureLinux', 'CBLMariner', 'Mariner', 'Ubuntu', 'Windows2019' and 'Windows2022'. If not specified, the default is 'Ubuntu' if OSType=Linux or 'Windows2019' if OSType=Windows. And the default Windows OSSKU will be changed to 'Windows2022' after Windows2019 is deprecated. Changing this forces a new resource to be created."
  type        = string
  default     = "Ubuntu"
}
variable "os_type" {
  description = "The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are 'Linux' and 'Windows'. Defaults to 'Linux'."
  type        = string
  default     = "Linux"
}
variable "priority" {
  description = "The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are 'Regular' and 'Spot'. Defaults to 'Regular'. Changing this forces a new resource to be created."
  type        = string
  default     = "Regular"
}
variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created. -> **Note:** When setting 'priority' to Spot - you must configure an 'eviction_policy', 'spot_max_price' and add the applicable 'node_labels' and 'node_taints' [as per the Azure Documentation](https://docs.microsoft.com/azure/aks/spot-node-pool)."
  type        = string
  default     = null
}
variable "spot_max_price" {
  description = "The maximum price you're willing to pay in USD per Virtual Machine. Valid values are '-1' (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created. ~> **Note:** This field can only be configured when 'priority' is set to 'Spot'."
  type        = string
  default     = null
}
variable "snapshot_id" {
  description = "The ID of the Snapshot which should be used to create this Node Pool. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource. ~> At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you [may wish to use Terraform's 'ignore_changes' functionality to ignore changes to the casing](https://www.terraform.io/language/meta-arguments/lifecycle#ignore_changess) until this is fixed in the AKS API."
  type        = map(any)
  default     = null
}
variable "scale_down_mode" {
  description = "Specifies how the node pool should deal with scaled-down nodes. Allowed values are 'Delete' and 'Deallocate'. Defaults to 'Delete'."
  type        = string
  default     = "Delete"
}
variable "ultra_ssd_enabled" {
  description = "Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to 'false'. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "upgrade_settings" {
  description = "A 'upgrade_settings' block."
  type        = map(any)
  default     = null
}
#
# upgrade_settings block structure:
#   max_surge (string)              : (REQUIRED) The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.


variable "vnet_subnet_id" {
  description = "The ID of the Subnet where this Node Pool should exist. Changing this forces a new resource to be created. ~> **NOTE:** A route table must be configured on this Subnet."
  type        = string
  default     = null
}
variable "windows_profile" {
  description = "A 'windows_profile' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# windows_profile block structure:
#   outbound_nat_enabled (bool)    : Should the Windows nodes in this Node Pool have outbound NAT enabled? Defaults to 'true'. Changing this forces a new resource to be created. -> **Note:** If a percentage is provided, the number of surge nodes is calculated from the current node count on the cluster. Node surge can allow a cluster to have more nodes than 'max_count' during an upgrade. Ensure that your cluster has enough [IP space](https://docs.microsoft.com/azure/aks/upgrade-cluster#customize-node-surge-upgrade) during an upgrade.


variable "workload_runtime" {
  description = "Used to specify the workload runtime. Allowed values are 'OCIContainer', 'WasmWasi' and 'KataMshvVmIsolation'. ~> **Note:** WebAssembly System Interface node pools are in Public Preview - more information and details on how to opt into the preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-wasi-node-pools) ~> **Note:** Pod Sandboxing / KataVM Isolation node pools are in Public Preview - more information and details on how to opt into the preview can be found in [this article](https://learn.microsoft.com/azure/aks/use-pod-sandboxing)"
  type        = string
  default     = null
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this forces a new Kubernetes Cluster Node Pool to be created."
  type        = list(any)
  default     = []
}
variable "max_count" {
  description = "The maximum number of nodes which should exist within this Node Pool. Valid values are between '0' and '1000' and must be greater than or equal to 'min_count'."
  type        = number
  default     = null
}
variable "min_count" {
  description = "The minimum number of nodes which should exist within this Node Pool. Valid values are between '0' and '1000' and must be less than or equal to 'max_count'."
  type        = number
  default     = null
}
variable "node_count" {
  description = "The number of nodes which should exist within this Node Pool. Valid values are between '0' and '1000' (inclusive) for user pools and between '1' and '1000' (inclusive) for system pools."
  type        = number
  default     = null
}
