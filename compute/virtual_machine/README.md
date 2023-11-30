# azurerm_virtual_machine

Manages a Virtual Machine.## Disclaimers-> **Note:** The `azurerm_virtual_machine` resource has been superseded by the [`azurerm_linux_virtual_machine`](linux_virtual_machine.html) and [`azurerm_windows_virtual_machine`](windows_virtual_machine.html) resources. The existing `azurerm_virtual_machine` resource will continue to be available throughout the 3.x releases however is in a feature-frozen state to maintain compatibility - new functionality will instead be added to the `azurerm_linux_virtual_machine` and `azurerm_windows_virtual_machine` resources.~> **Note:** Data Disks can be attached either directly on the `azurerm_virtual_machine` resource, or using the `azurerm_virtual_machine_data_disk_attachment` resource - but the two cannot be used together. If both are used against the same Virtual Machine, spurious changes will occur.

## Example minimal component.hclt

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

### `os_profile_linux_config` block structure

> `disable_password_authentication` (bool): (REQUIRED) Specifies whether password authentication should be disabled. If set to 'false', an 'admin_password' must be specified.
> `ssh_keys` (block): One or more 'ssh_keys' blocks. This field is required if 'disable_password_authentication' is set to 'true'.

### `os_profile_windows_config` block structure

> `provision_vm_agent` (bool): Should the Azure Virtual Machine Guest Agent be installed on this Virtual Machine? Defaults to 'false'.
> `enable_automatic_upgrades` (bool): Are automatic updates enabled on this Virtual Machine? Defaults to 'false'.
> `timezone` (string): Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
> `winrm` (block): One or more 'winrm' blocks.
> `additional_unattend_config` (block): An 'additional_unattend_config' block.

### `boot_diagnostics` block structure

> `enabled` (bool): (REQUIRED) Should Boot Diagnostics be enabled for this Virtual Machine?
> `storage_uri` (string): (REQUIRED) The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files.

### `additional_capabilities` block structure

> `ultra_ssd_enabled` (bool): (REQUIRED) Should Ultra SSD disk be enabled for this Virtual Machine? Changing this forces a new resource to be created.

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Virtual Machine. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
> `identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Virtual Machine.

### `os_profile` block structure

> `computer_name` (string): (REQUIRED) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
> `admin_username` (string): (REQUIRED) Specifies the name of the local administrator account.
> `admin_password` (string): (Optional for Windows, Optional for Linux) The password associated with the local administrator account.
> `custom_data` (string): Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. Changing this forces a new resource to be created.

### `os_profile_secrets` block structure

> `source_vault_id` (string): (REQUIRED) Specifies the ID of the Key Vault to use.
> `vault_certificates` (block): One or more 'vault_certificates' blocks.

### `plan` block structure

> `name` (string): (REQUIRED) Specifies the name of the image from the marketplace.
> `publisher` (string): (REQUIRED) Specifies the publisher of the image.
> `product` (string): (REQUIRED) Specifies the product of the image from the marketplace.

### `storage_data_disk` block structure

> `name` (string): (REQUIRED) The name of the Data Disk.
> `caching` (string): Specifies the caching requirements for the Data Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'.
> `create_option` (string): (REQUIRED) Specifies how the data disk should be created. Possible values are 'Attach', 'FromImage' and 'Empty'.
> `disk_size_gb` (int): Specifies the size of the data disk in gigabytes.
> `lun` (int): (REQUIRED) Specifies the logical unit number of the data disk. This needs to be unique within all the Data Disks on the Virtual Machine.
> `write_accelerator_enabled` (bool): Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'.
> `managed_disk_type` (string): Specifies the type of managed disk to create. Possible values are either 'Standard_LRS', 'StandardSSD_LRS', 'Premium_LRS' or 'UltraSSD_LRS'.
> `managed_disk_id` (string): Specifies the ID of an Existing Managed Disk which should be attached to this Virtual Machine. When this field is set 'create_option' must be set to 'Attach'.
> `vhd_uri` (string): Specifies the URI of the VHD file backing this Unmanaged Data Disk.

### `storage_image_reference` block structure

> `publisher` (string): Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created.
> `offer` (string): Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created.
> `sku` (string): Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created.
> `version` (string): Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created.

### `storage_os_disk` block structure

> `name` (string): (REQUIRED) Specifies the name of the OS Disk.
> `create_option` (string): (REQUIRED) Specifies how the OS Disk should be created. Possible values are 'Attach' (managed disks only) and 'FromImage'.
> `caching` (string): Specifies the caching requirements for the OS Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'.
> `disk_size_gb` (int): Specifies the size of the OS Disk in gigabytes.
> `image_uri` (string): Specifies the Image URI in the format 'publisherName:offer:skus:version'. This field can also specify the [VHD URI](https://docs.microsoft.com/azure/virtual-machines/linux/tutorial-custom-images) of a custom VM image to clone. When cloning a Custom (Unmanaged) Disk Image the 'os_type' field must be set.
> `os_type` (string): Specifies the Operating System on the OS Disk. Possible values are 'Linux' and 'Windows'.
> `write_accelerator_enabled` (bool): Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'.
> `managed_disk_id` (string): Specifies the ID of an existing Managed Disk which should be attached as the OS Disk of this Virtual Machine. If this is set then the 'create_option' must be set to 'Attach'. Changing this forces a new resource to be created.
> `managed_disk_type` (string): Specifies the type of Managed Disk which should be created. Possible values are 'Standard_LRS', 'StandardSSD_LRS' or 'Premium_LRS'.
> `vhd_uri` (string): Specifies the URI of the VHD file backing this Unmanaged OS Disk. Changing this forces a new resource to be created.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Machine. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
