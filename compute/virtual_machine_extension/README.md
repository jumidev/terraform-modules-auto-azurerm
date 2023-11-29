# azurerm_virtual_machine_extension

Manages a Virtual Machine Extension to provide post deployment configurationand run automated tasks.~> **NOTE:** Custom Script Extensions for Linux & Windows require that the `commandToExecute` returns a `0` exit code to be classified as successfully deployed. You can achieve this by appending `exit 0` to the end of your `commandToExecute`.-> **NOTE:** Custom Script Extensions require that the Azure Virtual Machine Guest Agent is running on the Virtual Machine.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the virtual machine extension peering. Changing this forces a new resource to be created. | 
| **virtual_machine_id** | string | True | -  |  -  | The ID of the Virtual Machine. Changing this forces a new resource to be created | 
| **publisher** | string | True | -  |  -  | The publisher of the extension, available publishers can be found by using the Azure CLI. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  -  | The type of extension, available types for a publisher can be found using the Azure CLI. | 
| **type_handler_version** | string | True | -  |  -  | Specifies the version of the extension to use, available versions can be found using the Azure CLI. | 
| **auto_upgrade_minor_version** | string | False | -  |  -  | Specifies if the platform deploys the latest minor version update to the `type_handler_version` specified. | 
| **automatic_upgrade_enabled** | bool | False | -  |  -  | Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? | 
| **settings** | string | False | -  |  -  | The settings passed to the extension, these are specified as a JSON object in a string. | 
| **failure_suppression_enabled** | bool | False | `False`  |  `true`, `false`  | Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`. | 
| **protected_settings** | string | False | -  |  -  | The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string. | 
| **protected_settings_from_key_vault** | block | False | -  |  -  | A `protected_settings_from_key_vault` block. | 
| **provision_after_extensions** | string | False | -  |  -  | Specifies the collection of extension names after which this extension needs to be provisioned. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

