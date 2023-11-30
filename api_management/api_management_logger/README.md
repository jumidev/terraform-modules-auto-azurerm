# azurerm_api_management_logger

Manages a Logger within an API Management Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_logger" 
}

inputs = {
   name = "name of api_management_logger" 
   resource_group_name = "${resource_group}" 
   api_management_name = "api_management_name of api_management_logger" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.application_insights** | block | False | -  |  An `application_insights` block. Changing this forces a new resource to be created. | | `application_insights` block structure: || 
|   instrumentation_key (string): (REQUIRED) The instrumentation key used to push data to Application Insights. ||

| **var.buffered** | bool | False | `True`  |  Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`. | 
| **var.description** | string | False | -  |  A description of this Logger. | 
| **var.eventhub** | block | False | -  |  An `eventhub` block. Changing this forces a new resource to be created. | | `eventhub` block structure: || 
|   name (string): (REQUIRED) The name of an EventHub. ||
|   connection_string (string): The connection string of an EventHub Namespace. ||
|   user_assigned_identity_client_id (string): The Client Id of the User Assigned Identity  with the 'Azure Event Hubs Data Sender' role to the target EventHub Namespace. Required when 'endpoint_uri' is set. If not specified the System Assigned Identity will be used. ||
|   endpoint_uri (string): The endpoint address of an EventHub Namespace. Required when 'client_id' is set. ||

| **var.resource_id** | string | False | -  |  The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Logger. | 

Additionally, all variables are provided as outputs.
