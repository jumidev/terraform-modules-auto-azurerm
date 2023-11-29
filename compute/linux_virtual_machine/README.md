# azurerm_linux_virtual_machine

Manages a Linux Virtual Machine.## Disclaimers-> **Note** Terraform will automatically remove the OS Disk by default - this behaviour can be configured [using the `features` setting within the Provider block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block).~> **Note** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).-> **Note** This resource does not support Unmanaged Disks. If you need to use Unmanaged Disks you can continue to use [the `azurerm_virtual_machine` resource](virtual_machine.html) instead.~> **Note** This resource does not support attaching existing OS Disks. You can instead [capture an image of the OS Disk](image.html) or continue to use [the `azurerm_virtual_machine` resource](virtual_machine.html) instead.~> In this release there's a known issue where the `public_ip_address` and `public_ip_addresses` fields may not be fully populated for Dynamic Public IP's.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.admin_username** | string | True | -  |  -  |  The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure location where the Linux Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **var.license_type** | string | False | -  |  `RHEL_BYOS`, `SLES_BYOS`  |  Specifies the BYOL Type for this Virtual Machine. Possible values are `RHEL_BYOS` and `SLES_BYOS`. | 
| **var.name** | string | True | -  |  -  |  The name of the Linux Virtual Machine. Changing this forces a new resource to be created. | 
| **var.network_interface_ids** | list | True | -  |  -  |  A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine. | 
| **var.os_disk** | block | True | -  |  -  |  A `os_disk` block. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the Linux Virtual Machine should be exist. Changing this forces a new resource to be created. | 
| **var.size** | string | True | -  |  -  |  The SKU which should be used for this Virtual Machine, such as `Standard_F2`. | 
| **var.additional_capabilities** | block | False | -  |  -  |  A `additional_capabilities` block. | 
| **var.admin_password** | string | False | -  |  -  |  The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.admin_ssh_key** | block | False | -  |  -  |  One or more `admin_ssh_key` blocks. Changing this forces a new resource to be created. | 
| **var.allow_extension_operations** | bool | False | `True`  |  -  |  Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`. | 
| **var.availability_set_id** | string | False | -  |  -  |  Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **var.boot_diagnostics** | block | False | -  |  -  |  A `boot_diagnostics` block. | 
| **var.bypass_platform_safety_checks_on_user_schedule_enabled** | bool | False | `False`  |  -  |  Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`. | 
| **var.capacity_reservation_group_id** | string | False | -  |  -  |  Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to. | 
| **var.computer_name** | string | False | `name`  |  -  |  Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created. | 
| **var.custom_data** | string | False | -  |  -  |  The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.dedicated_host_id** | string | False | -  |  -  |  The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`. | 
| **var.dedicated_host_group_id** | string | False | -  |  -  |  The ID of a Dedicated Host Group that this Linux Virtual Machine should be run within. Conflicts with `dedicated_host_id`. | 
| **var.disable_password_authentication** | bool | False | `True`  |  -  |  Should Password Authentication be disabled on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created. | 
| **var.edge_zone** | string | False | -  |  -  |  Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine should exist. Changing this forces a new Linux Virtual Machine to be created. | 
| **var.encryption_at_host_enabled** | bool | False | -  |  -  |  Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | 
| **var.eviction_policy** | string | False | -  |  `Deallocate`, `Delete`  |  Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **var.extensions_time_budget** | string | False | `PT1H30M`  |  -  |  Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **var.gallery_application** | block | False | -  |  -  |  One or more `gallery_application` blocks. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.patch_assessment_mode** | string | False | `ImageDefault`  |  `AutomaticByPlatform`, `ImageDefault`  |  Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`. | 
| **var.patch_mode** | string | False | `ImageDefault`  |  `AutomaticByPlatform`, `ImageDefault`  |  Specifies the mode of in-guest patching to this Linux Virtual Machine. Possible values are `AutomaticByPlatform` and `ImageDefault`. Defaults to `ImageDefault`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes). | 
| **var.max_bid_price** | string | False | `-1`  |  -  |  The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons. | 
| **var.plan** | block | False | -  |  -  |  A `plan` block. Changing this forces a new resource to be created. | 
| **var.platform_fault_domain** | string | False | `-1`  |  -  |  Specifies the Platform Fault Domain in which this Linux Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Linux Virtual Machine to be created. | 
| **var.priority** | string | False | `Regular`  |  `Regular`, `Spot`  |  Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created. | 
| **var.provision_vm_agent** | bool | False | `True`  |  -  |  Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  |  The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. | 
| **var.reboot_setting** | string | False | -  |  `Always`, `IfRequired`, `Never`  |  Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`. | 
| **var.secret** | block | False | -  |  -  |  One or more `secret` blocks. | 
| **var.secure_boot_enabled** | bool | False | -  |  -  |  Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created. | 
| **var.source_image_id** | string | False | -  |  -  |  The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s. | 
| **var.source_image_reference** | block | False | -  |  -  |  A `source_image_reference` block. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to this Virtual Machine. | 
| **var.termination_notification** | block | False | -  |  -  |  A `termination_notification` block. | 
| **var.user_data** | string | False | -  |  -  |  The Base64-Encoded User Data which should be used for this Virtual Machine. | 
| **var.vtpm_enabled** | bool | False | -  |  -  |  Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created. | 
| **var.virtual_machine_scale_set_id** | string | False | -  |  -  |  Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within. Changing this forces a new resource to be created. | 
| **var.zone** | string | False | -  |  -  |  Specifies the Availability Zones in which this Linux Virtual Machine should be located. Changing this forces a new Linux Virtual Machine to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **admin_username** | string  | - | 
| **location** | string  | - | 
| **license_type** | string  | - | 
| **name** | string  | - | 
| **network_interface_ids** | list  | - | 
| **os_disk** | block  | - | 
| **resource_group_name** | string  | - | 
| **size** | string  | - | 
| **additional_capabilities** | block  | - | 
| **admin_password** | string  | - | 
| **admin_ssh_key** | block  | - | 
| **allow_extension_operations** | bool  | - | 
| **availability_set_id** | string  | - | 
| **boot_diagnostics** | block  | - | 
| **bypass_platform_safety_checks_on_user_schedule_enabled** | bool  | - | 
| **capacity_reservation_group_id** | string  | - | 
| **computer_name** | string  | - | 
| **custom_data** | string  | - | 
| **dedicated_host_id** | string  | - | 
| **dedicated_host_group_id** | string  | - | 
| **disable_password_authentication** | bool  | - | 
| **edge_zone** | string  | - | 
| **encryption_at_host_enabled** | bool  | - | 
| **eviction_policy** | string  | - | 
| **extensions_time_budget** | string  | - | 
| **gallery_application** | block  | - | 
| **identity** | block  | - | 
| **patch_assessment_mode** | string  | - | 
| **patch_mode** | string  | - | 
| **max_bid_price** | string  | - | 
| **plan** | block  | - | 
| **platform_fault_domain** | string  | - | 
| **priority** | string  | - | 
| **provision_vm_agent** | bool  | - | 
| **proximity_placement_group_id** | string  | - | 
| **reboot_setting** | string  | - | 
| **secret** | block  | - | 
| **secure_boot_enabled** | bool  | - | 
| **source_image_id** | string  | - | 
| **source_image_reference** | block  | - | 
| **tags** | map  | - | 
| **termination_notification** | block  | - | 
| **user_data** | string  | - | 
| **vtpm_enabled** | bool  | - | 
| **virtual_machine_scale_set_id** | string  | - | 
| **zone** | string  | - | 
| **id** | string  | The ID of the Linux Virtual Machine. | 
| **identity** | block  | An `identity` block. | 
| **private_ip_address** | string  | The Primary Private IP Address assigned to this Virtual Machine. | 
| **private_ip_addresses** | list  | A list of Private IP Addresses assigned to this Virtual Machine. | 
| **public_ip_address** | string  | The Primary Public IP Address assigned to this Virtual Machine. | 
| **public_ip_addresses** | list  | A list of the Public IP Addresses assigned to this Virtual Machine. | 
| **virtual_machine_id** | string  | A 128-bit identifier which uniquely identifies this Virtual Machine. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 