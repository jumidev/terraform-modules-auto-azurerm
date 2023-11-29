# azurerm_arc_machine_extension

Manages a Hybrid Compute Machine Extension.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **arc_machine_id** | string | True | -  |  -  | The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **publisher** | string | True | -  |  -  | The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **type** | string | True | -  |  -  | Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **automatic_upgrade_enabled** | bool | False | `True`  |  -  | Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`. | 
| **force_update_tag** | string | False | -  |  -  | How the extension handler should be forced to update even if the extension configuration has not changed. | 
| **protected_settings** | string | False | -  |  -  | Json formatted protected settings for the extension. | 
| **settings** | string | False | -  |  -  | Json formatted public settings for the extension. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Hybrid Compute Machine Extension. | 
| **type_handler_version** | string | False | -  |  -  | Specifies the version of the script handler. | 

