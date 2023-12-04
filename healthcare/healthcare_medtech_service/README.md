# azurerm_healthcare_medtech_service

Manages a Healthcare Med Tech Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "healthcare/healthcare_medtech_service" 
}

inputs = {
   name = "name of healthcare_medtech_service" 
   # workspace_id → set in tfstate_inputs
   location = "${location}" 
   eventhub_namespace_name = "eventhub_namespace_name of healthcare_medtech_service" 
   # eventhub_name → set in tfstate_inputs
   # eventhub_consumer_group_name → set in tfstate_inputs
   device_mapping_json = "device_mapping_json of healthcare_medtech_service" 
}

tfstate_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id" 
   eventhub_name = "path/to/eventhub_component:name" 
   eventhub_consumer_group_name = "path/to/eventhub_consumer_group_component:name" 
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
| **name** | string |  Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **workspace_id** | string |  Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **location** | string |  Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **eventhub_namespace_name** | string |  Specifies the namespace name of the Event Hub to connect to. | 
| **eventhub_name** | string |  Specifies the name of the Event Hub to connect to. | 
| **eventhub_consumer_group_name** | string |  Specifies the Consumer Group of the Event Hub to connect to. | 
| **device_mapping_json** | string |  Specifies the Device Mappings of the Med Tech Service. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **tags** | map |  A mapping of tags to assign to the Healthcare Med Tech Service. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are 'SystemAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Healthcare Med Tech Service. | 
| **type** | string | No  | The type of identity used for the Healthcare Med Tech service. | 
| **principal_id** | string | No  | The Principal ID associated with this System Assigned Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this System Assigned Managed Service Identity. | 

Additionally, all variables are provided as outputs.
