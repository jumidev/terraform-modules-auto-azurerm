# azurerm_eventgrid_topic

Manages an EventGrid Topic~> **Note:** at this time EventGrid Topic's are only available in a limited number of regions.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **input_schema** | string | False | `EventGridSchema`  |  `CloudEventSchemaV1_0`, `CustomEventSchema`, `EventGridSchema`  | Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **input_mapping_fields** | block | False | -  |  -  | A `input_mapping_fields` block. Changing this forces a new resource to be created. | 
| **input_mapping_default_values** | block | False | -  |  -  | A `input_mapping_default_values` block. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether or not public network access is allowed for this server. Defaults to `true`. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`. | 
| **inbound_ip_rule** | block | False | -  |  -  | One or more `inbound_ip_rule` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

