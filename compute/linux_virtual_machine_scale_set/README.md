# azurerm_linux_virtual_machine_scale_set

Manages a Linux Virtual Machine Scale Set.## Disclaimers-> **NOTE:** As of the **v2.86.0** (November 19, 2021) release of the provider this resource will only create Virtual Machine Scale Sets with the **Uniform** Orchestration Mode. For Virtual Machine Scale Sets with **Flexible** orchestration mode, use [`azurerm_orchestrated_virtual_machine_scale_set`](orchestrated_virtual_machine_scale_set.html). Flexible orchestration mode is recommended for workloads on Azure.-> **NOTE:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).-> **NOTE:** Terraform will automatically update & reimage the nodes in the Scale Set (if Required) during an Update - this behaviour can be configured [using the `features` setting within the Provider block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/linux_virtual_machine_scale_set"   
}

inputs = {
   name = "The name of the Linux Virtual Machine Scale Set"   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   admin_username = "The username of the local administrator on each Virtual Machine Scale Set instan..."   
   sku = "The Virtual Machine SKU for the Scale Set, such as `Standard_F2`..."   
   network_interface = {
      this_network_interface = {
         name = "..."         
         ip_configuration = "..."         
         # network_security_group_id → (optional) set in tfstate_inputs
      }
      
   }
   
   os_disk = {
      caching = "..."      
      storage_account_type = "..."      
      # disk_encryption_set_id → (optional) set in tfstate_inputs
   }
   
}

