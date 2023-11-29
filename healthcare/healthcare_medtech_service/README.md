# azurerm_healthcare_medtech_service

Manages a Healthcare Med Tech Service.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **var.workspace_id** | string | True | -  |  -  | Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.eventhub_namespace_name** | string | True | -  |  -  | Specifies the namespace name of the Event Hub to connect to. | 
| **var.eventhub_name** | string | True | -  |  -  | Specifies the name of the Event Hub to connect to. | 
| **var.eventhub_consumer_group_name** | string | True | -  |  -  | Specifies the Consumer Group of the Event Hub to connect to. | 
| **var.device_mapping_json** | string | True | -  |  -  | Specifies the Device Mappings of the Med Tech Service. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the Healthcare Med Tech Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **workspace_id** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **eventhub_namespace_name** | string  | - | 
| **eventhub_name** | string  | - | 
| **eventhub_consumer_group_name** | string  | - | 
| **device_mapping_json** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Healthcare Med Tech Service. | 
| **type** | string  | The type of identity used for the Healthcare Med Tech service. | 
| **principal_id** | string  | The Principal ID associated with this System Assigned Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this System Assigned Managed Service Identity. | 