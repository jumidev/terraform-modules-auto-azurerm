# azurerm_virtual_machine_scale_set

Manages a virtual machine scale set.## Disclaimers!> **Note:** The `azurerm_virtual_machine_scale_set` resource has been deprecated in favour of the [`azurerm_linux_virtual_machine_scale_set`](linux_virtual_machine_scale_set.html) and [`azurerm_windows_virtual_machine_scale_set`](windows_virtual_machine_scale_set.html) resources. Whilst this will continue to be available throughout the 2.x and 3.x releases however is in a feature-frozen state to maintain compatibility - new functionality will instead be added to the `azurerm_linux_virtual_machine_scale_set` and `azurerm_windows_virtual_machine_scale_set` resources and the `azurerm_virtual_machine_scale_set` resource will be removed in the future.~> **NOTE:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/virtual_machine_scale_set" 
}

inputs = {
   name = "name of virtual_machine_scale_set" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   network_profile = {
      example_network_profile = {
         primary = "..."   
         ip_configuration = "..."   
         network_security_group_id = "TODO link to network.network_security_group.id"   
      }
  
   }
 
   os_profile = {
      example_os_profile = {
         computer_name_prefix = "..."   
         admin_username = "..."   
      }
  
   }
 
   sku = {
      example_sku = {
         capacity = "..."   
      }
  
   }
 
   storage_profile_os_disk = {
      example_storage_profile_os_disk = {
         create_option = "..."   
      }
  
   }
 
   upgrade_policy_mode = "upgrade_policy_mode of virtual_machine_scale_set" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  Specifies the name of the virtual machine scale set resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which to create the virtual machine scale set. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.network_profile** | [block](#network_profile-block-structure) |  -  |  A collection of `network_profile` blocks. | 
| **var.os_profile** | [block](#os_profile-block-structure) |  -  |  A `os_profile` block. | 
| **var.sku** | [block](#sku-block-structure) |  -  |  A `sku` block. | 
| **var.storage_profile_os_disk** | [block](#storage_profile_os_disk-block-structure) |  -  |  A `storage_profile_os_disk` block. | 
| **var.upgrade_policy_mode** | string |  `Rolling`, `Manual`, `Automatic`  |  Specifies the mode of an upgrade to virtual machines in the scale set. Possible values, `Rolling`, `Manual`, or `Automatic`. When choosing `Rolling`, you will need to set a health probe. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.os_profile_windows_config** | [block](#os_profile_windows_config-block-structure) |  -  |  A `os_profile_windows_config` block. | 
| **var.os_profile_linux_config** | [block](#os_profile_linux_config-block-structure) |  -  |  A `os_profile_linux_config` block. | 
| **var.proximity_placement_group_id** | string |  -  |  The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created | 
| **var.identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **var.automatic_os_upgrade** | bool |  `False`  |  Automatic OS patches can be applied by Azure to your scaleset. This is particularly useful when `upgrade_policy_mode` is set to `Rolling`. Defaults to `false`. | 
| **var.boot_diagnostics** | [block](#boot_diagnostics-block-structure) |  -  |  A `boot_diagnostics` block as referenced below. | 

### `network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `primary` | string | Yes | - | Indicates whether network interfaces created from the network interface configuration will be the primary NIC of the VM. |
| `ip_configuration` | block | Yes | - | An 'ip_configuration' block. |
| `accelerated_networking` | string | No | - | Specifies whether to enable accelerated networking or not. |
| `dns_settings` | block | No | - | A 'dns_settings' block. |
| `ip_forwarding` | bool | No | False | Whether IP forwarding is enabled on this NIC. Defaults to 'false'. |
| `network_security_group_id` | string | No | - | Specifies the identifier for the network security group. |

### `os_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `computer_name_prefix` | string | Yes | - | Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 9 characters long for windows images and 1 - 58 for Linux. Changing this forces a new resource to be created. |
| `admin_username` | string | Yes | - | Specifies the administrator account name to use for all the instances of virtual machines in the scale set. |
| `admin_password` | string | No | - | Specifies the administrator password to use for all the instances of virtual machines in a scale set. |
| `custom_data` | string | No | - | Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. |

### `os_profile_windows_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `provision_vm_agent` | string | No | - | Indicates whether virtual machine agent should be provisioned on the virtual machines in the scale set. |
| `enable_automatic_upgrades` | bool | No | - | Indicates whether virtual machines in the scale set are enabled for automatic updates. |
| `winrm` | block | No | - | A collection of 'winrm' blocks. |
| `additional_unattend_config` | block | No | - | An 'additional_unattend_config' block. |

### `os_profile_linux_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disable_password_authentication` | bool | No | False | Specifies whether password authentication should be disabled. Defaults to 'false'. Changing this forces a new resource to be created. |
| `ssh_keys` | block | No | - | One or more 'ssh_keys' blocks. |

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier` | string | No | - | Specifies the tier of virtual machines in a scale set. Possible values, 'standard' or 'basic'. |
| `capacity` | int | Yes | - | Specifies the number of virtual machines in the scale set. |

### `storage_profile_os_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `vhd_containers` | string | No | - | Specifies the VHD URI. Cannot be used when 'image' or 'managed_disk_type' is specified. |
| `managed_disk_type` | string | No | - | Specifies the type of managed disk to create. Value you must be either 'Standard_LRS', 'StandardSSD_LRS' or 'Premium_LRS'. Cannot be used when 'vhd_containers' or 'image' is specified. |
| `create_option` | string | Yes | - | Specifies how the virtual machine should be created. The only possible option is 'FromImage'. |
| `caching` | string | No | - | Specifies the caching requirements. Possible values include: 'None' (default), 'ReadOnly', 'ReadWrite'. |
| `image` | string | No | - | Specifies the blob URI for user image. A virtual machine scale set creates an os disk in the same container as the user image. Updating the osDisk image causes the existing disk to be deleted and a new one created with the new image. If the VM scale set is in Manual upgrade mode then the virtual machines are not updated until they have manualUpgrade applied to them. When setting this field 'os_type' needs to be specified. Cannot be used when 'vhd_containers', 'managed_disk_type' or 'storage_profile_image_reference' are specified. |
| `os_type` | string | No | - | Specifies the operating system Type, valid values are windows, Linux. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the identity type to be assigned to the scale set. Allowable values are 'SystemAssigned' and 'UserAssigned'. For the 'SystemAssigned' identity the scale set's Service Principal ID (SPN) can be retrieved after the scale set has been created. See [documentation](https://docs.microsoft.com/azure/active-directory/managed-service-identity/overview) for more information. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of user managed identity ids to be assigned to the VMSS. Required if 'type' is 'UserAssigned'. |

### `boot_diagnostics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Whether to enable boot diagnostics for the virtual machine. Defaults to 'true'. |
| `storage_uri` | string | Yes | - | Blob endpoint for the storage account to hold the virtual machine's diagnostic files. This must be the root of a storage account, and not a storage container. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The virtual machine scale set ID. | 

Additionally, all variables are provided as outputs.
