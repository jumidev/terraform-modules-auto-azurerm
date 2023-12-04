# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Batch pool. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created."
  type        = string

}
variable "node_agent_sku_id" {
  description = "(REQUIRED) Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created."
  type        = string

}
variable "vm_size" {
  description = "(REQUIRED) Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_image_reference" {
  description = "(REQUIRED) A 'storage_image_reference' block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# storage_image_reference block structure:
#   publisher (string)                     : Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   offer (string)                         : Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   sku (string)                           : Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   version (string)                       : Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "stop_pending_resize_operation" {
  description = "Whether to stop if there is a pending resize operation on this pool."
  type        = string
  default     = null
}
variable "data_disks" {
  description = "A 'data_disks' block describes the data disk settings as defined below."
  type        = map(any)
  default     = null
}
#
# data_disks block structure   :
#   lun (string)                 : (REQUIRED) The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun. The value must be between 0 and 63, inclusive.
#   caching (string)             : Values are: 'none' - The caching mode for the disk is not enabled. 'readOnly' - The caching mode for the disk is read only. 'readWrite' - The caching mode for the disk is read and write. For information about the caching options see: <https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/>. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. Defaults to 'ReadOnly'.
#   disk_size_gb (int)           : (REQUIRED) The initial disk size in GB when creating new data disk.
#   storage_account_type (string): The storage account type to be used for the data disk. Values are: Possible values are 'Standard_LRS' - The data disk should use standard locally redundant storage. 'Premium_LRS' - The data disk should use premium locally redundant storage. Defaults to 'Standard_LRS'.


variable "display_name" {
  description = "Specifies the display name of the Batch pool. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "disk_encryption" {
  description = "A 'disk_encryption' block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image."
  type        = map(any)
  default     = null
}
#
# disk_encryption block structure:
#   disk_encryption_target (string): (REQUIRED) On Linux pool, only ''TemporaryDisk'' is supported; on Windows pool, ''OsDisk'' and ''TemporaryDisk'' must be specified.


variable "extensions" {
  description = "An 'extensions' block."
  type        = map(any)
  default     = null
}
#
# extensions block structure         :
#   publisher (string)                 : (REQUIRED) The name of the extension handler publisher.The name of the extension handler publisher.
#   type (string)                      : (REQUIRED) The type of the extensions.
#   type_handler_version (string)      : The version of script handler.
#   auto_upgrade_minor_version (bool)  : Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
#   automatic_upgrade_enabled (bool)   : Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are 'true' and 'false'.
#   settings_json (string)             : JSON formatted public settings for the extension.
#   protected_settings (string)        : The extension can contain either 'protected_settings' or 'provision_after_extensions' or no protected settings at all.
#   provision_after_extensions (string): The collection of extension names. Collection of extension names after which this extension needs to be provisioned.


variable "inter_node_communication" {
  description = "Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are 'Disabled' and 'Enabled'. Defaults to 'Enabled'."
  type        = bool
  default     = false
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Batch Account. Only possible value is 'UserAssigned'.
#   identity_ids (string)   : (REQUIRED) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Batch Account.


variable "license_type" {
  description = "The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: 'Windows_Server' - The on-premises license is for Windows Server. 'Windows_Client' - The on-premises license is for Windows Client."
  type        = string
  default     = null
}
variable "max_tasks_per_node" {
  description = "Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to '1'. Changing this forces a new resource to be created."
  type        = int
  default     = 1
}
variable "fixed_scale" {
  description = "A 'fixed_scale' block that describes the scale settings when using fixed scale as defined below."
  type        = map(any)
  default     = null
}
#
# fixed_scale block structure      :
#   node_deallocation_method (string): It determines what to do with a node and its running task(s) if the pool size is decreasing. Values are 'Requeue', 'RetainedData', 'TaskCompletion' and 'Terminate'.
#   target_dedicated_nodes (int)     : The number of nodes in the Batch pool. Defaults to '1'.
#   target_low_priority_nodes (int)  : The number of low priority nodes in the Batch pool. Defaults to '0'.
#   resize_timeout (string)          : The timeout for resize operations. Defaults to 'PT15M'.


variable "auto_scale" {
  description = "A 'auto_scale' block that describes the scale settings when using auto scale as defined below."
  type        = map(any)
  default     = null
}
#
# auto_scale block structure  :
#   evaluation_interval (string): The interval to wait before evaluating if the pool needs to be scaled. Defaults to 'PT15M'.
#   formula (string)            : (REQUIRED) The autoscale formula that needs to be used for scaling the Batch pool.


variable "start_task" {
  description = "A 'start_task' block that describes the start task settings for the Batch pool as defined below."
  type        = map(any)
  default     = null
}
#
# start_task block structure            :
#   command_line (string)                 : (REQUIRED) The command line executed by the start task.
#   container (block)                     : A 'container' block is the settings for the container under which the start task runs as defined below. When this is specified, all directories recursively below the 'AZ_BATCH_NODE_ROOT_DIR' (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container.
#   task_retry_maximum (int)              : The number of retry count.
#   wait_for_success (bool)               : A flag that indicates if the Batch pool should wait for the start task to be completed. Default to 'false'.
#   common_environment_properties (string): A map of strings (key,value) that represents the environment variables to set in the start task.
#   user_identity (block)                 : (REQUIRED) A 'user_identity' block that describes the user identity under which the start task runs as defined below.
#   resource_file (list)                  : One or more 'resource_file' blocks that describe the files to be downloaded to a compute node as defined below.
#
# user_identity block structure:
#   user_name (string)           : The username to be used by the Batch pool start task.
#   auto_user (block)            : A 'auto_user' block that describes the user identity under which the start task runs as defined below.
#
# container block structure :
#   image_name (string)       : (REQUIRED) The image to use to create the container in which the task will run. This is the full image reference, as would be specified to 'docker pull'. If no tag is provided as part of the image name, the tag ':latest' is used as a default.
#   run_options (string)      : Additional options to the container create command. These additional options are supplied as arguments to the 'docker create' command, in addition to those controlled by the Batch Service.
#   registry (string)         : The 'container_registries' block defined as below.
#   working_directory (string): A flag to indicate where the container task working directory is. Possible values are 'TaskWorkingDirectory' and 'ContainerImageDefault'.
#
# auto_user block structure:
#   elevation_level (string) : The elevation level of the user identity under which the start task runs. Possible values are 'Admin' or 'NonAdmin'. Defaults to 'NonAdmin'.
#   scope (string)           : The scope of the user identity under which the start task runs. Possible values are 'Task' or 'Pool'. Defaults to 'Task'.


variable "certificate" {
  description = "One or more 'certificate' blocks that describe the certificates to be installed on each compute node in the pool as defined below."
  type        = list(any)
  default     = []
}
variable "container_configuration" {
  description = "The container configuration used in the pool's VMs. One 'container_configuration' block."
  type        = map(any)
  default     = null
}
#
# container_configuration block structure:
#   type (string)                          : The type of container configuration. Possible value is 'DockerCompatible'.
#   container_image_names (list)           : A list of container image names to use, as would be specified by 'docker pull'. Changing this forces a new resource to be created.
#   container_registries (block)           : One or more 'container_registries' blocks. Additional container registries from which container images can be pulled by the pool's VMs. Changing this forces a new resource to be created.
#
# container_registries block structure:
#   registry_server (string)            : (REQUIRED) The container registry URL. Changing this forces a new resource to be created.
#   user_name (string)                  : The user name to log into the registry server. Changing this forces a new resource to be created.
#   password (string)                   : The password to log into the registry server. Changing this forces a new resource to be created.
#   user_assigned_identity_id (string)  : The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password. Changing this forces a new resource to be created.


variable "metadata" {
  description = "A map of custom batch pool metadata."
  type        = string
  default     = null
}
variable "mount" {
  description = "A 'mount' block defined as below."
  type        = map(any)
  default     = null
}
#
# mount block structure         :
#   azure_blob_file_system (block): A 'azure_blob_file_system' block defined as below.
#   azure_file_share (block)      : A 'azure_file_share' block defined as below.
#   cifs_mount (block)            : A 'cifs_mount' block defined as below.
#   nfs_mount (block)             : A 'nfs_mount' block defined as below.
#
# azure_file_share block structure:
#   account_name (string)           : (REQUIRED) The Azure Storage Account name.
#   account_key (string)            : (REQUIRED) The Azure Storage Account key.
#   azure_file_url (string)         : (REQUIRED) The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'.
#   relative_mount_path (string)    : (REQUIRED) The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable.
#   mount_options (string)          : Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
#
# azure_blob_file_system block structure:
#   account_name (string)                 : (REQUIRED) The Azure Storage Account name.
#   container_name (string)               : (REQUIRED) The Azure Blob Storage Container name.
#   relative_mount_path (string)          : (REQUIRED) The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable.
#   account_key (string)                  : The Azure Storage Account key. This property is mutually exclusive with both 'sas_key' and 'identity_id'; exactly one must be specified.
#   sas_key (string)                      : The Azure Storage SAS token. This property is mutually exclusive with both 'account_key' and 'identity_id'; exactly one must be specified.
#   identity_id (string)                  : The ARM resource id of the user assigned identity. This property is mutually exclusive with both 'account_key' and 'sas_key'; exactly one must be specified.
#   blobfuse_options (string)             : Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
#
# cifs_mount block structure  :
#   user_name (string)          : (REQUIRED) The user to use for authentication against the CIFS file system.
#   password (string)           : (REQUIRED) The password to use for authentication against the CIFS file system.
#   source (string)             : (REQUIRED) The URI of the file system to mount.
#   relative_mount_path (string): (REQUIRED) The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable.
#   mount_options (string)      : Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
#
# nfs_mount block structure   :
#   source (string)             : (REQUIRED) The URI of the file system to mount.
#   relative_mount_path (string): (REQUIRED) The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the 'AZ_BATCH_NODE_MOUNTS_DIR' environment variable.
#   mount_options (string)      : Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.


variable "network_configuration" {
  description = "A 'network_configuration' block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# network_configuration block structure    :
#   subnet_id (string)                       : The ARM resource identifier of the virtual network subnet which the compute nodes of the pool will join. Changing this forces a new resource to be created.
#   dynamic_vnet_assignment_scope (string)   : The scope of dynamic vnet assignment. Allowed values: 'none', 'job'. Changing this forces a new resource to be created. Defaults to 'none'.
#   accelerated_networking_enabled (bool)    : Whether to enable accelerated networking. Possible values are 'true' and 'false'. Defaults to 'false'. Changing this forces a new resource to be created.
#   public_ips (list)                        : A list of public IP ids that will be allocated to nodes. Changing this forces a new resource to be created.
#   endpoint_configuration (block)           : A list of 'endpoint_configuration' blocks that can be used to address specific ports on an individual compute node externally as defined below. Set as documented in the inbound_nat_pools block below. Changing this forces a new resource to be created.
#   public_address_provisioning_type (string): Type of public IP address provisioning. Supported values are 'BatchManaged', 'UserManaged' and 'NoPublicIPAddresses'.
#
# endpoint_configuration block structure:
#   backend_port (string)                 : (REQUIRED) The port number on the compute node. Acceptable values are between '1' and '65535' except for '29876', '29877' as these are reserved. Changing this forces a new resource to be created.
#   protocol (string)                     : (REQUIRED) The protocol of the endpoint. Acceptable values are 'TCP' and 'UDP'. Changing this forces a new resource to be created.
#   frontend_port_range (string)          : (REQUIRED) The range of external ports that will be used to provide inbound access to the backendPort on individual compute nodes in the format of '1000-1100'. Acceptable values range between '1' and '65534' except ports from '50000' to '55000' which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. Values must be a range of at least '100' nodes. Changing this forces a new resource to be created.
#   network_security_group_rules (block)  : A list of 'network_security_group_rules' blocks that will be applied to the endpoint. The maximum number of rules that can be specified across all the endpoints on a Batch pool is '25'. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. Set as documented in the network_security_group_rules block below. Changing this forces a new resource to be created.
#
# network_security_group_rules block structure:
#   access (string)                             : (REQUIRED) The action that should be taken for a specified IP address, subnet range or tag. Acceptable values are 'Allow' and 'Deny'. Changing this forces a new resource to be created.
#   priority (string)                           : (REQUIRED) The priority for this rule. The value must be at least '150'. Changing this forces a new resource to be created.
#   source_address_prefix (string)              : (REQUIRED) The source address prefix or tag to match for the rule. Changing this forces a new resource to be created.
#   source_port_ranges (string)                 : The source port ranges to match for the rule. Valid values are '*' (for all ports 0 - 65535) or arrays of ports or port ranges (i.e. '100-200'). The ports should in the range of 0 to 65535 and the port ranges or ports can't overlap. If any other values are provided the request fails with HTTP status code 400. Default value will be '*'. Changing this forces a new resource to be created.


variable "node_placement" {
  description = "A 'node_placement' block that describes the placement policy for allocating nodes in the pool as defined below."
  type        = map(any)
  default     = null
}
#
# node_placement block structure:
#   policy (string)               : The placement policy for allocating nodes in the pool. Values are: 'Regional': All nodes in the pool will be allocated in the same region; 'Zonal': Nodes in the pool will be spread across different zones with the best effort balancing. Defaults to 'Regional'.


variable "os_disk_placement" {
  description = "Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements> and Linux VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements>. The only possible value is 'CacheDisk'."
  type        = string
  default     = null
}
variable "target_node_communication_mode" {
  description = "The desired node communication mode for the pool. Possible values are 'Classic', 'Default' and 'Simplified'."
  type        = string
  default     = null
}
variable "task_scheduling_policy" {
  description = "A 'task_scheduling_policy' block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below."
  type        = map(any)
  default     = null
}
#
# task_scheduling_policy block structure:
#   node_fill_type (string)               : Supported values are 'Pack' and 'Spread'. 'Pack' means as many tasks as possible (taskSlotsPerNode) should be assigned to each node in the pool before any tasks are assigned to the next node in the pool. 'Spread' means that tasks should be assigned evenly across all nodes in the pool.


variable "user_accounts" {
  description = "A 'user_accounts' block that describes the list of user accounts to be created on each node in the pool as defined below."
  type        = map(map(any))
  default     = null
}
#
# user_accounts block structure      :
#   password (string)                  : (REQUIRED) The password for the user account.
#   elevation_level (string)           : (REQUIRED) The elevation level of the user account. 'NonAdmin' - The auto user is a standard user without elevated access. 'Admin' - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
#   linux_user_configuration (string)  : The 'linux_user_configuration' block defined below is a linux-specific user configuration for the user account. This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
#   windows_user_configuration (string): The 'windows_user_configuration' block defined below is a windows-specific user configuration for the user account. This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.


variable "windows" {
  description = "A 'windows' block that describes the Windows configuration in the pool as defined below."
  type        = map(any)
  default     = null
}
#
# windows block structure        :
#   enable_automatic_updates (bool): Whether automatic updates are enabled on the virtual machine. Defaults to 'true'.


