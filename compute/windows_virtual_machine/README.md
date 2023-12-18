# azurerm_windows_virtual_machine

Manages a Windows Virtual Machine.## Disclaimers-> **Note** Terraform will automatically remove the OS Disk by default - this behaviour can be configured [using the `features` setting within the Provider block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block).~> **Note** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).~> **Note** This resource does not support Unmanaged Disks. If you need to use Unmanaged Disks you can continue to use [the `azurerm_virtual_machine` resource](virtual_machine.html) instead.~> **Note** This resource does not support attaching existing OS Disks. You can instead [capture an image of the OS Disk](image.html) or continue to use [the `azurerm_virtual_machine` resource](virtual_machine.html) instead.~> In this release there's a known issue where the `public_ip_address` and `public_ip_addresses` fields may not be fully populated for Dynamic Public IP's.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/windows_virtual_machine"   
}

inputs = {
   admin_password = "The Password which should be used for the local-administrator on this Virtual Ma..."   
   admin_username = "The username of the local administrator used for the Virtual Machine..."   
   location = "${location}"   
   name = "The name of the Windows Virtual Machine"   
   # network_interface_ids → set in tfstate_inputs
   os_disk = {
      caching = "..."      
      storage_account_type = "..."      
      # disk_encryption_set_id → (optional) set in tfstate_inputs
   }
   
   resource_group_name = "${resource_group}"   
   size = "The SKU which should be used for this Virtual Machine, such as `Standard_F2`..."   
}

