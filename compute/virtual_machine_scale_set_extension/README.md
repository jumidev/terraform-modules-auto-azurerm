# azurerm_virtual_machine_scale_set_extension

Manages an Extension for a Virtual Machine Scale Set.~> **NOTE:** This resource is not intended to be used with the `azurerm_virtual_machine_scale_set` resource - instead it's intended for this to be used with the `azurerm_linux_virtual_machine_scale_set` and `azurerm_windows_virtual_machine_scale_set` resources.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/virtual_machine_scale_set_extension" 
}

inputs = {
   name = "name of virtual_machine_scale_set_extension" 
   virtual_machine_scale_set_id = "virtual_machine_scale_set_id of virtual_machine_scale_set_extension" 
   publisher = "publisher of virtual_machine_scale_set_extension" 
   type = "type of virtual_machine_scale_set_extension" 
   type_handler_version = "type_handler_version of virtual_machine_scale_set_extension" 
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
| **var.name** | string | True | -  |  -  |  The name for the Virtual Machine Scale Set Extension. Changing this forces a new resource to be created. | 
| **var.virtual_machine_scale_set_id** | string | True | -  |  -  |  The ID of the Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **var.publisher** | string | True | -  |  -  |  Specifies the Publisher of the Extension. Changing this forces a new resource to be created. | 
| **var.type** | string | True | -  |  -  |  Specifies the Type of the Extension. Changing this forces a new resource to be created. | 
| **var.type_handler_version** | string | True | -  |  -  |  Specifies the version of the extension to use, available versions can be found using the Azure CLI. | 
| **var.auto_upgrade_minor_version** | bool | False | `True`  |  -  |  Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`. | 
| **var.automatic_upgrade_enabled** | bool | False | -  |  -  |  Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension? | 
| **var.failure_suppression_enabled** | bool | False | `False`  |  `true`, `false`  |  Should failures from the extension be suppressed? Possible values are `true` or `false`. Defaults to `false`. | 
| **var.force_update_tag** | string | False | -  |  -  |  A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed. | 
| **var.protected_settings** | string | False | -  |  -  |  A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension. | 
| **var.protected_settings_from_key_vault** | block | False | -  |  -  |  A `protected_settings_from_key_vault` block. | 
| **var.provision_after_extensions** | string | False | -  |  -  |  An ordered list of Extension names which this should be provisioned after. | 
| **var.settings** | string | False | -  |  -  |  A JSON String which specifies Settings for the Extension. | 

### `protected_settings_from_key_vault` block structure

> `secret_url` (string): (REQUIRED) The URL to the Key Vault Secret which stores the protected settings.
> `source_vault_id` (string): (REQUIRED) The ID of the source Key Vault.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Machine Scale Set Extension. | 

Additionally, all variables are provided as outputs.
