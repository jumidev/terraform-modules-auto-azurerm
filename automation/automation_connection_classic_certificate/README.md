# azurerm_automation_connection_classic_certificate

Manages an Automation Connection with type `AzureClassicCertificate`.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **certificate_asset_name** | string | True | -  |  -  | The name of the certificate asset. | 
| **subscription_name** | string | True | -  |  -  | The name of subscription. | 
| **subscription_id** | string | True | -  |  -  | The id of subscription. | 
| **description** | string | False | -  |  -  | A description for this Connection. | 