tfstate_inputs = {
   network_interface_ids = ["path/to/network_interface_component:id", "..."]   
   os_disk.disk_encryption_set_id = "path/to/disk_encryption_set_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `virtual_machine_data_disk_attachment` 

If set, makes a **azurerm_virtual_machine_data_disk_attachment** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `managed_disk_id` | string | True | null |
| `lun` | number | True | 3 |
| `caching` | string | True | "ReadOnly" |
| `create_option` | string | False | "Attach" |
| `write_accelerator_enabled` | bool | False | false |


Example component snippet:

```hcl
inputs = {
   virtual_machine_data_disk_attachment = {
      lun = 3      
      caching = "ReadOnly"      
      create_option = "Attach"      
      write_accelerator_enabled = false      
   }
   
}

tfstate_inputs = {
   virtual_machine_data_disk_attachment.managed_disk_id = "path/to/managed_disk_component:id"   
}

```


## Required Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **admin_password** | string |  `Random string of 32 characters`  |  The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | 
| **admin_username** | string |  -  |  The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **name** | string |  -  |  The name of the Windows Virtual Machine. Changing this forces a new resource to be created. | 
| **network_interface_ids** | list |  -  |  A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine. | 
| **os_disk** | [block](#os_disk-block-structure) |  -  |  A `os_disk` block. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created. | 
| **size** | string |  -  |  The SKU which should be used for this Virtual Machine, such as `Standard_F2`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **additional_capabilities** | [block](#additional_capabilities-block-structure) |  -  |  -  |  A `additional_capabilities` block. | 
| **additional_unattend_content** | [block](#additional_unattend_content-block-structure) |  -  |  -  |  One or more `additional_unattend_content` blocks. Changing this forces a new resource to be created. | 
| **allow_extension_operations** | bool |  `True`  |  -  |  Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`. | 
| **availability_set_id** | string |  -  |  -  |  Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **boot_diagnostics** | [block](#boot_diagnostics-block-structure) |  -  |  -  |  A `boot_diagnostics` block. | 
| **bypass_platform_safety_checks_on_user_schedule_enabled** | bool |  `False`  |  -  |  Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`. | 
| **capacity_reservation_group_id** | string |  -  |  -  |  Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to. | 
| **computer_name** | string |  `name`  |  -  |  Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created. | 
| **custom_data** | string |  -  |  -  |  The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created. | 
| **dedicated_host_id** | string |  -  |  -  |  The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`. | 
| **dedicated_host_group_id** | string |  -  |  -  |  The ID of a Dedicated Host Group that this Windows Virtual Machine should be run within. Conflicts with `dedicated_host_id`. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine should exist. Changing this forces a new Windows Virtual Machine to be created. | 
| **enable_automatic_updates** | bool |  `True`  |  -  |  Specifies if Automatic Updates are Enabled for the Windows Virtual Machine. Changing this forces a new resource to be created. Defaults to `true`. | 
| **encryption_at_host_enabled** | bool |  -  |  -  |  Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | 
| **eviction_policy** | string |  -  |  `Deallocate`, `Delete`  |  Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **extensions_time_budget** | string |  `PT1H30M`  |  -  |  Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **gallery_application** | [block](#gallery_application-block-structure) |  -  |  -  |  One or more `gallery_application` blocks. | 
| **hotpatching_enabled** | bool |  `False`  |  `true`, `false`  |  Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch). | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **license_type** | string |  -  |  `None`, `Windows_Client`, `Windows_Server`  |  Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine. Possible values are `None`, `Windows_Client` and `Windows_Server`. | 
| **max_bid_price** | string |  `-1`  |  -  |  The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons. | 
| **patch_assessment_mode** | string |  `ImageDefault`  |  `AutomaticByPlatform`, `ImageDefault`  |  Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`. | 
| **patch_mode** | string |  `AutomaticByOS`  |  `Manual`, `AutomaticByOS`, `AutomaticByPlatform`  |  Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes). | 
| **plan** | [block](#plan-block-structure) |  -  |  -  |  A `plan` block. Changing this forces a new resource to be created. | 
| **platform_fault_domain** | string |  `-1`  |  -  |  Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Windows Virtual Machine to be created. | 
| **priority** | string |  `Regular`  |  `Regular`, `Spot`  |  Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created. | 
| **provision_vm_agent** | bool |  `True`  |  -  |  Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created. | 
| **proximity_placement_group_id** | string |  -  |  -  |  The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. | 
| **reboot_setting** | string |  -  |  `Always`, `IfRequired`, `Never`  |  Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`. | 
| **secret** | [block](#secret-block-structure) |  -  |  -  |  One or more `secret` blocks. | 
| **secure_boot_enabled** | bool |  -  |  -  |  Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created. | 
| **source_image_id** | string |  -  |  -  |  The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s. | 
| **source_image_reference** | [block](#source_image_reference-block-structure) |  -  |  -  |  A `source_image_reference` block. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to this Virtual Machine. | 
| **termination_notification** | [block](#termination_notification-block-structure) |  -  |  -  |  A `termination_notification` block. | 
| **timezone** | string |  -  |  -  |  Specifies the Time Zone which should be used by the Virtual Machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created. | 
| **user_data** | string |  -  |  -  |  The Base64-Encoded User Data which should be used for this Virtual Machine. | 
| **virtual_machine_scale_set_id** | string |  -  |  -  |  Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within. Changing this forces a new resource to be created. | 
| **vtpm_enabled** | bool |  -  |  -  |  Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created. | 
| **winrm_listener** | [block](#winrm_listener-block-structure) |  -  |  -  |  One or more `winrm_listener` blocks. Changing this forces a new resource to be created. | 
| **zone** | string |  -  |  -  |  * `zones` -  Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created. | 

### `boot_diagnostics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_uri` | string | No | - | The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. |

### `winrm_listener` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | Specifies the protocol of listener. Possible values are 'Http' or 'Https'. Changing this forces a new resource to be created. |
| `certificate_url` | string | No | - | The Secret URL of a Key Vault Certificate, which must be specified when 'protocol' is set to 'Https'. Changing this forces a new resource to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Windows Virtual Machine. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Windows Virtual Machine. |

### `source_image_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | Yes | - | Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `offer` | string | Yes | - | Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `sku` | string | Yes | - | Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `version` | string | Yes | - | Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created. |

### `gallery_application` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `version_id` | string | Yes | - | Specifies the Gallery Application Version resource ID. |
| `configuration_blob_uri` | string | No | - | Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. |
| `order` | string | No | - | Specifies the order in which the packages have to be installed. Possible values are between '0' and '2,147,483,647'. |
| `tag` | string | No | - | Specifies a passthrough value for more generic context. This field can be any valid 'string' value. |

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created. |
| `product` | string | Yes | - | Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created. |

### `os_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `caching` | string | Yes | - | The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. |
| `storage_account_type` | string | Yes | - | The Type of Storage Account which should back this the Internal OS Disk. Possible values are 'Standard_LRS', 'StandardSSD_LRS', 'Premium_LRS', 'StandardSSD_ZRS' and 'Premium_ZRS'. Changing this forces a new resource to be created. |
| `diff_disk_settings` | [block](#diff_disk_settings-block-structure) | No | - | A 'diff_disk_settings' block. Changing this forces a new resource to be created. |
| `disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. Conflicts with 'secure_vm_disk_encryption_set_id'. |
| `disk_size_gb` | number | No | - | The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from. |
| `name` | string | No | - | The name which should be used for the Internal OS Disk. Changing this forces a new resource to be created. |
| `secure_vm_disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with 'disk_encryption_set_id'. Changing this forces a new resource to be created. |
| `security_encryption_type` | string | No | - | Encryption Type when the Virtual Machine is a Confidential VM. Possible values are 'VMGuestStateOnly' and 'DiskWithVMGuestState'. Changing this forces a new resource to be created. |
| `write_accelerator_enabled` | bool | No | False | Should Write Accelerator be Enabled for this OS Disk? Defaults to 'false'. |

### `termination_notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the termination notification be enabled on this Virtual Machine? |
| `timeout` | string | No | PT5M | Length of time (in minutes, between '5' and '15') a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to 'PT5M'. |

### `secret` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `certificate` | list | Yes | - | One or more 'certificate' blocks. |
| `key_vault_id` | string | Yes | - | The ID of the Key Vault from which all Secrets should be sourced. |

### `diff_disk_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `option` | string | Yes | - | Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is 'Local'. Changing this forces a new resource to be created. |
| `placement` | string | No | CacheDisk | Specifies where to store the Ephemeral Disk. Possible values are 'CacheDisk' and 'ResourceDisk'. Defaults to 'CacheDisk'. Changing this forces a new resource to be created. |

### `additional_capabilities` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ultra_ssd_enabled` | bool | No | False | Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Virtual Machine? Defaults to 'false'. |

### `additional_unattend_content` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | The XML formatted content that is added to the unattend.xml file for the specified path and component. Changing this forces a new resource to be created. |
| `setting` | string | Yes | - | The name of the setting to which the content applies. Possible values are 'AutoLogon' and 'FirstLogonCommands'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Windows Virtual Machine. | 
| **identity** | block | No  | An `identity` block. | 
| **private_ip_address** | string | No  | The Primary Private IP Address assigned to this Virtual Machine. | 
| **private_ip_addresses** | list | No  | A list of Private IP Addresses assigned to this Virtual Machine. | 
| **public_ip_address** | string | No  | The Primary Public IP Address assigned to this Virtual Machine. | 
| **public_ip_addresses** | list | No  | A list of the Public IP Addresses assigned to this Virtual Machine. | 
| **virtual_machine_id** | string | No  | A 128-bit identifier which uniquely identifies this Virtual Machine. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
