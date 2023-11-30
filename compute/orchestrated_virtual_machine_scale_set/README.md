# azurerm_orchestrated_virtual_machine_scale_set

Manages an Orchestrated Virtual Machine Scale Set.## Disclaimers-> **NOTE:** As of the **v2.86.0** (November 19, 2021) release of the provider this resource will only create Virtual Machine Scale Sets with the **Flexible** Orchestration Mode.-> **NOTE:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/orchestrated_virtual_machine_scale_set" 
}

inputs = {
   name = "name of orchestrated_virtual_machine_scale_set" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   platform_fault_domain_count = "platform_fault_domain_count of orchestrated_virtual_machine_scale_set" 
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
| **var.name** | string | True | -  |  -  |  The name of the Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure location where the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **var.platform_fault_domain_count** | int | True | -  |  -  |  Specifies the number of fault domains that are used by this Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | False | -  |  -  |  The `name` of the SKU to be used by this Orcestrated Virtual Machine Scale Set. Valid values include: any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs. | 
| **var.additional_capabilities** | block | False | -  |  -  |  An `additional_capabilities` block. | | `additional_capabilities` block structure: || 
|   ultra_ssd_enabled (bool): Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Orchestrated Virtual Machine Scale Set? Defaults to 'false'. Changing this forces a new resource to be created. ||

| **var.encryption_at_host_enabled** | bool | False | -  |  -  |  Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host? | 
| **var.instances** | int | False | -  |  -  |  The number of Virtual Machines in the Orcestrated Virtual Machine Scale Set. | 
| **var.network_interface** | block | False | -  |  -  |  One or more `network_interface` blocks. | | `network_interface` block structure: || 
|   name (string): (REQUIRED) The Name which should be used for this Network Interface. Changing this forces a new resource to be created. ||
|   ip_configuration (list): (REQUIRED) One or more 'ip_configuration' blocks. ||
|   dns_servers (list): A list of IP Addresses of DNS Servers which should be assigned to the Network Interface. ||
|   enable_accelerated_networking (bool): Does this Network Interface support Accelerated Networking? Possible values are 'true' and 'false'. Defaults to 'false'. ||
|   enable_ip_forwarding (bool): Does this Network Interface support IP Forwarding? Possible values are 'true' and 'false'. Defaults to 'false'. ||
|   network_security_group_id (string): The ID of a Network Security Group which should be assigned to this Network Interface. ||
|   primary (bool): Is this the Primary IP Configuration? Possible values are 'true' and 'false'. Defaults to 'false'. ||

| **var.os_profile** | block | False | -  |  -  |  An `os_profile` block. | | `os_profile` block structure: || 
|   custom_data (string): The Base64-Encoded Custom Data which should be used for this Orchestrated Virtual Machine Scale Set. ||
|   windows_configuration (block): A 'windows_configuration' block. ||
|   linux_configuration (block): A 'linux_configuration' block. ||

| **var.os_disk** | block | False | -  |  -  |  An `os_disk` block. | | `os_disk` block structure: || 
|   caching (string): (REQUIRED) The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. ||
|   storage_account_type (string): (REQUIRED) The Type of Storage Account which should back this the Internal OS Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS' and 'Premium_ZRS'. Changing this forces a new resource to be created. ||
|   diff_disk_settings (block): A 'diff_disk_settings' block. Changing this forces a new resource to be created. ||
|   disk_encryption_set_id (string): The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Changing this forces a new resource to be created. ||
|   disk_size_gb (int): The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from. ||
|   write_accelerator_enabled (bool): Specifies if Write Accelerator is enabled on the OS Disk. Defaults to 'false'. ||

| **var.automatic_instance_repair** | block | False | -  |  -  |  An `automatic_instance_repair` block. | | `automatic_instance_repair` block structure: || 
|   enabled (string): (REQUIRED) Should the automatic instance repair be enabled on this Orchestrated Virtual Machine Scale Set? Possible values are 'true' and 'false'. ||
|   grace_period (string): Amount of time for which automatic repairs will be delayed. The grace period starts right after the VM is found unhealthy. Possible values are between '30' and '90' minutes. The time duration should be specified in 'ISO 8601' format (e.g. 'PT30M' to 'PT90M'). Defaults to 'PT30M'. ||

| **var.boot_diagnostics** | block | False | -  |  -  |  A `boot_diagnostics` block. | | `boot_diagnostics` block structure: || 
|   storage_account_uri (string): The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. By including a 'boot_diagnostics' block without passing the 'storage_account_uri' field will cause the API to utilize a Managed Storage Account to store the Boot Diagnostics output. ||

| **var.capacity_reservation_group_id** | string | False | -  |  -  |  Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created. | 
| **var.data_disk** | block | False | -  |  -  |  One or more `data_disk` blocks. | | `data_disk` block structure: || 
|   caching (string): (REQUIRED) The type of Caching which should be used for this Data Disk. Possible values are None, ReadOnly and ReadWrite. ||
|   create_option (string): The create option which should be used for this Data Disk. Possible values are Empty and FromImage. Defaults to 'Empty'. (FromImage should only be used if the source image includes data disks). ||
|   disk_size_gb (int): (REQUIRED) The size of the Data Disk which should be created. ||
|   lun (int): (REQUIRED) The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine. ||
|   storage_account_type (string): (REQUIRED) The Type of Storage Account which should back this Data Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS' and 'UltraSSD_LRS'. ||
|   disk_encryption_set_id (string): The ID of the Disk Encryption Set which should be used to encrypt the Data Disk. Changing this forces a new resource to be created. ||
|   ultra_ssd_disk_iops_read_write (string): Specifies the Read-Write IOPS for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'. ||
|   ultra_ssd_disk_mbps_read_write (int): Specifies the bandwidth in MB per second for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'. ||
|   write_accelerator_enabled (bool): Specifies if Write Accelerator is enabled on the Data Disk. Defaults to 'false'. ||

| **var.extension** | block | False | -  |  -  |  One or more `extension` blocks | | `extension` block structure: || 
|   name (string): (REQUIRED) The name for the Virtual Machine Scale Set Extension. ||
|   publisher (string): (REQUIRED) Specifies the Publisher of the Extension. ||
|   type (string): (REQUIRED) Specifies the Type of the Extension. ||
|   type_handler_version (string): (REQUIRED) Specifies the version of the extension to use, available versions can be found using the Azure CLI. ||
|   auto_upgrade_minor_version_enabled (bool): Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to 'true'. ||
|   extensions_to_provision_after_vm_creation (string): An ordered list of Extension names which Orchestrated Virtual Machine Scale Set should provision after VM creation. ||
|   force_extension_execution_on_change (string): A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed. ||
|   protected_settings (string): A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension. ||
|   protected_settings_from_key_vault (block): A 'protected_settings_from_key_vault' block. ||
|   failure_suppression_enabled (string): Should failures from the extension be suppressed? Possible values are 'true' or 'false'. ||
|   settings (string): A JSON String which specifies Settings for the Extension. ||

| **var.extension_operations_enabled** | bool | False | `True`  |  `true`, `false`  |  Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Orchestrated Virtual Machine Scale Set to be created. | 
| **var.extensions_time_budget** | string | False | `PT1H30M`  |  -  |  Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **var.eviction_policy** | string | False | -  |  `Deallocate`, `Delete`  |  The Policy which should be used Virtual Machines are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) The type of Managed Identity that should be configured on this Orchestrated Windows Virtual Machine Scale Set. Only possible value is 'UserAssigned'. ||
|   identity_ids (string): (REQUIRED) Specifies a list of User Managed Identity IDs to be assigned to this Orchestrated Windows Virtual Machine Scale Set. ||

