# azurerm_automation_connection

Manages an Automation Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_connection"   
}

inputs = {
   name = "Specifies the name of the Connection"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in component_inputs
   type = "The type of the Connection - can be either builtin type such as `Azure`, `AzureC..."   
   values = "A mapping of key value pairs passed to the connection..."   
}

component_inputs = {
   automation_account_name = "path/to/automation_account_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the Connection is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  -  |  The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **type** | string |  `Azure`, `AzureClassicCertificate`, `AzureServicePrincipal`  |  The type of the Connection - can be either builtin type such as `Azure`, `AzureClassicCertificate`, and `AzureServicePrincipal`, or a user defined types. Changing this forces a new resource to be created. | 
| **values** | string |  -  |  A mapping of key value pairs passed to the connection. Different `type` needs different parameters in the `values`. Builtin types have required field values as below: | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **Azure** | string |  : parameters `AutomationCertificateName` and `SubscriptionID`. | 
| **AzureClassicCertificate** | string |  : parameters `SubscriptionName`, `SubscriptionId` and `CertificateAssetName`. | 
| **AzureServicePrincipal** | string |  : parameters `ApplicationId`, `CertificateThumbprint`, `SubscriptionId` and `TenantId`. | 
| **description** | string |  A description for this Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Connection ID. | 

Additionally, all variables are provided as outputs.
