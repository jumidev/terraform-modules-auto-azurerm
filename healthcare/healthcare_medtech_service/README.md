# azurerm_healthcare_medtech_service

Manages a Healthcare Med Tech Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **workspace_id** | string | True | -  |  -  | Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **eventhub_namespace_name** | string | True | -  |  -  | Specifies the namespace name of the Event Hub to connect to. | 
| **eventhub_name** | string | True | -  |  -  | Specifies the name of the Event Hub to connect to. | 
| **eventhub_consumer_group_name** | string | True | -  |  -  | Specifies the Consumer Group of the Event Hub to connect to. | 
| **device_mapping_json** | string | True | -  |  -  | Specifies the Device Mappings of the Med Tech Service. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Healthcare Med Tech Service. | 