| **var.license_type** | string | False | -  |  `None`, `Windows_Client`, `Windows_Server`  |  Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Orchestrated Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`. | 
| **var.max_bid_price** | string | False | `-1`  |  -  |  The maximum price you're willing to pay for each Orchestrated Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Orchestrated Scale Set should not be evicted for price reasons. | 
| **var.plan** | block | False | -  |  -  |  A `plan` block. Changing this forces a new resource to be created. | | `plan` block structure: || 
|   name (string): (REQUIRED) Specifies the name of the image from the marketplace. Changing this forces a new resource to be created. ||
|   publisher (string): (REQUIRED) Specifies the publisher of the image. Changing this forces a new resource to be created. ||
|   product (string): (REQUIRED) Specifies the product of the image from the marketplace. Changing this forces a new resource to be created. ||

| **var.priority** | string | False | `Regular`  |  `Regular`, `Spot`  |  The Priority of this Orchestrated Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource. | 
| **var.single_placement_group** | string | False | -  |  `true`, `false`  |  Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`. | 
| **var.source_image_id** | string | False | -  |  -  |  The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s. | 
| **var.source_image_reference** | block | False | -  |  -  |  A `source_image_reference` block. | | `source_image_reference` block structure: || 
|   publisher (string): (REQUIRED) Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   offer (string): (REQUIRED) Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   sku (string): (REQUIRED) Specifies the SKU of the image used to create the virtual machines. ||
|   version (string): (REQUIRED) Specifies the version of the image used to create the virtual machines. ||

| **var.termination_notification** | block | False | -  |  -  |  A `termination_notification` block. | | `termination_notification` block structure: || 
|   enabled (string): (REQUIRED) Should the termination notification be enabled on this Virtual Machine Scale Set? Possible values 'true' or 'false' ||
|   timeout (string): Length of time (in minutes, between '5' and '15') a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in 'ISO 8601' format. Defaults to 'PT5M'. ||

| **var.user_data_base64** | string | False | -  |  -  |  The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  |  The ID of the Proximity Placement Group which the Orchestrated Virtual Machine should be assigned to. Changing this forces a new resource to be created. | 
| **var.zone_balance** | bool | False | `False`  |  -  |  Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.zones** | string | False | -  |  -  |  Specifies a list of Availability Zones in which this Orchestrated Virtual Machine should be located. Changing this forces a new Orchestrated Virtual Machine to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to this Orchestrated Virtual Machine Scale Set. | 
| **var.priority_mix** | block | False | -  |  -  |  a `priority_mix` block | | `priority_mix` block structure: || 
|   base_regular_count (string): Specifies the base number of VMs of 'Regular' priority that will be created before any VMs of priority 'Spot' are created. Possible values are integers between '0' and '1000'. Defaults to '0'. ||
|   regular_percentage_above_base (string): Specifies the desired percentage of VM instances that are of 'Regular' priority after the base count has been reached. Possible values are integers between '0' and '100'. Defaults to '0'. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Orchestrated Virtual Machine Scale Set. | 
| **unique_id** | string | No  | The Unique ID for the Orchestrated Virtual Machine Scale Set. | 

Additionally, all variables are provided as outputs.
