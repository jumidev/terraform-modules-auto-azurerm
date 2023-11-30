# azurerm_virtual_machine

Manages a Virtual Machine.## Disclaimers-> **Note:** The `azurerm_virtual_machine` resource has been superseded by the [`azurerm_linux_virtual_machine`](linux_virtual_machine.html) and [`azurerm_windows_virtual_machine`](windows_virtual_machine.html) resources. The existing `azurerm_virtual_machine` resource will continue to be available throughout the 3.x releases however is in a feature-frozen state to maintain compatibility - new functionality will instead be added to the `azurerm_linux_virtual_machine` and `azurerm_windows_virtual_machine` resources.~> **Note:** Data Disks can be attached either directly on the `azurerm_virtual_machine` resource, or using the `azurerm_virtual_machine_data_disk_attachment` resource - but the two cannot be used together. If both are used against the same Virtual Machine, spurious changes will occur.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Virtual Machine. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created. | 
| **var.network_interface_ids** | list | True | -  |  -  |  A list of Network Interface IDs which should be associated with the Virtual Machine. | 
| **var.os_profile_linux_config** | block | False | -  |  -  |  (Required, when a Linux machine) An `os_profile_linux_config` block. | 
| **var.os_profile_windows_config** | block | False | -  |  -  |  (Required, when a Windows machine) An `os_profile_windows_config` block. | 
| **var.vm_size** | string | True | -  |  -  |  Specifies the [size of the Virtual Machine](https://docs.microsoft.com/azure/virtual-machines/sizes-general). See also [Azure VM Naming Conventions](https://docs.microsoft.com/azure/virtual-machines/vm-naming-conventions). | 
| **var.availability_set_id** | string | False | -  |  -  |  The ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **var.boot_diagnostics** | block | False | -  |  -  |  A `boot_diagnostics` block. | 
| **var.additional_capabilities** | block | False | -  |  -  |  An `additional_capabilities` block. | 
| **var.delete_os_disk_on_termination** | bool | False | `False`  |  -  |  Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to `false`. | 
| **var.delete_data_disks_on_termination** | bool | False | `False`  |  -  |  Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to `false`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.license_type** | string | False | -  |  `Windows_Client`, `Windows_Server`  |  Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are `Windows_Client` and `Windows_Server`. | 
| **var.os_profile** | block | False | -  |  -  |  An `os_profile` block. Required when `create_option` in the `storage_os_disk` block is set to `FromImage`. | 
| **var.os_profile_secrets** | block | False | -  |  -  |  One or more `os_profile_secrets` blocks. | 
| **var.plan** | block | False | -  |  -  |  A `plan` block. | 
| **var.primary_network_interface_id** | string | False | -  |  -  |  The ID of the Network Interface (which must be attached to the Virtual Machine) which should be the Primary Network Interface for this Virtual Machine. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  |  The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created | 
| **var.storage_data_disk** | block | False | -  |  -  |  One or more `storage_data_disk` blocks. | 
| **var.storage_image_reference** | block | False | -  |  -  |  A `storage_image_reference` block. Changing this forces a new resource to be created. | 
| **var.storage_os_disk** | block | True | -  |  -  |  A `storage_os_disk` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the Virtual Machine. | 
| **var.zones** | list | False | -  |  -  |  A list of a single item of the Availability Zone which the Virtual Machine should be allocated in. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **network_interface_ids** | list  | - | 
| **os_profile_linux_config** | block  | - | 
| **os_profile_windows_config** | block  | - | 
| **vm_size** | string  | - | 
| **availability_set_id** | string  | - | 
| **boot_diagnostics** | block  | - | 
| **additional_capabilities** | block  | - | 
| **delete_os_disk_on_termination** | bool  | - | 
| **delete_data_disks_on_termination** | bool  | - | 
| **identity** | block  | - | 
| **license_type** | string  | - | 
| **os_profile** | block  | - | 
| **os_profile_secrets** | block  | - | 
| **plan** | block  | - | 
| **primary_network_interface_id** | string  | - | 
| **proximity_placement_group_id** | string  | - | 
| **storage_data_disk** | block  | - | 
| **storage_image_reference** | block  | - | 
| **storage_os_disk** | block  | - | 
| **tags** | map  | - | 
| **zones** | list  | - | 
| **id** | string  | The ID of the Virtual Machine. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/virtual_machine" 
}

inputs = {
   name = "name of virtual_machine" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   network_interface_ids = "network_interface_ids of virtual_machine" 
   vm_size = "vm_size of virtual_machine" 
   storage_os_disk = "storage_os_disk of virtual_machine" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```