# azurerm_automation_connection_service_principal

Manages an Automation Connection with type `AzureServicePrincipal`.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_connection_service_principal"   
}

inputs = {
   name = "Specifies the name of the Connection"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in tfstate_inputs
   application_id = "The (Client) ID of the Service Principal"   
   certificate_thumbprint = "The thumbprint of the Service Principal Certificate..."   
   # subscription_id → set in tfstate_inputs
   # tenant_id → set in tfstate_inputs
}

tfstate_inputs = {
   automation_account_name = "path/to/automation_account_component:name"   
   subscription_id = "path/to/subscription_component:subscription_id"   
   tenant_id = "path/to/aadb2c_directory_component:tenant_id"   
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
| **application_id** | string |  The (Client) ID of the Service Principal. | 
| **certificate_thumbprint** | string |  The thumbprint of the Service Principal Certificate. | 
| **subscription_id** | string |  The subscription GUID. | 
| **tenant_id** | string |  The ID of the Tenant the Service Principal is assigned in. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for this Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Connection ID. | 

Additionally, all variables are provided as outputs.
