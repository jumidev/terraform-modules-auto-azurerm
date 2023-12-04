# azurerm_virtual_machine_scale_set_extension

Manages an Extension for a Virtual Machine Scale Set.~> **NOTE:** This resource is not intended to be used with the `azurerm_virtual_machine_scale_set` resource - instead it's intended for this to be used with the `azurerm_linux_virtual_machine_scale_set` and `azurerm_windows_virtual_machine_scale_set` resources.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/virtual_machine_scale_set_extension" 
}

inputs = {
   name = "name of virtual_machine_scale_set_extension" 
   # virtual_machine_scale_set_id → set in tfstate_inputs
   publisher = "publisher of virtual_machine_scale_set_extension" 
   type = "type of virtual_machine_scale_set_extension" 
   type_handler_version = "type_handler_version of virtual_machine_scale_set_extension" 
}

tfstate_inputs = {
   virtual_machine_scale_set_id = "path/to/virtual_machine_scale_set_component:id" 
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
| **name** | string |  The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created. | 
| **virtual_machine_scale_set_id** | string |  The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **publisher** | string |  Specifies the Publisher of the Extension. Changing this forces a new resource to be created. | 
| **type** | string |  Specifies the Type of the Extension. Changing this forces a new resource to be created. | 
| **type_handler_version** | string |  Specifies the version of the extension to use, available versions can be found using the Azure CLI. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **auto_upgrade_minor_version** | bool |  `True`  |  -  |  Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`. | 
| **automatic_upgrade_enabled** | bool |  -  |  -  |  Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? | 
| **failure_suppression_enabled** | bool |  `False`  |  `true`, `false`  |  Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`. | 
| **force_update_tag** | string |  -  |  -  |  A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed. | 
| **protected_settings** | string |  -  |  -  |  A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension. | 
| **protected_settings_from_key_vault** | [block](#protected_settings_from_key_vault-block-structure) |  -  |  -  |  A `protected_settings_from_key_vault` block. | 
| **provision_after_extensions** | string |  -  |  -  |  An ordered list of Extension names which this should be provisioned after. | 
| **settings** | string |  -  |  -  |  A JSON String which specifies Settings for the Extension. | 

### `protected_settings_from_key_vault` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_url` | string | Yes | - | The URL to the Key Vault Secret which stores the protected settings. |
| `source_vault_id` | string | Yes | - | The ID of the source Key Vault. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Machine Scale Set Extension. | 

Additionally, all variables are provided as outputs.
