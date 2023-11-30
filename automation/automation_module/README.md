# azurerm_automation_module

Manages a Automation Module.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_module" 
}

inputs = {
   name = "name of automation_module" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_module" 
   module_link = {
      example_module_link = {
         ...
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Module. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Module is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | The name of the automation account in which the Module is created. Changing this forces a new resource to be created. | 
| **var.module_link** | block | True | A `module_link` block. | 

### `module_link` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `uri` | string | Yes | - | The URI of the module content (zip or nupkg). |
| `hash` | block | No | - | A 'hash' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Module ID. | 

Additionally, all variables are provided as outputs.
