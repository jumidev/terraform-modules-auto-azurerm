# azurerm_batch_pool

Manages an Azure Batch pool.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "batch/batch_pool" 
}

inputs = {
   name = "name of batch_pool" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of batch_pool" 
   node_agent_sku_id = "node_agent_sku_id of batch_pool" 
   vm_size = "vm_size of batch_pool" 
   storage_image_reference = "storage_image_reference of batch_pool" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Batch pool. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  |  Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created. | 
| **var.node_agent_sku_id** | string | True | -  |  -  |  Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created. | 
| **var.stop_pending_resize_operation** | string | False | -  |  -  |  Whether to stop if there is a pending resize operation on this pool. | 
| **var.vm_size** | string | True | -  |  -  |  Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created. | 
| **var.storage_image_reference** | block | True | -  |  -  |  A `storage_image_reference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created. | 
| `storage_image_reference` block structure: || 
|   publisher (string): Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   offer (string): Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   sku (string): Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   version (string): Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
| **var.data_disks** | block | False | -  |  -  |  A `data_disks` block describes the data disk settings as defined below. | 
| `data_disks` block structure: || 
|   lun (string): (REQUIRED) The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun. The value must be between 0 and 63, inclusive. ||
|   caching (string): Values are: 'none' - The caching mode for the disk is not enabled. 'readOnly' - The caching mode for the disk is read only. 'readWrite' - The caching mode for the disk is read and write. For information about the caching options see: <https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/>. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. Defaults to 'ReadOnly'. ||
|   disk_size_gb (int): (REQUIRED) The initial disk size in GB when creating new data disk. ||
|   storage_account_type (string): The storage account type to be used for the data disk. Values are: Possible values are 'Standard_LRS' - The data disk should use standard locally redundant storage. 'Premium_LRS' - The data disk should use premium locally redundant storage. Defaults to 'Standard_LRS'. ||
| **var.display_name** | string | False | -  |  -  |  Specifies the display name of the Batch pool. Changing this forces a new resource to be created. | 
| **var.disk_encryption** | block | False | -  |  -  |  A `disk_encryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image. | 
| `disk_encryption` block structure: || 
|   disk_encryption_target (string): (REQUIRED) On Linux pool, only ''TemporaryDisk'' is supported; on Windows pool, ''OsDisk'' and ''TemporaryDisk'' must be specified. ||
| **var.extensions** | block | False | -  |  -  |  An `extensions` block. | 
| `extensions` block structure: || 
|   name (string): (REQUIRED) The name of the virtual machine extension. ||
|   publisher (string): (REQUIRED) The name of the extension handler publisher.The name of the extension handler publisher. ||
|   type (string): (REQUIRED) The type of the extensions. ||
|   type_handler_version (string): The version of script handler. ||
|   auto_upgrade_minor_version (bool): Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. ||
|   automatic_upgrade_enabled (bool): Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are 'true' and 'false'. ||
|   settings_json (string): JSON formatted public settings for the extension. ||
|   protected_settings (string): The extension can contain either 'protected_settings' or 'provision_after_extensions' or no protected settings at all. ||
|   provision_after_extensions (string): The collection of extension names. Collection of extension names after which this extension needs to be provisioned. ||
| **var.inter_node_communication** | bool | False | `False`  |  -  |  Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Batch Account. Only possible value is 'UserAssigned'. ||
|   identity_ids (string): (REQUIRED) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Batch Account. ||
| **var.license_type** | string | False | -  |  -  |  The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client. | 
| **var.max_tasks_per_node** | int | False | `1`  |  -  |  Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created. | 
| **var.fixed_scale** | block | False | -  |  -  |  A `fixed_scale` block that describes the scale settings when using fixed scale as defined below. | 
| `fixed_scale` block structure: || 
|   node_deallocation_method (string): It determines what to do with a node and its running task(s) if the pool size is decreasing. Values are 'Requeue', 'RetainedData', 'TaskCompletion' and 'Terminate'. ||
|   target_dedicated_nodes (int): The number of nodes in the Batch pool. Defaults to '1'. ||
|   target_low_priority_nodes (int): The number of low priority nodes in the Batch pool. Defaults to '0'. ||
|   resize_timeout (string): The timeout for resize operations. Defaults to 'PT15M'. ||
| **var.auto_scale** | block | False | -  |  -  |  A `auto_scale` block that describes the scale settings when using auto scale as defined below. | 
| `auto_scale` block structure: || 
|   evaluation_interval (string): The interval to wait before evaluating if the pool needs to be scaled. Defaults to 'PT15M'. ||
|   formula (string): (REQUIRED) The autoscale formula that needs to be used for scaling the Batch pool. ||
| **var.start_task** | block | False | -  |  -  |  A `start_task` block that describes the start task settings for the Batch pool as defined below. | 
| `start_task` block structure: || 
|   command_line (string): (REQUIRED) The command line executed by the start task. ||
|   container (block): A 'container' block is the settings for the container under which the start task runs as defined below. When this is specified, all directories recursively below the 'AZ_BATCH_NODE_ROOT_DIR' (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container. ||
|   task_retry_maximum (int): The number of retry count. ||
|   wait_for_success (bool): A flag that indicates if the Batch pool should wait for the start task to be completed. Default to 'false'. ||
|   common_environment_properties (string): A map of strings (key,value) that represents the environment variables to set in the start task. ||
|   user_identity (block): (REQUIRED) A 'user_identity' block that describes the user identity under which the start task runs as defined below. ||
|   resource_file (list): One or more 'resource_file' blocks that describe the files to be downloaded to a compute node as defined below. ||
| **var.certificate** | list | False | -  |  -  |  One or more `certificate` blocks that describe the certificates to be installed on each compute node in the pool as defined below. | 
| **var.container_configuration** | block | False | -  |  -  |  The container configuration used in the pool's VMs. One `container_configuration` block. | 
| `container_configuration` block structure: || 
|   type (string): The type of container configuration. Possible value is 'DockerCompatible'. ||
|   container_image_names (list): A list of container image names to use, as would be specified by 'docker pull'. Changing this forces a new resource to be created. ||
|   container_registries (block): One or more 'container_registries' blocks. Additional container registries from which container images can be pulled by the pool's VMs. Changing this forces a new resource to be created. ||
| **var.metadata** | string | False | -  |  -  |  A map of custom batch pool metadata. | 
| **var.mount** | block | False | -  |  -  |  A `mount` block defined as below. | 
| `mount` block structure: || 
|   azure_blob_file_system (block): A 'azure_blob_file_system' block defined as below. ||
|   azure_file_share (block): A 'azure_file_share' block defined as below. ||
|   cifs_mount (block): A 'cifs_mount' block defined as below. ||
|   nfs_mount (block): A 'nfs_mount' block defined as below. ||
| **var.network_configuration** | block | False | -  |  -  |  A `network_configuration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created. | 
| `network_configuration` block structure: || 
|   subnet_id (string): The ARM resource identifier of the virtual network subnet which the compute nodes of the pool will join. Changing this forces a new resource to be created. ||
|   dynamic_vnet_assignment_scope (string): The scope of dynamic vnet assignment. Allowed values: 'none', 'job'. Changing this forces a new resource to be created. Defaults to 'none'. ||
|   accelerated_networking_enabled (bool): Whether to enable accelerated networking. Possible values are 'true' and 'false'. Defaults to 'false'. Changing this forces a new resource to be created. ||
|   public_ips (list): A list of public IP ids that will be allocated to nodes. Changing this forces a new resource to be created. ||
|   endpoint_configuration (block): A list of 'endpoint_configuration' blocks that can be used to address specific ports on an individual compute node externally as defined below. Set as documented in the inbound_nat_pools block below. Changing this forces a new resource to be created. ||
|   public_address_provisioning_type (string): Type of public IP address provisioning. Supported values are 'BatchManaged', 'UserManaged' and 'NoPublicIPAddresses'. ||
| **var.node_placement** | block | False | -  |  -  |  A `node_placement` block that describes the placement policy for allocating nodes in the pool as defined below. | 
| `node_placement` block structure: || 
|   policy (string): The placement policy for allocating nodes in the pool. Values are: 'Regional': All nodes in the pool will be allocated in the same region; 'Zonal': Nodes in the pool will be spread across different zones with the best effort balancing. Defaults to 'Regional'. ||
| **var.os_disk_placement** | string | False | -  |  -  |  Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements> and Linux VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements>. The only possible value is `CacheDisk`. | 
| **var.target_node_communication_mode** | string | False | -  |  `Classic`, `Default`, `Simplified`  |  The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`. | 
| **var.task_scheduling_policy** | block | False | -  |  -  |  A `task_scheduling_policy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below. | 
| `task_scheduling_policy` block structure: || 
|   node_fill_type (string): Supported values are 'Pack' and 'Spread'. 'Pack' means as many tasks as possible (taskSlotsPerNode) should be assigned to each node in the pool before any tasks are assigned to the next node in the pool. 'Spread' means that tasks should be assigned evenly across all nodes in the pool. ||
| **var.user_accounts** | block | False | -  |  -  |  A `user_accounts` block that describes the list of user accounts to be created on each node in the pool as defined below. | 
| `user_accounts` block structure: || 
|   name (string): (REQUIRED) The name of the user account. ||
|   password (string): (REQUIRED) The password for the user account. ||
|   elevation_level (string): (REQUIRED) The elevation level of the user account. 'NonAdmin' - The auto user is a standard user without elevated access. 'Admin' - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin. ||
|   linux_user_configuration (string): The 'linux_user_configuration' block defined below is a linux-specific user configuration for the user account. This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options. ||
|   windows_user_configuration (string): The 'windows_user_configuration' block defined below is a windows-specific user configuration for the user account. This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options. ||
| **var.windows** | block | False | -  |  -  |  A `windows` block that describes the Windows configuration in the pool as defined below. | 
| `windows` block structure: || 
|   enable_automatic_updates (bool): Whether automatic updates are enabled on the virtual machine. Defaults to 'true'. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Pool. | 

Additionally, all variables are provided as outputs.