tfstate_inputs = {
   network_interface.this_network_interface.network_security_group_id = "path/to/network_security_group_component:id"   
   os_disk.disk_encryption_set_id = "path/to/disk_encryption_set_component:id"   
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
| **name** | string |  The name of the Linux Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where the Linux Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created. | 
| **admin_username** | string |  The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created. | 
| **sku** | string |  The Virtual Machine SKU for the Scale Set, such as `Standard_F2`. | 
| **network_interface** | [block](#network_interface-block-structure) |  One or more `network_interface` blocks. | 
| **os_disk** | [block](#os_disk-block-structure) |  An `os_disk` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **instances** | int |  `0`  |  -  |  The number of Virtual Machines in the Scale Set. Defaults to `0`. | 
| **additional_capabilities** | [block](#additional_capabilities-block-structure) |  -  |  -  |  An `additional_capabilities` block. | 
| **admin_password** | string |  `Random string of 32 characters`  |  -  |  The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | 
| **admin_ssh_key** | [block](#admin_ssh_key-block-structure) |  -  |  -  |  One or more `admin_ssh_key` blocks. | 
| **automatic_os_upgrade_policy** | [block](#automatic_os_upgrade_policy-block-structure) |  -  |  -  |  An `automatic_os_upgrade_policy` block. This can only be specified when `upgrade_mode` is set to either `Automatic` or `Rolling`. | 
| **automatic_instance_repair** | [block](#automatic_instance_repair-block-structure) |  -  |  -  |  An `automatic_instance_repair` block. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `health_probe_id` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension). | 
| **boot_diagnostics** | [block](#boot_diagnostics-block-structure) |  -  |  -  |  A `boot_diagnostics` block. | 
| **capacity_reservation_group_id** | string |  -  |  -  |  Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created. | 
| **computer_name_prefix** | string |  `name`  |  -  |  The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created. | 
| **custom_data** | string |  -  |  -  |  The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set. | 
| **data_disk** | [block](#data_disk-block-structure) |  -  |  -  |  One or more `data_disk` blocks. | 
| **disable_password_authentication** | bool |  `True`  |  -  |  Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to `true`. | 
| **do_not_run_extensions_on_overprovisioned_machines** | bool |  `False`  |  -  |  Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine Scale Set should exist. Changing this forces a new Linux Virtual Machine Scale Set to be created. | 
| **encryption_at_host_enabled** | bool |  -  |  -  |  Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | 
| **extension** | [block](#extension-block-structure) |  -  |  -  |  One or more `extension` blocks | 
| **extension_operations_enabled** | bool |  `True`  |  `true`, `false`  |  Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Linux Virtual Machine Scale Set to be created. | 
| **extensions_time_budget** | string |  `PT1H30M`  |  -  |  Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **eviction_policy** | string |  -  |  `Deallocate`, `Delete`  |  Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **gallery_application** | [block](#gallery_application-block-structure) |  -  |  -  |  One or more `gallery_application` blocks. | 
| **health_probe_id** | string |  -  |  -  |  The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. | 
| **host_group_id** | string |  -  |  -  |  Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **max_bid_price** | string |  `-1`  |  -  |  The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `eviction_policy`. Defaults to `-1`, which means that each Virtual Machine in this Scale Set should not be evicted for price reasons. | 
| **overprovision** | bool |  `True`  |  -  |  Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`. | 
| **plan** | [block](#plan-block-structure) |  -  |  -  |  A `plan` block. Changing this forces a new resource to be created. | 
| **platform_fault_domain_count** | int |  -  |  -  |  Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **priority** | string |  `Regular`  |  `Regular`, `Spot`  |  The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource. | 
| **provision_vm_agent** | bool |  `True`  |  -  |  Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created. | 
| **proximity_placement_group_id** | string |  -  |  -  |  The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created. | 
| **rolling_upgrade_policy** | [block](#rolling_upgrade_policy-block-structure) |  -  |  -  |  A `rolling_upgrade_policy` block. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created. | 
| **scale_in** | [block](#scale_in-block-structure) |  -  |  -  |  A `scale_in` block. | 
| **secret** | [block](#secret-block-structure) |  -  |  -  |  One or more `secret` blocks. | 
| **secure_boot_enabled** | bool |  -  |  -  |  Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created. | 
| **single_placement_group** | bool |  `True`  |  -  |  Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to `true`. | 
| **source_image_id** | string |  -  |  -  |  The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`, `Shared Image ID`, `Shared Image Version ID`, `Community Gallery Image ID`, `Community Gallery Image Version ID`, `Shared Gallery Image ID` and `Shared Gallery Image Version ID`. | 
| **source_image_reference** | [block](#source_image_reference-block-structure) |  -  |  -  |  A `source_image_reference` block. | 
| **spot_restore** | [block](#spot_restore-block-structure) |  -  |  -  |  A `spot_restore` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to this Virtual Machine Scale Set. | 
| **terminate_notification** | [block](#terminate_notification-block-structure) |  -  |  -  |  A `terminate_notification` block. | 
| **termination_notification** | [block](#termination_notification-block-structure) |  -  |  -  |  A `termination_notification` block. | 
| **upgrade_mode** | string |  `Manual`  |  `Automatic`, `Manual`, `Rolling`  |  Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created. | 
| **user_data** | string |  -  |  -  |  The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set. | 
| **vtpm_enabled** | bool |  -  |  -  |  Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created. | 
| **zone_balance** | bool |  `False`  |  -  |  Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created. | 
| **zones** | string |  -  |  -  |  Specifies a list of Availability Zones in which this Linux Virtual Machine Scale Set should be located. Changing this forces a new Linux Virtual Machine Scale Set to be created. | 

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

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the image from the marketplace. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | Specifies the publisher of the image. Changing this forces a new resource to be created. |
| `product` | string | Yes | - | Specifies the product of the image from the marketplace. Changing this forces a new resource to be created. |

### `additional_capabilities` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ultra_ssd_enabled` | bool | No | False | Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Virtual Machine Scale Set? Possible values are 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |

### `automatic_os_upgrade_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disable_automatic_rollback` | bool | Yes | - | Should automatic rollbacks be disabled? |
| `enable_automatic_os_upgrade` | bool | Yes | - | Should OS Upgrades automatically be applied to Scale Set instances in a rolling fashion when a newer version of the OS Image becomes available? |

### `scale_in` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `rule` | string | No | Default | The scale-in policy rule that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled in. Possible values for the scale-in policy rules are 'Default', 'NewestVM' and 'OldestVM', defaults to 'Default'. For more information about scale in policy, please [refer to this doc](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-scale-in-policy). |
| `force_deletion_enabled` | bool | No | False | Should the virtual machines chosen for removal be force deleted when the virtual machine scale set is being scaled-in? Possible values are 'true' or 'false'. Defaults to 'false'. |

### `termination_notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the termination notification be enabled on this Virtual Machine Scale Set? |
| `timeout` | string | No | PT5M | Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to 'PT5M'. |

### `boot_diagnostics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_uri` | string | No | - | The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. |

### `gallery_application` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `version_id` | string | Yes | - | Specifies the Gallery Application Version resource ID. Changing this forces a new resource to be created. |
| `configuration_blob_uri` | string | No | - | Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created. |
| `order` | string | No | - | Specifies the order in which the packages have to be installed. Possible values are between '0' and '2,147,483,647'. Changing this forces a new resource to be created. |
| `tag` | string | No | - | Specifies a passthrough value for more generic context. This field can be any valid 'string' value. Changing this forces a new resource to be created. |

### `automatic_instance_repair` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the automatic instance repair be enabled on this Virtual Machine Scale Set? |
| `grace_period` | int | No | PT30M | Amount of time (in minutes, between 30 and 90) for which automatic repairs will be delayed. The grace period starts right after the VM is found unhealthy. The time duration should be specified in ISO 8601 format. Defaults to 'PT30M'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Linux Virtual Machine Scale Set. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Linux Virtual Machine Scale Set. |

### `admin_ssh_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `public_key` | string | Yes | - | The Public Key which should be used for authentication, which needs to be at least 2048-bit and in 'ssh-rsa' format. |
| `username` | string | Yes | - | The Username for which this Public SSH Key should be configured. |

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name for the Virtual Machine Scale Set Extension. |
| `publisher` | string | Yes | - | Specifies the Publisher of the Extension. |
| `type` | string | Yes | - | Specifies the Type of the Extension. |
| `type_handler_version` | string | Yes | - | Specifies the version of the extension to use, available versions can be found using the Azure CLI. |
| `auto_upgrade_minor_version` | bool | No | True | Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to 'true'. |
| `automatic_upgrade_enabled` | bool | No | - | Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? |
| `force_update_tag` | string | No | - | A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed. |
| `protected_settings` | string | No | - | A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension. |
| `protected_settings_from_key_vault` | [block](#protected_settings_from_key_vault-block-structure) | No | - | A 'protected_settings_from_key_vault' block. |
| `provision_after_extensions` | string | No | - | An ordered list of Extension names which this should be provisioned after. |
| `settings` | string | No | - | A JSON String which specifies Settings for the Extension. |

### `data_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The name of the Data Disk. |
| `caching` | string | Yes | - | The type of Caching which should be used for this Data Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. |
| `create_option` | string | No | Empty | The create option which should be used for this Data Disk. Possible values are 'Empty' and 'FromImage'. Defaults to 'Empty'. ('FromImage' should only be used if the source image includes data disks). |
| `disk_size_gb` | int | Yes | - | The size of the Data Disk which should be created. |
| `lun` | int | Yes | - | The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine. |
| `storage_account_type` | string | Yes | - | The Type of Storage Account which should back this Data Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS' and 'UltraSSD_LRS'. |
| `disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to encrypt this Data Disk. Changing this forces a new resource to be created. |
| `ultra_ssd_disk_iops_read_write` | string | No | - | Specifies the Read-Write IOPS for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'. |
| `ultra_ssd_disk_mbps_read_write` | int | No | - | Specifies the bandwidth in MB per second for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'. |
| `write_accelerator_enabled` | bool | No | False | Should Write Accelerator be enabled for this Data Disk? Defaults to 'false'. |

### `os_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `caching` | string | Yes | - | The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. |
| `storage_account_type` | string | Yes | - | The Type of Storage Account which should back this the Internal OS Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS' and 'Premium_ZRS'. Changing this forces a new resource to be created. |
| `diff_disk_settings` | [block](#diff_disk_settings-block-structure) | No | - | A 'diff_disk_settings' block. Changing this forces a new resource to be created. |
| `disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Conflicts with 'secure_vm_disk_encryption_set_id'. Changing this forces a new resource to be created. |
| `disk_size_gb` | int | No | - | The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from. |
| `secure_vm_disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to Encrypt the OS Disk when the Virtual Machine Scale Set is Confidential VMSS. Conflicts with 'disk_encryption_set_id'. Changing this forces a new resource to be created. |
| `security_encryption_type` | string | No | - | Encryption Type when the Virtual Machine Scale Set is Confidential VMSS. Possible values are 'VMGuestStateOnly' and 'DiskWithVMGuestState'. Changing this forces a new resource to be created. |
| `write_accelerator_enabled` | bool | No | False | Should Write Accelerator be Enabled for this OS Disk? Defaults to 'false'. |

### `network_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name which should be used for this Network Interface. Changing this forces a new resource to be created. |
| `ip_configuration` | list | Yes | - | One or more 'ip_configuration' blocks. |
| `dns_servers` | list | No | - | A list of IP Addresses of DNS Servers which should be assigned to the Network Interface. |
| `enable_accelerated_networking` | bool | No | False | Does this Network Interface support Accelerated Networking? Defaults to 'false'. |
| `enable_ip_forwarding` | bool | No | False | Does this Network Interface support IP Forwarding? Defaults to 'false'. |
| `network_security_group_id` | string | No | - | The ID of a Network Security Group which should be assigned to this Network Interface. |
| `primary` | bool | No | - | Is this the Primary IP Configuration? |

### `protected_settings_from_key_vault` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_url` | string | Yes | - | The URL to the Key Vault Secret which stores the protected settings. |
| `source_vault_id` | string | Yes | - | The ID of the source Key Vault. |

### `rolling_upgrade_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cross_zone_upgrades_enabled` | string | No | - | Should the Virtual Machine Scale Set ignore the Azure Zone boundaries when constructing upgrade batches? Possible values are 'true' or 'false'. |
| `max_batch_instance_percent` | string | Yes | - | The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. |
| `max_unhealthy_instance_percent` | string | Yes | - | The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. |
| `max_unhealthy_upgraded_instance_percent` | string | Yes | - | The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. |
| `pause_time_between_batches` | string | Yes | - | The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format. |
| `prioritize_unhealthy_instances_enabled` | string | No | - | Upgrade all unhealthy instances in a scale set before any healthy instances. Possible values are 'true' or 'false'. |

### `source_image_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | Yes | - | Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `offer` | string | Yes | - | Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. |
| `sku` | string | Yes | - | Specifies the SKU of the image used to create the virtual machines. |
| `version` | string | Yes | - | Specifies the version of the image used to create the virtual machines. |

### `spot_restore` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | False | Should the Spot-Try-Restore feature be enabled? The Spot-Try-Restore feature will attempt to automatically restore the evicted Spot Virtual Machine Scale Set VM instances opportunistically based on capacity availability and pricing constraints. Possible values are 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |
| `timeout` | string | No | PT1H | The length of time that the Virtual Machine Scale Set should attempt to restore the Spot VM instances which have been evicted. The time duration should be between '15' minutes and '120' minutes (inclusive). The time duration should be specified in the ISO 8601 format. Defaults to 'PT1H'. Changing this forces a new resource to be created. |

### `terminate_notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should the terminate notification be enabled on this Virtual Machine Scale Set? |
| `timeout` | string | No | PT5M | Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to 'PT5M'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Linux Virtual Machine Scale Set. | 
| **identity** | block | No  | A `identity` block. | 
| **unique_id** | string | No  | The Unique ID for this Linux Virtual Machine Scale Set. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
