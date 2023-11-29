# azurerm_automation_connection_service_principal

Manages an Automation Connection with type `AzureServicePrincipal`.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **var.application_id** | string | True | -  |  -  | The (Client) ID of the Service Principal. | 
| **var.certificate_thumbprint** | string | True | -  |  -  | The thumbprint of the Service Principal Certificate. | 
| **var.subscription_id** | string | True | -  |  -  | The subscription GUID. | 
| **var.tenant_id** | string | True | -  |  -  | The ID of the Tenant the Service Principal is assigned in. | 
| **var.description** | string | False | -  |  -  | A description for this Connection. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **automation_account_name** | string  | - | 
| **application_id** | string  | - | 
| **certificate_thumbprint** | string  | - | 
| **subscription_id** | string  | - | 
| **tenant_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The Automation Connection ID. | 