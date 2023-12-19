# azurerm_batch_pool

Manages an Azure Batch pool.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "batch/batch_pool"   
}

inputs = {
   name = "Specifies the name of the Batch pool"   
   resource_group_name = "${resource_group}"   
   account_name = "Specifies the name of the Batch account in which the pool will be created..."   
   node_agent_sku_id = "Specifies the SKU of the node agents that will be created in the Batch pool..."   
   vm_size = "Specifies the size of the VM created in the Batch pool..."   
   storage_image_reference = {
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
| **name** | string |  Specifies the name of the Batch pool. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created. | 
| **account_name** | string |  Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created. | 
| **node_agent_sku_id** | string |  Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created. | 
| **vm_size** | string |  Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created. | 
| **storage_image_reference** | [block](#storage_image_reference-block-structure) |  A `storage_image_reference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **stop_pending_resize_operation** | string |  -  |  -  |  Whether to stop if there is a pending resize operation on this pool. | 
| **data_disks** | [block](#data_disks-block-structure) |  -  |  -  |  A `data_disks` block describes the data disk settings as defined below. | 
| **display_name** | string |  -  |  -  |  Specifies the display name of the Batch pool. Changing this forces a new resource to be created. | 
| **disk_encryption** | [block](#disk_encryption-block-structure) |  -  |  -  |  A `disk_encryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image. | 
| **extensions** | [block](#extensions-block-structure) |  -  |  -  |  An `extensions` block. | 
| **inter_node_communication** | string |  `Enabled`  |  `Disabled`, `Enabled`  |  Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **license_type** | string |  -  |  -  |  The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client. | 
| **max_tasks_per_node** | string |  `1`  |  -  |  Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created. | 
| **fixed_scale** | [block](#fixed_scale-block-structure) |  -  |  -  |  A `fixed_scale` block that describes the scale settings when using fixed scale as defined below. | 
| **auto_scale** | [block](#auto_scale-block-structure) |  -  |  -  |  A `auto_scale` block that describes the scale settings when using auto scale as defined below. | 
| **start_task** | [block](#start_task-block-structure) |  -  |  -  |  A `start_task` block that describes the start task settings for the Batch pool as defined below. | 
| **certificate** | list |  -  |  -  |  One or more `certificate` blocks that describe the certificates to be installed on each compute node in the pool as defined below. | 
| **container_configuration** | [block](#container_configuration-block-structure) |  -  |  -  |  The container configuration used in the pool's VMs. One `container_configuration` block. | 
| **metadata** | string |  -  |  -  |  A map of custom batch pool metadata. | 
| **mount** | [block](#mount-block-structure) |  -  |  -  |  A `mount` block defined as below. | 
| **network_configuration** | [block](#network_configuration-block-structure) |  -  |  -  |  A `network_configuration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created. | 
| **node_placement** | [block](#node_placement-block-structure) |  -  |  -  |  A `node_placement` block that describes the placement policy for allocating nodes in the pool as defined below. | 
| **os_disk_placement** | string |  -  |  `CacheDisk`  |  Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements> and Linux VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements>. The only possible value is `CacheDisk`. | 
| **target_node_communication_mode** | string |  -  |  `Classic`, `Default`, `Simplified`  |  The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`. | 
| **task_scheduling_policy** | [block](#task_scheduling_policy-block-structure) |  -  |  -  |  A `task_scheduling_policy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below. | 
| **user_accounts** | [block](#user_accounts-block-structure) |  -  |  -  |  A `user_accounts` block that describes the list of user accounts to be created on each node in the pool as defined below. | 
| **windows** | [block](#windows-block-structure) |  -  |  -  |  A `windows` block that describes the Windows configuration in the pool as defined below. | 

### `container` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `image_name` | string | Yes | - | The image to use to create the container in which the task will run. This is the full image reference, as would be specified to 'docker pull'. If no tag is provided as part of the image name, the tag ':latest' is used as a default. |
| `run_options` | string | No | - | Additional options to the container create command. These additional options are supplied as arguments to the 'docker create' command, in addition to those controlled by the Batch Service. |
| `registry` | string | No | - | The 'container_registries' block defined as below. |
| `working_directory` | string | No | - | A flag to indicate where the container task working directory is. Possible values are 'TaskWorkingDirectory' and 'ContainerImageDefault'. |

### `container_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | - | The type of container configuration. Possible value is 'DockerCompatible'. |
| `container_image_names` | list | No | - | A list of container image names to use, as would be specified by 'docker pull'. Changing this forces a new resource to be created. |
| `container_registries` | string | No | - | One or more 'container_registries' blocks. Additional container registries from which container images can be pulled by the pool's VMs. Changing this forces a new resource to be created. |

### `start_task` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `command_line` | string | Yes | - | The command line executed by the start task. |
| `container` | [block](#container-block-structure) | No | - | A 'container' block is the settings for the container under which the start task runs as defined below. When this is specified, all directories recursively below the 'AZ_BATCH_NODE_ROOT_DIR' (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container. |
| `task_retry_maximum` | number | No | - | The number of retry count. |
| `wait_for_success` | bool | No | False | A flag that indicates if the Batch pool should wait for the start task to be completed. Default to 'false'. |
| `common_environment_properties` | string | No | - | A map of strings (key,value) that represents the environment variables to set in the start task. |
| `user_identity` | [block](#user_identity-block-structure) | Yes | - | A 'user_identity' block that describes the user identity under which the start task runs as defined below. |
| `resource_file` | list | No | - | One or more 'resource_file' blocks that describe the files to be downloaded to a compute node as defined below. |

### `user_accounts` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the user account. |
| `password` | string | Yes | - | The password for the user account. |
| `elevation_level` | string | Yes | - | The elevation level of the user account. 'NonAdmin' - The auto user is a standard user without elevated access. 'Admin' - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin. |
| `linux_user_configuration` | string | No | - | The 'linux_user_configuration' block defined below is a linux-specific user configuration for the user account. This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options. |
| `windows_user_configuration` | string | No | - | The 'windows_user_configuration' block defined below is a windows-specific user configuration for the user account. This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options. |

### `storage_image_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | No | - | Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `offer` | string | No | - | Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `sku` | string | No | - | Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `version` | string | No | - | Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created. |

### `node_placement` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `policy` | string | No | Regional | The placement policy for allocating nodes in the pool. Values are: 'Regional': All nodes in the pool will be allocated in the same region; 'Zonal': Nodes in the pool will be spread across different zones with the best effort balancing. Defaults to 'Regional'. |

### `user_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `user_name` | string | No | - | The username to be used by the Batch pool start task. |
| `auto_user` | [block](#auto_user-block-structure) | No | - | A 'auto_user' block that describes the user identity under which the start task runs as defined below. |

### `task_scheduling_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `node_fill_type` | string | No | - | Supported values are 'Pack' and 'Spread'. 'Pack' means as many tasks as possible (taskSlotsPerNode) should be assigned to each node in the pool before any tasks are assigned to the next node in the pool. 'Spread' means that tasks should be assigned evenly across all nodes in the pool. |

### `nfs_mount` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source` | string | Yes | - | The URI of the file system to mount. |
| `relative_mount_path` | string | Yes | - | The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable. |
| `mount_options` | string | No | - | Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux. |

### `windows` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enable_automatic_updates` | bool | No | True | Whether automatic updates are enabled on the virtual machine. Defaults to 'true'. |

### `data_disks` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `lun` | string | Yes | - | The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun. The value must be between 0 and 63, inclusive. |
| `caching` | string | No | ReadOnly | Values are: 'none' - The caching mode for the disk is not enabled. 'readOnly' - The caching mode for the disk is read only. 'readWrite' - The caching mode for the disk is read and write. For information about the caching options see: <https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/>. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. Defaults to 'ReadOnly'. |
| `disk_size_gb` | number | Yes | - | The initial disk size in GB when creating new data disk. |
| `storage_account_type` | string | No | Standard_LRS | The storage account type to be used for the data disk. Values are: Possible values are 'Standard_LRS' - The data disk should use standard locally redundant storage. 'Premium_LRS' - The data disk should use premium locally redundant storage. Defaults to 'Standard_LRS'. |

### `azure_file_share` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_name` | string | Yes | - | The Azure Storage Account name. |
| `account_key` | string | Yes | - | The Azure Storage Account key. |
| `azure_file_url` | string | Yes | - | The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'. |
| `relative_mount_path` | string | Yes | - | The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable. |
| `mount_options` | string | No | - | Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux. |

### `cifs_mount` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `user_name` | string | Yes | - | The user to use for authentication against the CIFS file system. |
| `password` | string | Yes | - | The password to use for authentication against the CIFS file system. |
| `source` | string | Yes | - | The URI of the file system to mount. |
| `relative_mount_path` | string | Yes | - | The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable. |
| `mount_options` | string | No | - | Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux. |

### `auto_scale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `evaluation_interval` | string | No | PT15M | The interval to wait before evaluating if the pool needs to be scaled. Defaults to 'PT15M'. |
| `formula` | string | Yes | - | The autoscale formula that needs to be used for scaling the Batch pool. |

### `network_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | No | - | The ARM resource identifier of the virtual network subnet which the compute nodes of the pool will join. Changing this forces a new resource to be created. |
| `dynamic_vnet_assignment_scope` | string | No | none | The scope of dynamic vnet assignment. Allowed values: 'none', 'job'. Changing this forces a new resource to be created. Defaults to 'none'. |
| `accelerated_networking_enabled` | bool | No | False | Whether to enable accelerated networking. Possible values are 'true' and 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |
| `public_ips` | list | No | - | A list of public IP ids that will be allocated to nodes. Changing this forces a new resource to be created. |
| `endpoint_configuration` | string | No | - | A list of 'endpoint_configuration' blocks that can be used to address specific ports on an individual compute node externally as defined below. Set as documented in the inbound_nat_pools block below. Changing this forces a new resource to be created. |
| `public_address_provisioning_type` | string | No | - | Type of public IP address provisioning. Supported values are 'BatchManaged', 'UserManaged' and 'NoPublicIPAddresses'. |

### `fixed_scale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `node_deallocation_method` | string | No | - | It determines what to do with a node and its running task(s) if the pool size is decreasing. Values are 'Requeue', 'RetainedData', 'TaskCompletion' and 'Terminate'. |
| `target_dedicated_nodes` | number | No | 1 | The number of nodes in the Batch pool. Defaults to '1'. |
| `target_low_priority_nodes` | number | No | 0 | The number of low priority nodes in the Batch pool. Defaults to '0'. |
| `resize_timeout` | string | No | PT15M | The timeout for resize operations. Defaults to 'PT15M'. |

### `azure_blob_file_system` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_name` | string | Yes | - | The Azure Storage Account name. |
| `container_name` | string | Yes | - | The Azure Blob Storage Container name. |
| `relative_mount_path` | string | Yes | - | The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable. |
| `account_key` | string | No | - | The Azure Storage Account key. This property is mutually exclusive with both 'sas_key' and 'identity_id'; exactly one must be specified. |
| `sas_key` | string | No | - | The Azure Storage SAS token. This property is mutually exclusive with both 'account_key' and 'identity_id'; exactly one must be specified. |
| `identity_id` | string | No | - | The ARM resource id of the user assigned identity. This property is mutually exclusive with both 'account_key' and 'sas_key'; exactly one must be specified. |
| `blobfuse_options` | string | No | - | Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux. |

### `extensions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the virtual machine extension. |
| `publisher` | string | Yes | - | The name of the extension handler publisher.The name of the extension handler publisher. |
| `type` | string | Yes | - | The type of the extensions. |
| `type_handler_version` | string | No | - | The version of script handler. |
| `auto_upgrade_minor_version` | bool | No | - | Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. |
| `automatic_upgrade_enabled` | bool | No | - | Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are 'true' and 'false'. |
| `settings_json` | string | No | - | JSON formatted public settings for the extension. |
| `protected_settings` | string | No | - | The extension can contain either 'protected_settings' or 'provision_after_extensions' or no protected settings at all. |
| `provision_after_extensions` | string | No | - | The collection of extension names. Collection of extension names after which this extension needs to be provisioned. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Batch Account. Only possible value is 'UserAssigned'. |
| `identity_ids` | string | Yes | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Batch Account. |

### `mount` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_blob_file_system` | [block](#azure_blob_file_system-block-structure) | No | - | A 'azure_blob_file_system' block defined as below. |
| `azure_file_share` | [block](#azure_file_share-block-structure) | No | - | A 'azure_file_share' block defined as below. |
| `cifs_mount` | [block](#cifs_mount-block-structure) | No | - | A 'cifs_mount' block defined as below. |
| `nfs_mount` | [block](#nfs_mount-block-structure) | No | - | A 'nfs_mount' block defined as below. |

### `auto_user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `elevation_level` | string | No | NonAdmin | The elevation level of the user identity under which the start task runs. Possible values are 'Admin' or 'NonAdmin'. Defaults to 'NonAdmin'. |
| `scope` | string | No | Task | The scope of the user identity under which the start task runs. Possible values are 'Task' or 'Pool'. Defaults to 'Task'. |

### `disk_encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disk_encryption_target` | string | Yes | - | On Linux pool, only ''TemporaryDisk'' is supported; on Windows pool, ''OsDisk'' and ''TemporaryDisk'' must be specified. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Pool. | 

Additionally, all variables are provided as outputs.
