# azurerm_virtual_machine_scale_set_extension

Manages an Extension for a Virtual Machine Scale Set.~> **NOTE:** This resource is not intended to be used with the `azurerm_virtual_machine_scale_set` resource - instead it's intended for this to be used with the `azurerm_linux_virtual_machine_scale_set` and `azurerm_windows_virtual_machine_scale_set` resources.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created. | 
| **virtual_machine_scale_set_id** | string | True | -  |  -  | The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **publisher** | string | True | -  |  -  | Specifies the Publisher of the Extension. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  -  | Specifies the Type of the Extension. Changing this forces a new resource to be created. | 
| **type_handler_version** | string | True | -  |  -  | Specifies the version of the extension to use, available versions can be found using the Azure CLI. | 
| **auto_upgrade_minor_version** | bool | False | `True`  |  -  | Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`. | 
| **automatic_upgrade_enabled** | bool | False | -  |  -  | Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? | 
| **failure_suppression_enabled** | bool | False | `False`  |  `true`, `false`  | Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`. | 
| **force_update_tag** | string | False | -  |  -  | A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed. | 
| **protected_settings** | string | False | -  |  -  | A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension. | 
| **protected_settings_from_key_vault** | block | False | -  |  -  | A `protected_settings_from_key_vault` block. | 
| **provision_after_extensions** | string | False | -  |  -  | An ordered list of Extension names which this should be provisioned after. | 
| **settings** | string | False | -  |  -  | A JSON String which specifies Settings for the Extension. | 

