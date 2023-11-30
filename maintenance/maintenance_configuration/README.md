# azurerm_maintenance_configuration

Manages a maintenance configuration.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "maintenance/maintenance_configuration" 
}

inputs = {
   name = "name of maintenance_configuration" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   scope = "scope of maintenance_configuration" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | -  |  `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB`, `SQLManagedInstance`  |  The scope of the Maintenance Configuration. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` or `SQLManagedInstance`. | 
| **var.visibility** | string | False | `Custom`  |  -  |  The visibility of the Maintenance Configuration. The only allowable value is `Custom`. Defaults to `Custom`. | 
| **var.window** | block | False | -  |  -  |  A `window` block. | 
| **var.install_patches** | block | False | -  |  -  |  An `install_patches` block. | 
| **var.in_guest_user_patch_mode** | string | False | -  |  `Platform`, `User`  |  The in guest user patch mode. Possible values are `Platform` or `User`. Must be specified when `scope` is `InGuestPatch`. | 
| **var.properties** | string | False | -  |  -  |  A mapping of properties to assign to the resource. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. The key could not contain upper case letter. | 

### `window` block structure

> `start_date_time` (string): (REQUIRED) Effective start date of the maintenance window in YYYY-MM-DD hh:mm format.\
> `expiration_date_time` (string): Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format.\
> `duration` (string): The duration of the maintenance window in HH:mm format.\
> `time_zone` (string): (REQUIRED) The time zone for the maintenance window. A list of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.\
> `recur_every` (string): The rate at which a maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules.\

### `install_patches` block structure

> `linux` (block): A 'linux' block. This property only applies when 'scope' is set to 'InGuestPatch'\
> `windows` (block): A 'windows' block. This property only applies when 'scope' is set to 'InGuestPatch'\
> `reboot` (string): Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed. Possible values are 'Always', 'IfRequired' and 'Never'. This property only applies when 'scope' is set to 'InGuestPatch'.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Maintenance Configuration. | 

Additionally, all variables are provided as outputs.
