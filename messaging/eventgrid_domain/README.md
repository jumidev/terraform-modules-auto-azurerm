# azurerm_eventgrid_domain

Manages an EventGrid Domain

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the EventGrid Domain resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.input_schema** | string | False | `EventGridSchema`  |  `CloudEventSchemaV1_0`, `CustomEventSchema`, `EventGridSchema`  |  Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **var.input_mapping_fields** | block | False | -  |  -  |  A `input_mapping_fields` block. Changing this forces a new resource to be created. | 
| **var.input_mapping_default_values** | block | False | -  |  -  |  A `input_mapping_default_values` block. Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether or not public network access is allowed for this server. Defaults to `true`. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether local authentication methods is enabled for the EventGrid Domain. Defaults to `true`. | 
| **var.auto_create_topic_with_first_subscription** | bool | False | `True`  |  -  |  Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to `true`. | 
| **var.auto_delete_topic_with_last_subscription** | bool | False | `True`  |  -  |  Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to `true`. | 
| **var.inbound_ip_rule** | block | False | -  |  -  |  One or more `inbound_ip_rule` blocks. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **input_schema** | string  | - | 
| **input_mapping_fields** | block  | - | 
| **input_mapping_default_values** | block  | - | 
| **public_network_access_enabled** | bool  | - | 
| **local_auth_enabled** | bool  | - | 
| **auto_create_topic_with_first_subscription** | bool  | - | 
| **auto_delete_topic_with_last_subscription** | bool  | - | 
| **inbound_ip_rule** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the EventGrid Domain. | 
| **endpoint** | string  | The Endpoint associated with the EventGrid Domain. | 
| **primary_access_key** | string  | The Primary Shared Access Key associated with the EventGrid Domain. | 
| **secondary_access_key** | string  | The Secondary Shared Access Key associated with the EventGrid Domain. | 
| **identity** | block  | An `identity` block, which contains the Managed Service Identity information for this Event Grid Domain. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 