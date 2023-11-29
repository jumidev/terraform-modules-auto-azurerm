# azurerm_automation_connection_service_principal

Manages an Automation Connection with type `AzureServicePrincipal`.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **application_id** | string | True | -  |  -  | The (Client) ID of the Service Principal. | 
| **certificate_thumbprint** | string | True | -  |  -  | The thumbprint of the Service Principal Certificate. | 
| **subscription_id** | string | True | -  |  -  | The subscription GUID. | 
| **tenant_id** | string | True | -  |  -  | The ID of the Tenant the Service Principal is assigned in. | 
| **description** | string | False | -  |  -  | A description for this Connection. | 

