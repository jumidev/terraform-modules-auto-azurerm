# azurerm_virtual_machine_extension

Manages a Virtual Machine Extension to provide post deployment configurationand run automated tasks.~> **NOTE:** Custom Script Extensions for Linux & Windows require that the `commandToExecute` returns a `0` exit code to be classified as successfully deployed. You can achieve this by appending `exit 0` to the end of your `commandToExecute`.-> **NOTE:** Custom Script Extensions require that the Azure Virtual Machine Guest Agent is running on the Virtual Machine.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/virtual_machine_extension" 
}

inputs = {
   name = "name of virtual_machine_extension" 
   virtual_machine_id = "virtual_machine_id of virtual_machine_extension" 
   publisher = "publisher of virtual_machine_extension" 
   type = "type of virtual_machine_extension" 
   type_handler_version = "type_handler_version of virtual_machine_extension" 
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
| **var.name** | string | True | -  |  -  |  The name of the virtual machine extension peering. Changing this forces a new resource to be created. | 
| **var.virtual_machine_id** | string | True | -  |  -  |  The ID of the Virtual Machine. Changing this forces a new resource to be created | 
| **var.publisher** | string | True | -  |  -  |  The publisher of the extension, available publishers can be found by using the Azure CLI. Changing this forces a new resource to be created. | 
| **var.type** | string | True | -  |  -  |  The type of extension, available types for a publisher can be found using the Azure CLI. | 
| **var.type_handler_version** | string | True | -  |  -  |  Specifies the version of the extension to use, available versions can be found using the Azure CLI. | 
| **var.auto_upgrade_minor_version** | string | False | -  |  -  |  Specifies if the platform deploys the latest minor version update to the `type_handler_version` specified. | 
| **var.automatic_upgrade_enabled** | bool | False | -  |  -  |  Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? | 
| **var.settings** | string | False | -  |  -  |  The settings passed to the extension, these are specified as a JSON object in a string. | 
| **var.failure_suppression_enabled** | bool | False | `False`  |  `true`, `false`  |  Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`. | 
| **var.protected_settings** | string | False | -  |  -  |  The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string. | 
| **var.protected_settings_from_key_vault** | block | False | -  |  -  |  A `protected_settings_from_key_vault` block. | 
| **var.provision_after_extensions** | string | False | -  |  -  |  Specifies the collection of extension names after which this extension needs to be provisioned. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

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
