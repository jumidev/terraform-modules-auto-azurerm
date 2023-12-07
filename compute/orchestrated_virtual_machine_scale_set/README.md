# azurerm_orchestrated_virtual_machine_scale_set

Manages an Orchestrated Virtual Machine Scale Set.## Disclaimers-> **NOTE:** As of the **v2.86.0** (November 19, 2021) release of the provider this resource will only create Virtual Machine Scale Sets with the **Flexible** Orchestration Mode.-> **NOTE:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/orchestrated_virtual_machine_scale_set"   
}

inputs = {
   name = "The name of the Orchestrated Virtual Machine Scale Set..."   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   platform_fault_domain_count = "Specifies the number of fault domains that are used by this Orchestrated Virtual..."   
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
| **name** | string |  The name of the Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **platform_fault_domain_count** | string |  Specifies the number of fault domains that are used by this Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **sku_name** | string |  -  |  -  |  The `name` of the SKU to be used by this Orcestrated Virtual Machine Scale Set. Valid values include: any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs. | 
| **additional_capabilities** | [block](#additional_capabilities-block-structure) |  -  |  -  |  An `additional_capabilities` block. | 
| **encryption_at_host_enabled** | bool |  -  |  -  |  Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host? | 
| **instances** | number |  -  |  -  |  The number of Virtual Machines in the Orcestrated Virtual Machine Scale Set. | 
| **network_interface** | [block](#network_interface-block-structure) |  -  |  -  |  One or more `network_interface` blocks. | 
| **os_profile** | [block](#os_profile-block-structure) |  -  |  -  |  An `os_profile` block. | 
| **os_disk** | [block](#os_disk-block-structure) |  -  |  -  |  An `os_disk` block. | 
| **automatic_instance_repair** | [block](#automatic_instance_repair-block-structure) |  -  |  -  |  An `automatic_instance_repair` block. | 
| **boot_diagnostics** | [block](#boot_diagnostics-block-structure) |  -  |  -  |  A `boot_diagnostics` block. | 
| **capacity_reservation_group_id** | string |  -  |  -  |  Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created. | 
| **data_disk** | [block](#data_disk-block-structure) |  -  |  -  |  One or more `data_disk` blocks. | 
| **extension** | [block](#extension-block-structure) |  -  |  -  |  One or more `extension` blocks | 
| **extension_operations_enabled** | bool |  `True`  |  `true`, `false`  |  Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Orchestrated Virtual Machine Scale Set to be created. | 
| **extensions_time_budget** | string |  `PT1H30M`  |  -  |  Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **eviction_policy** | string |  -  |  `Deallocate`, `Delete`  |  The Policy which should be used Virtual Machines are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **license_type** | string |  -  |  `None`, `Windows_Client`, `Windows_Server`  |  Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Orchestrated Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`. | 
| **max_bid_price** | string |  `-1`  |  -  |  The maximum price you're willing to pay for each Orchestrated Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Orchestrated Scale Set should not be evicted for price reasons. | 
| **plan** | [block](#plan-block-structure) |  -  |  -  |  A `plan` block. Changing this forces a new resource to be created. | 
| **priority** | string |  `Regular`  |  `Regular`, `Spot`  |  The Priority of this Orchestrated Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource. | 
| **single_placement_group** | string |  -  |  `true`, `false`  |  Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`. | 
| **source_image_id** | string |  -  |  -  |  The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s. | 
| **source_image_reference** | [block](#source_image_reference-block-structure) |  -  |  -  |  A `source_image_reference` block. | 
| **termination_notification** | [block](#termination_notification-block-structure) |  -  |  -  |  A `termination_notification` block. | 
| **user_data_base64** | string |  -  |  -  |  The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set. | 
| **proximity_placement_group_id** | string |  -  |  -  |  The ID of the Proximity Placement Group which the Orchestrated Virtual Machine should be assigned to. Changing this forces a new resource to be created. | 
| **zone_balance** | bool |  `False`  |  -  |  Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created. | 
| **zones** | string |  -  |  -  |  Specifies a list of Availability Zones in which this Orchestrated Virtual Machine should be located. Changing this forces a new Orchestrated Virtual Machine to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to this Orchestrated Virtual Machine Scale Set. | 
| **priority_mix** | [block](#priority_mix-block-structure) |  -  |  -  |  a `priority_mix` block | 

### `diff_disk_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `option` | string | Yes | - | Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is 'Local'. Changing this forces a new resource to be created. |
| `placement` | string | No | CacheDisk | Specifies where to store the Ephemeral Disk. Possible values are 'CacheDisk' and 'ResourceDisk'. Defaults to 'CacheDisk'. Changing this forces a new resource to be created. |

### `windows_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_username` | string | Yes | - | The username of the local administrator on each Orchestrated Virtual Machine Scale Set instance. Changing this forces a new resource to be created. |
| `admin_password` | string | Yes | - | The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. |
| `computer_name_prefix` | string | No | name | The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the 'name' field. If the value of the 'name' field is not a valid 'computer_name_prefix', then you must specify 'computer_name_prefix'. Changing this forces a new resource to be created. |
| `enable_automatic_updates` | bool | No | True | Are automatic updates enabled for this Virtual Machine? Defaults to 'true'. |
| `hotpatching_enabled` | bool | No | False | Should the VM be patched without requiring a reboot? Possible values are 'true' or 'false'. Defaults to 'false'. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch). |
| `patch_assessment_mode` | string | No | ImageDefault | Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Orchestrated Virtual Machine Scale Set. Possible values are 'AutomaticByPlatform' or 'ImageDefault'. Defaults to 'ImageDefault'. |
| `patch_mode` | string | No | AutomaticByOS | Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are 'Manual', 'AutomaticByOS' and 'AutomaticByPlatform'. Defaults to 'AutomaticByOS'. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes). |
| `provision_vm_agent` | bool | No | True | Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to 'true'. Changing this value forces a new resource to be created. |
| `secret` | [block](#secret-block-structure) | No | - | One or more 'secret' blocks. |
| `timezone` | string | No | - | Specifies the time zone of the virtual machine, the possible values are defined [here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). |
| `winrm_listener` | [block](#winrm_listener-block-structure) | No | - | One or more 'winrm_listener' blocks. Changing this forces a new resource to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of Managed Identity that should be configured on this Orchestrated Windows Virtual Machine Scale Set. Only possible value is 'UserAssigned'. |
| `identity_ids` | string | Yes | - | Specifies a list of User Managed Identity IDs to be assigned to this Orchestrated Windows Virtual Machine Scale Set. |

### `winrm_listener` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | Specifies the protocol of listener. Possible values are 'Http' or 'Https'. Changing this forces a new resource to be created. |
| `certificate_url` | string | No | - | The Secret URL of a Key Vault Certificate, which must be specified when protocol is set to 'Https'. Changing this forces a new resource to be created. |

### `additional_capabilities` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ultra_ssd_enabled` | bool | No | False | Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Orchestrated Virtual Machine Scale Set? Defaults to 'false'. Changing this forces a new resource to be created. |

### `termination_notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | string | Yes | - | Should the termination notification be enabled on this Virtual Machine Scale Set? Possible values 'true' or 'false' |
| `timeout` | string | No | PT5M | Length of time (in minutes, between '5' and '15') a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in 'ISO 8601' format. Defaults to 'PT5M'. |

### `priority_mix` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `base_regular_count` | string | No | 0 | Specifies the base number of VMs of 'Regular' priority that will be created before any VMs of priority 'Spot' are created. Possible values are integers between '0' and '1000'. Defaults to '0'. |
| `regular_percentage_above_base` | string | No | 0 | Specifies the desired percentage of VM instances that are of 'Regular' priority after the base count has been reached. Possible values are integers between '0' and '100'. Defaults to '0'. |

### `os_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `custom_data` | string | No | - | The Base64-Encoded Custom Data which should be used for this Orchestrated Virtual Machine Scale Set. |
| `windows_configuration` | [block](#windows_configuration-block-structure) | No | - | A 'windows_configuration' block. |
| `linux_configuration` | [block](#linux_configuration-block-structure) | No | - | A 'linux_configuration' block. |

### `automatic_instance_repair` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | string | Yes | - | Should the automatic instance repair be enabled on this Orchestrated Virtual Machine Scale Set? Possible values are 'true' and 'false'. |
| `grace_period` | string | No | PT30M | Amount of time for which automatic repairs will be delayed. The grace period starts right after the VM is found unhealthy. Possible values are between '30' and '90' minutes. The time duration should be specified in 'ISO 8601' format (e.g. 'PT30M' to 'PT90M'). Defaults to 'PT30M'. |

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name for the Virtual Machine Scale Set Extension. |
| `publisher` | string | Yes | - | Specifies the Publisher of the Extension. |
| `type` | string | Yes | - | Specifies the Type of the Extension. |
| `type_handler_version` | string | Yes | - | Specifies the version of the extension to use, available versions can be found using the Azure CLI. |
| `auto_upgrade_minor_version_enabled` | bool | No | True | Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to 'true'. |
| `extensions_to_provision_after_vm_creation` | string | No | - | An ordered list of Extension names which Orchestrated Virtual Machine Scale Set should provision after VM creation. |
| `force_extension_execution_on_change` | string | No | - | A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed. |
| `protected_settings` | string | No | - | A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension. |
| `protected_settings_from_key_vault` | [block](#protected_settings_from_key_vault-block-structure) | No | - | A 'protected_settings_from_key_vault' block. |
| `failure_suppression_enabled` | string | No | - | Should failures from the extension be suppressed? Possible values are 'true' or 'false'. |
| `settings` | string | No | - | A JSON String which specifies Settings for the Extension. |

### `secret` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_id` | string | Yes | - | The ID of the Key Vault from which all Secrets should be sourced. |
| `certificate` | [block](#certificate-block-structure) | Yes | - | One or more 'certificate' blocks. |

### `certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `store` | string | Yes | - | The certificate store on the Virtual Machine where the certificate should be added. |
| `url` | string | Yes | - | The Secret URL of a Key Vault Certificate. |

### `protected_settings_from_key_vault` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_url` | string | Yes | - | The URL to the Key Vault Secret which stores the protected settings. |
| `source_vault_id` | string | Yes | - | The ID of the source Key Vault. |

### `source_image_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | Yes | - | Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `offer` | string | Yes | - | Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `sku` | string | Yes | - | Specifies the SKU of the image used to create the virtual machines. |
| `version` | string | Yes | - | Specifies the version of the image used to create the virtual machines. |

### `os_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `caching` | string | Yes | - | The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. |
| `storage_account_type` | string | Yes | - | The Type of Storage Account which should back this the Internal OS Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS' and 'Premium_ZRS'. Changing this forces a new resource to be created. |
| `diff_disk_settings` | [block](#diff_disk_settings-block-structure) | No | - | A 'diff_disk_settings' block. Changing this forces a new resource to be created. |
| `disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Changing this forces a new resource to be created. |
| `disk_size_gb` | number | No | - | The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from. |
| `write_accelerator_enabled` | bool | No | False | Specifies if Write Accelerator is enabled on the OS Disk. Defaults to 'false'. |

### `admin_ssh_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `public_key` | string | Yes | - | The Public Key which should be used for authentication, which needs to be at least 2048-bit and in ssh-rsa format. |
| `username` | string | Yes | - | The Username for which this Public SSH Key should be configured. |

### `boot_diagnostics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_uri` | string | No | - | The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. By including a 'boot_diagnostics' block without passing the 'storage_account_uri' field will cause the API to utilize a Managed Storage Account to store the Boot Diagnostics output. |

### `network_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name which should be used for this Network Interface. Changing this forces a new resource to be created. |
| `ip_configuration` | list | Yes | - | One or more 'ip_configuration' blocks. |
| `dns_servers` | list | No | - | A list of IP Addresses of DNS Servers which should be assigned to the Network Interface. |
| `enable_accelerated_networking` | bool | No | False | Does this Network Interface support Accelerated Networking? Possible values are 'true' and 'false'. Defaults to 'false'. |
| `enable_ip_forwarding` | bool | No | False | Does this Network Interface support IP Forwarding? Possible values are 'true' and 'false'. Defaults to 'false'. |
| `network_security_group_id` | string | No | - | The ID of a Network Security Group which should be assigned to this Network Interface. |
| `primary` | bool | No | False | Is this the Primary IP Configuration? Possible values are 'true' and 'false'. Defaults to 'false'. |

### `linux_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_username` | string | Yes | - | The username of the local administrator on each Orchestrated Virtual Machine Scale Set instance. Changing this forces a new resource to be created. |
| `admin_password` | string | No | - | The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. |
| `admin_ssh_key` | [block](#admin_ssh_key-block-structure) | No | - | A 'admin_ssh_key' block. |
| `computer_name_prefix` | string | No | computer_name_prefix | The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the name field. If the value of the name field is not a valid 'computer_name_prefix', then you must specify 'computer_name_prefix'. Changing this forces a new resource to be created. |
| `disable_password_authentication` | bool | No | True | When an 'admin_password' is specified 'disable_password_authentication' must be set to 'false'. Defaults to 'true'. |
| `patch_assessment_mode` | string | No | ImageDefault | Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Orchestrated Virtual Machine Scale Set. Possible values are 'AutomaticByPlatform' or 'ImageDefault'. Defaults to 'ImageDefault'. |
| `patch_mode` | string | No | ImageDefault | Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are 'ImageDefault' or 'AutomaticByPlatform'. Defaults to 'ImageDefault'. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes). |
| `provision_vm_agent` | bool | No | True | Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to 'true'. Changing this value forces a new resource to be created. |
| `secret` | [block](#secret-block-structure) | No | - | One or more 'secret' blocks. |

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the image from the marketplace. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | Specifies the publisher of the image. Changing this forces a new resource to be created. |
| `product` | string | Yes | - | Specifies the product of the image from the marketplace. Changing this forces a new resource to be created. |

### `data_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `caching` | string | Yes | - | The type of Caching which should be used for this Data Disk. Possible values are None, ReadOnly and ReadWrite. |
| `create_option` | string | No | Empty | The create option which should be used for this Data Disk. Possible values are Empty and FromImage. Defaults to 'Empty'. (FromImage should only be used if the source image includes data disks). |
| `disk_size_gb` | number | Yes | - | The size of the Data Disk which should be created. |
| `lun` | number | Yes | - | The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine. |
| `storage_account_type` | string | Yes | - | The Type of Storage Account which should back this Data Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS' and 'UltraSSD_LRS'. |
| `disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to encrypt the Data Disk. Changing this forces a new resource to be created. |
| `ultra_ssd_disk_iops_read_write` | string | No | - | Specifies the Read-Write IOPS for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'. |
| `ultra_ssd_disk_mbps_read_write` | string | No | - | Specifies the bandwidth in MB per second for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'. |
| `write_accelerator_enabled` | bool | No | False | Specifies if Write Accelerator is enabled on the Data Disk. Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Orchestrated Virtual Machine Scale Set. | 
| **unique_id** | string | No  | The Unique ID for the Orchestrated Virtual Machine Scale Set. | 

Additionally, all variables are provided as outputs.
