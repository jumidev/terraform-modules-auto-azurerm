# azurerm_virtual_machine_extension

Manages a Virtual Machine Extension to provide post deployment configurationand run automated tasks.~> **NOTE:** Custom Script Extensions for Linux & Windows require that the `commandToExecute` returns a `0` exit code to be classified as successfully deployed. You can achieve this by appending `exit 0` to the end of your `commandToExecute`.-> **NOTE:** Custom Script Extensions require that the Azure Virtual Machine Guest Agent is running on the Virtual Machine.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/virtual_machine_extension"   
}

inputs = {
   name = "The name of the virtual machine extension peering"   
   # virtual_machine_id → set in tfstate_inputs
   publisher = "The publisher of the extension, available publishers can be found by using the A..."   
   type = "The type of extension, available types for a publisher can be found using the Az..."   
   type_handler_version = "Specifies the version of the extension to use, available versions can be found u..."   
}

tfstate_inputs = {
   virtual_machine_id = "path/to/virtual_machine_component:id"   
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
| **name** | string |  The name of the virtual machine extension peering. Changing this forces a new resource to be created. | 
| **virtual_machine_id** | string |  The ID of the Virtual Machine. Changing this forces a new resource to be created | 
| **publisher** | string |  The publisher of the extension, available publishers can be found by using the Azure CLI. Changing this forces a new resource to be created. | 
| **type** | string |  The type of extension, available types for a publisher can be found using the Azure CLI. | 
| **type_handler_version** | string |  Specifies the version of the extension to use, available versions can be found using the Azure CLI. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **auto_upgrade_minor_version** | string |  -  |  -  |  Specifies if the platform deploys the latest minor version update to the `type_handler_version` specified. | 
| **automatic_upgrade_enabled** | bool |  -  |  -  |  Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? | 
| **settings** | string |  -  |  -  |  The settings passed to the extension, these are specified as a JSON object in a string. | 
| **failure_suppression_enabled** | bool |  `False`  |  `true`, `false`  |  Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`. | 
| **protected_settings** | string |  -  |  -  |  The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string. | 
| **protected_settings_from_key_vault** | [block](#protected_settings_from_key_vault-block-structure) |  -  |  -  |  A `protected_settings_from_key_vault` block. | 
| **provision_after_extensions** | string |  -  |  -  |  Specifies the collection of extension names after which this extension needs to be provisioned. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `protected_settings_from_key_vault` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_url` | string | Yes | - | The URL to the Key Vault Secret which stores the protected settings. |
| `source_vault_id` | string | Yes | - | The ID of the source Key Vault. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Machine Extension. | 

Additionally, all variables are provided as outputs.
