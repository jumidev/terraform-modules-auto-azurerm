# azurerm_arc_machine_extension

Manages a Hybrid Compute Machine Extension.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "hybrid_compute/arc_machine_extension" 
}

inputs = {
   arc_machine_id = "arc_machine_id of arc_machine_extension" 
   location = "${location}" 
   name = "name of arc_machine_extension" 
   publisher = "publisher of arc_machine_extension" 
   type = "type of arc_machine_extension" 
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
| **var.arc_machine_id** | string |  The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **var.location** | string |  The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **var.name** | string |  The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **var.publisher** | string |  The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created. | 
| **var.type** | string |  Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.automatic_upgrade_enabled** | bool |  `True`  |  Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`. | 
| **var.force_update_tag** | string |  -  |  How the extension handler should be forced to update even if the extension configuration has not changed. | 
| **var.protected_settings** | string |  -  |  Json formatted protected settings for the extension. | 
| **var.settings** | string |  -  |  Json formatted public settings for the extension. | 
| **var.tags** | map |  -  |  A mapping of tags which should be assigned to the Hybrid Compute Machine Extension. | 
| **var.type_handler_version** | string |  -  |  Specifies the version of the script handler. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Hybrid Compute Machine Extension. | 

Additionally, all variables are provided as outputs.
