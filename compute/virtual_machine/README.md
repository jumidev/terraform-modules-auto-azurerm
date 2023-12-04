# azurerm_virtual_machine

Manages a Virtual Machine.## Disclaimers-> **Note:** The `azurerm_virtual_machine` resource has been superseded by the [`azurerm_linux_virtual_machine`](linux_virtual_machine.html) and [`azurerm_windows_virtual_machine`](windows_virtual_machine.html) resources. The existing `azurerm_virtual_machine` resource will continue to be available throughout the 3.x releases however is in a feature-frozen state to maintain compatibility - new functionality will instead be added to the `azurerm_linux_virtual_machine` and `azurerm_windows_virtual_machine` resources.~> **Note:** Data Disks can be attached either directly on the `azurerm_virtual_machine` resource, or using the `azurerm_virtual_machine_data_disk_attachment` resource - but the two cannot be used together. If both are used against the same Virtual Machine, spurious changes will occur.

## Example `component.hclt`

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
   storage_os_disk = {
      example_storage_os_disk = {
         create_option = "..."   
         managed_disk_id = "TODO link to compute.managed_disk.id"   
      }
  
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
| **name** | string |  Specifies the name of the Virtual Machine. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created. | 
| **network_interface_ids** | list |  A list of Network Interface IDs which should be associated with the Virtual Machine. | 
| **vm_size** | string |  Specifies the [size of the Virtual Machine](https://docs.microsoft.com/azure/virtual-machines/sizes-general). See also [Azure VM Naming Conventions](https://docs.microsoft.com/azure/virtual-machines/vm-naming-conventions). | 
| **storage_os_disk** | [block](#storage_os_disk-block-structure) |  A `storage_os_disk` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **os_profile_linux_config** | [block](#os_profile_linux_config-block-structure) |  -  |  -  |  (Required, when a Linux machine) An `os_profile_linux_config` block. | 
| **os_profile_windows_config** | [block](#os_profile_windows_config-block-structure) |  -  |  -  |  (Required, when a Windows machine) An `os_profile_windows_config` block. | 
| **availability_set_id** | string |  -  |  -  |  The ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **boot_diagnostics** | [block](#boot_diagnostics-block-structure) |  -  |  -  |  A `boot_diagnostics` block. | 
| **additional_capabilities** | [block](#additional_capabilities-block-structure) |  -  |  -  |  An `additional_capabilities` block. | 
| **delete_os_disk_on_termination** | bool |  `False`  |  -  |  Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to `false`. | 
| **delete_data_disks_on_termination** | bool |  `False`  |  -  |  Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to `false`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **license_type** | string |  -  |  `Windows_Client`, `Windows_Server`  |  Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are `Windows_Client` and `Windows_Server`. | 
| **os_profile** | [block](#os_profile-block-structure) |  -  |  -  |  An `os_profile` block. Required when `create_option` in the `storage_os_disk` block is set to `FromImage`. | 
| **os_profile_secrets** | [block](#os_profile_secrets-block-structure) |  -  |  -  |  One or more `os_profile_secrets` blocks. | 
| **plan** | [block](#plan-block-structure) |  -  |  -  |  A `plan` block. | 
| **primary_network_interface_id** | string |  -  |  -  |  The ID of the Network Interface (which must be attached to the Virtual Machine) which should be the Primary Network Interface for this Virtual Machine. | 
| **proximity_placement_group_id** | string |  -  |  -  |  The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created | 
| **storage_data_disk** | [block](#storage_data_disk-block-structure) |  -  |  -  |  One or more `storage_data_disk` blocks. | 
| **storage_image_reference** | [block](#storage_image_reference-block-structure) |  -  |  -  |  A `storage_image_reference` block. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the Virtual Machine. | 
| **zones** | list |  -  |  -  |  A list of a single item of the Availability Zone which the Virtual Machine should be allocated in. Changing this forces a new resource to be created. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Virtual Machine. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Virtual Machine. |

### `vault_certificates` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `certificate_url` | string | Yes | - | The ID of the Key Vault Secret. Stored secret is the Base64 encoding of a JSON Object that which is encoded in UTF-8 of which the contents need to be: |
| `certificate_store` | string | No | - | (Required, on windows machines) Specifies the certificate store on the Virtual Machine where the certificate should be added to, such as 'My'. |

### `storage_data_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `caching` | string | No | - | Specifies the caching requirements for the Data Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'. |
| `create_option` | string | Yes | - | Specifies how the data disk should be created. Possible values are 'Attach', 'FromImage' and 'Empty'. |
| `disk_size_gb` | int | No | - | Specifies the size of the data disk in gigabytes. |
| `lun` | int | Yes | - | Specifies the logical unit number of the data disk. This needs to be unique within all the Data Disks on the Virtual Machine. |
| `write_accelerator_enabled` | bool | No | False | Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'. |
| `managed_disk_type` | string | No | - | Specifies the type of managed disk to create. Possible values are either 'Standard_LRS', 'StandardSSD_LRS', 'Premium_LRS' or 'UltraSSD_LRS'. |
| `managed_disk_id` | string | No | - | Specifies the ID of an Existing Managed Disk which should be attached to this Virtual Machine. When this field is set 'create_option' must be set to 'Attach'. |
| `vhd_uri` | string | No | - | Specifies the URI of the VHD file backing this Unmanaged Data Disk. |

### `os_profile_secrets` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source_vault_id` | string | Yes | - | Specifies the ID of the Key Vault to use. |
| `vault_certificates` | [block](#os_profile_secrets-block-structure) | No | - | One or more 'vault_certificates' blocks. |

### `os_profile_linux_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disable_password_authentication` | bool | Yes | - | Specifies whether password authentication should be disabled. If set to 'false', an 'admin_password' must be specified. |
| `ssh_keys` | [block](#os_profile_linux_config-block-structure) | No | - | One or more 'ssh_keys' blocks. This field is required if 'disable_password_authentication' is set to 'true'. |

### `ssh_keys` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_data` | string | Yes | - | The Public SSH Key which should be written to the 'path' defined above. |
| `path` | string | Yes | - | The path of the destination file on the virtual machine |

### `os_profile_windows_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `provision_vm_agent` | bool | No | False | Should the Azure Virtual Machine Guest Agent be installed on this Virtual Machine? Defaults to 'false'. |
| `enable_automatic_upgrades` | bool | No | False | Are automatic updates enabled on this Virtual Machine? Defaults to 'false'. |
| `timezone` | string | No | - | Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created. |
| `winrm` | [block](#os_profile_windows_config-block-structure) | No | - | One or more 'winrm' blocks. |
| `additional_unattend_config` | [block](#os_profile_windows_config-block-structure) | No | - | An 'additional_unattend_config' block. |

### `os_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `computer_name` | string | Yes | - | Specifies the name of the Virtual Machine. Changing this forces a new resource to be created. |
| `admin_username` | string | Yes | - | Specifies the name of the local administrator account. |
| `admin_password` | string | No | - | (Optional for Windows, Optional for Linux) The password associated with the local administrator account. |
| `custom_data` | string | No | - | Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. Changing this forces a new resource to be created. |

### `storage_image_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | No | - | Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created. |
| `offer` | string | No | - | Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created. |
| `sku` | string | No | - | Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created. |
| `version` | string | No | - | Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created. |

### `winrm` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | Specifies the protocol of listener. Possible values are 'HTTP' or 'HTTPS'. |
| `certificate_url` | string | No | - | The ID of the Key Vault Secret which contains the encrypted Certificate which should be installed on the Virtual Machine. This certificate must also be specified in the 'vault_certificates' block within the 'os_profile_secrets' block. |

### `additional_capabilities` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ultra_ssd_enabled` | bool | Yes | - | Should Ultra SSD disk be enabled for this Virtual Machine? Changing this forces a new resource to be created. |

### `boot_diagnostics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Should Boot Diagnostics be enabled for this Virtual Machine? |
| `storage_uri` | string | Yes | - | The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files. |

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | Yes | - | Specifies the publisher of the image. |
| `product` | string | Yes | - | Specifies the product of the image from the marketplace. |

### `storage_os_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `create_option` | string | Yes | - | Specifies how the OS Disk should be created. Possible values are 'Attach' (managed disks only) and 'FromImage'. |
| `caching` | string | No | - | Specifies the caching requirements for the OS Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'. |
| `disk_size_gb` | int | No | - | Specifies the size of the OS Disk in gigabytes. |
| `image_uri` | string | No | - | Specifies the Image URI in the format 'publisherName:offer:skus:version'. This field can also specify the [VHD URI](https://docs.microsoft.com/azure/virtual-machines/linux/tutorial-custom-images) of a custom VM image to clone. When cloning a Custom (Unmanaged) Disk Image the 'os_type' field must be set. |
| `os_type` | string | No | - | Specifies the Operating System on the OS Disk. Possible values are 'Linux' and 'Windows'. |
| `write_accelerator_enabled` | bool | No | False | Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'. |
| `managed_disk_id` | string | No | - | Specifies the ID of an existing Managed Disk which should be attached as the OS Disk of this Virtual Machine. If this is set then the 'create_option' must be set to 'Attach'. Changing this forces a new resource to be created. |
| `managed_disk_type` | string | No | - | Specifies the type of Managed Disk which should be created. Possible values are 'Standard_LRS', 'StandardSSD_LRS' or 'Premium_LRS'. |
| `vhd_uri` | string | No | - | Specifies the URI of the VHD file backing this Unmanaged OS Disk. Changing this forces a new resource to be created. |

### `additional_unattend_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `pass` | string | Yes | - | Specifies the name of the pass that the content applies to. The only allowable value is 'oobeSystem'. |
| `component` | string | Yes | - | Specifies the name of the component to configure with the added content. The only allowable value is 'Microsoft-Windows-Shell-Setup'. |
| `setting_name` | string | Yes | - | Specifies the name of the setting to which the content applies. Possible values are: 'FirstLogonCommands' and 'AutoLogon'. |
| `content` | string | Yes | - | Specifies the base-64 encoded XML formatted content that is added to the unattend.xml file for the specified path and component. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Machine. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
