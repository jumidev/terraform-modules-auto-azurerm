# azurerm_api_management_logger

Manages a Logger within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_logger"   
}

inputs = {
   name = "The name of this Logger, which must be unique within the API Management Service..."   
   resource_group_name = "${resource_group}"   
   # api_management_name → set in component_inputs
}

component_inputs = {
   api_management_name = "path/to/api_management_component:name"   
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
| **name** | string |  The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The name of the API Management Service. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **application_insights** | [block](#application_insights-block-structure) |  -  |  An `application_insights` block. Changing this forces a new resource to be created. | 
| **buffered** | bool |  `True`  |  Specifies whether records should be buffered in the Logger prior to publishing. Defaults to `true`. | 
| **description** | string |  -  |  A description of this Logger. | 
| **eventhub** | [block](#eventhub-block-structure) |  -  |  An `eventhub` block. Changing this forces a new resource to be created. | 
| **resource_id** | string |  -  |  The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created. | 

### `application_insights` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `instrumentation_key` | string | Yes | - | The instrumentation key used to push data to Application Insights. |

### `eventhub` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of an EventHub. |
| `connection_string` | string | No | - | The connection string of an EventHub Namespace. |
| `user_assigned_identity_client_id` | string | No | - | The Client Id of the User Assigned Identity  with the 'Azure Event Hubs Data Sender' role to the target EventHub Namespace. Required when 'endpoint_uri' is set. If not specified the System Assigned Identity will be used. |
| `endpoint_uri` | string | No | - | The endpoint address of an EventHub Namespace. Required when 'client_id' is set. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Logger. | 

Additionally, all variables are provided as outputs.
