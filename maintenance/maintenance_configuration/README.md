# azurerm_maintenance_configuration

Manages a maintenance configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "maintenance/maintenance_configuration"   
}

inputs = {
   name = "Specifies the name of the Maintenance Configuration..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   scope = "The scope of the Maintenance Configuration"   
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
| **name** | string |  -  |  Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **scope** | string |  `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB`, `SQLManagedInstance`  |  The scope of the Maintenance Configuration. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` or `SQLManagedInstance`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **visibility** | string |  `Custom`  |  -  |  The visibility of the Maintenance Configuration. The only allowable value is `Custom`. Defaults to `Custom`. | 
| **window** | [block](#window-block-structure) |  -  |  -  |  A `window` block. | 
| **install_patches** | [block](#install_patches-block-structure) |  -  |  -  |  An `install_patches` block. | 
| **in_guest_user_patch_mode** | string |  -  |  `Platform`, `User`  |  The in guest user patch mode. Possible values are `Platform` or `User`. Must be specified when `scope` is `InGuestPatch`. | 
| **properties** | string |  -  |  -  |  A mapping of properties to assign to the resource. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. The key could not contain upper case letter. | 

### `window` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `start_date_time` | string | Yes | - | Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. |
| `expiration_date_time` | string | No | - | Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. |
| `duration` | string | No | - | The duration of the maintenance window in HH:mm format. |
| `time_zone` | string | Yes | - | The time zone for the maintenance window. A list of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. |
| `recur_every` | string | No | - | The rate at which a maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. |

### `windows` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `classifications_to_include` | string | No | - | List of Classification category of patches to be patched. Possible values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools' and 'Updates'. |
| `kb_numbers_to_exclude` | string | No | - | List of KB numbers to be excluded from patching. |
| `kb_numbers_to_include` | string | No | - | List of KB numbers to be included for patching. |

### `linux` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `classifications_to_include` | string | No | - | List of Classification category of patches to be patched. Possible values are 'Critical', 'Security' and 'Other'. |
| `package_names_mask_to_exclude` | string | No | - | List of package names to be excluded from patching. |
| `package_names_mask_to_include` | string | No | - | List of package names to be included for patching. |

### `install_patches` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linux` | [block](#linux-block-structure) | No | - | A 'linux' block. This property only applies when 'scope' is set to 'InGuestPatch' |
| `windows` | [block](#windows-block-structure) | No | - | A 'windows' block. This property only applies when 'scope' is set to 'InGuestPatch' |
| `reboot` | string | No | - | Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed. Possible values are 'Always', 'IfRequired' and 'Never'. This property only applies when 'scope' is set to 'InGuestPatch'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Maintenance Configuration. | 

Additionally, all variables are provided as outputs.
