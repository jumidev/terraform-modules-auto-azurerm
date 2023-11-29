# azurerm_automation_connection

Manages an Automation Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  -  | The type of the Connection - can be either builtin type such as `Azure`, `AzureClassicCertificate`, and `AzureServicePrincipal`, or a user defined types. Changing this forces a new resource to be created. | 
| **values** | string | True | -  |  -  | A mapping of key value pairs passed to the connection. Different `type` needs different parameters in the `values`. Builtin types have required field values as below: | 
| **Azure** | string | False | -  |  -  | : parameters `AutomationCertificateName` and `SubscriptionID`. | 
| **AzureClassicCertificate** | string | False | -  |  -  | : parameters `SubscriptionName`, `SubscriptionId` and `CertificateAssetName`. | 
| **AzureServicePrincipal** | string | False | -  |  -  | : parameters `ApplicationId`, `CertificateThumbprint`, `SubscriptionId` and `TenantId`. | 
| **description** | string | False | -  |  -  | A description for this Connection. | 

