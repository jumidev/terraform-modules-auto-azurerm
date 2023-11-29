# azurerm_maintenance_configuration

Manages a maintenance configuration.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | -  |  `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB`, `SQLManagedInstance`  | The scope of the Maintenance Configuration. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` or `SQLManagedInstance`. | 
| **var.visibility** | string | False | `Custom`  |  -  | The visibility of the Maintenance Configuration. The only allowable value is `Custom`. Defaults to `Custom`. | 
| **var.window** | block | False | -  |  -  | A `window` block. | 
| **var.install_patches** | block | False | -  |  -  | An `install_patches` block. | 
| **var.in_guest_user_patch_mode** | string | False | -  |  `Platform`, `User`  | The in guest user patch mode. Possible values are `Platform` or `User`. Must be specified when `scope` is `InGuestPatch`. | 
| **var.properties** | string | False | -  |  -  | A mapping of properties to assign to the resource. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. The key could not contain upper case letter. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **scope** | string  | - | 
| **visibility** | string  | - | 
| **window** | block  | - | 
| **install_patches** | block  | - | 
| **in_guest_user_patch_mode** | string  | - | 
| **properties** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Maintenance Configuration. | 