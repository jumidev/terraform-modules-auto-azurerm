# azurerm_virtual_machine_scale_set

Manages a virtual machine scale set.## Disclaimers!> **Note:** The `azurerm_virtual_machine_scale_set` resource has been deprecated in favour of the [`azurerm_linux_virtual_machine_scale_set`](linux_virtual_machine_scale_set.html) and [`azurerm_windows_virtual_machine_scale_set`](windows_virtual_machine_scale_set.html) resources. Whilst this will continue to be available throughout the 2.x and 3.x releases however is in a feature-frozen state to maintain compatibility - new functionality will instead be added to the `azurerm_linux_virtual_machine_scale_set` and `azurerm_windows_virtual_machine_scale_set` resources and the `azurerm_virtual_machine_scale_set` resource will be removed in the future.~> **NOTE:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the virtual machine scale set resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the virtual machine scale set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.network_profile** | block | True | -  |  -  |  A collection of `network_profile` blocks. | 
| **var.os_profile** | block | True | -  |  -  |  A `os_profile` block. | 
| **var.os_profile_windows_config** | block | False | -  |  -  |  A `os_profile_windows_config` block. | 
| **var.os_profile_linux_config** | block | False | -  |  -  |  A `os_profile_linux_config` block. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  |  The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created | 
| **var.sku** | block | True | -  |  -  |  A `sku` block. | 
| **var.storage_profile_os_disk** | block | True | -  |  -  |  A `storage_profile_os_disk` block. | 
| **var.upgrade_policy_mode** | string | True | -  |  `Rolling`, `Manual`, `Automatic`  |  Specifies the mode of an upgrade to virtual machines in the scale set. Possible values, `Rolling`, `Manual`, or `Automatic`. When choosing `Rolling`, you will need to set a health probe. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.automatic_os_upgrade** | bool | False | `False`  |  -  |  Automatic OS patches can be applied by Azure to your scaleset. This is particularly useful when `upgrade_policy_mode` is set to `Rolling`. Defaults to `false`. | 
| **var.boot_diagnostics** | block | False | -  |  -  |  A `boot_diagnostics` block as referenced below. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **network_profile** | block  | - | 
| **os_profile** | block  | - | 
| **os_profile_windows_config** | block  | - | 
| **os_profile_linux_config** | block  | - | 
| **proximity_placement_group_id** | string  | - | 
| **sku** | block  | - | 
| **storage_profile_os_disk** | block  | - | 
| **upgrade_policy_mode** | string  | - | 
| **identity** | block  | - | 
| **automatic_os_upgrade** | bool  | - | 
| **boot_diagnostics** | block  | - | 
| **id** | string  | The virtual machine scale set ID. | 