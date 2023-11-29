# azurerm_batch_pool

Manages an Azure Batch pool.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Batch pool. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  | Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created. | 
| **var.node_agent_sku_id** | string | True | -  |  -  | Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created. | 
| **var.stop_pending_resize_operation** | string | False | -  |  -  | Whether to stop if there is a pending resize operation on this pool. | 
| **var.vm_size** | string | True | -  |  -  | Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created. | 
| **var.storage_image_reference** | block | True | -  |  -  | A `storage_image_reference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created. | 
| **var.data_disks** | block | False | -  |  -  | A `data_disks` block describes the data disk settings as defined below. | 
| **var.display_name** | string | False | -  |  -  | Specifies the display name of the Batch pool. Changing this forces a new resource to be created. | 
| **var.disk_encryption** | block | False | -  |  -  | A `disk_encryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image. | 
| **var.extensions** | block | False | -  |  -  | An `extensions` block. | 
| **var.inter_node_communication** | bool | False | `False`  |  -  | Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.license_type** | string | False | -  |  -  | The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client. | 
| **var.max_tasks_per_node** | int | False | `1`  |  -  | Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created. | 
| **var.fixed_scale** | block | False | -  |  -  | A `fixed_scale` block that describes the scale settings when using fixed scale as defined below. | 
| **var.auto_scale** | block | False | -  |  -  | A `auto_scale` block that describes the scale settings when using auto scale as defined below. | 
| **var.start_task** | block | False | -  |  -  | A `start_task` block that describes the start task settings for the Batch pool as defined below. | 
| **var.certificate** | list | False | -  |  -  | One or more `certificate` blocks that describe the certificates to be installed on each compute node in the pool as defined below. | 
| **var.container_configuration** | block | False | -  |  -  | The container configuration used in the pool's VMs. One `container_configuration` block. | 
| **var.metadata** | string | False | -  |  -  | A map of custom batch pool metadata. | 
| **var.mount** | block | False | -  |  -  | A `mount` block defined as below. | 
| **var.network_configuration** | block | False | -  |  -  | A `network_configuration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created. | 
| **var.node_placement** | block | False | -  |  -  | A `node_placement` block that describes the placement policy for allocating nodes in the pool as defined below. | 
| **var.os_disk_placement** | string | False | -  |  -  | Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements> and Linux VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements>. The only possible value is `CacheDisk`. | 
| **var.target_node_communication_mode** | string | False | -  |  `Classic`, `Default`, `Simplified`  | The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`. | 
| **var.task_scheduling_policy** | block | False | -  |  -  | A `task_scheduling_policy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below. | 
| **var.user_accounts** | block | False | -  |  -  | A `user_accounts` block that describes the list of user accounts to be created on each node in the pool as defined below. | 
| **var.windows** | block | False | -  |  -  | A `windows` block that describes the Windows configuration in the pool as defined below. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **node_agent_sku_id** | string  | - | 
| **stop_pending_resize_operation** | string  | - | 
| **vm_size** | string  | - | 
| **storage_image_reference** | block  | - | 
| **data_disks** | block  | - | 
| **display_name** | string  | - | 
| **disk_encryption** | block  | - | 
| **extensions** | block  | - | 
| **inter_node_communication** | bool  | - | 
| **identity** | block  | - | 
| **license_type** | string  | - | 
| **max_tasks_per_node** | int  | - | 
| **fixed_scale** | block  | - | 
| **auto_scale** | block  | - | 
| **start_task** | block  | - | 
| **certificate** | list  | - | 
| **container_configuration** | block  | - | 
| **metadata** | string  | - | 
| **mount** | block  | - | 
| **network_configuration** | block  | - | 
| **node_placement** | block  | - | 
| **os_disk_placement** | string  | - | 
| **target_node_communication_mode** | string  | - | 
| **task_scheduling_policy** | block  | - | 
| **user_accounts** | block  | - | 
| **windows** | block  | - | 
| **id** | string  | The ID of the Batch Pool. | 