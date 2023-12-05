# azurerm_automation_connection_certificate

Manages an Automation Connection with type `Azure`.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_connection_certificate"   
}

inputs = {
   name = "name of automation_connection_certificate"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in tfstate_inputs
   # automation_certificate_name → set in tfstate_inputs
   # subscription_id → set in tfstate_inputs
}

tfstate_inputs = {
   automation_account_name = "path/to/automation_account_component:name"   
   automation_certificate_name = "path/to/automation_certificate_component:name"   
   subscription_id = "path/to/subscription_component:subscription_id"   
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
| **name** | string |  Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_certificate_name** | string |  The name of the automation certificate. | 
| **subscription_id** | string |  The id of subscription where the automation certificate exists. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for this Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Connection ID. | 

Additionally, all variables are provided as outputs.
