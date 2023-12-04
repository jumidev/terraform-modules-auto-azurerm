# azurerm_eventgrid_topic

Manages an EventGrid Topic~> **Note:** at this time EventGrid Topic's are only available in a limited number of regions.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventgrid_topic" 
}

inputs = {
   name = "name of eventgrid_topic" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **name** | string |  Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **input_schema** | string |  `EventGridSchema`  |  `CloudEventSchemaV1_0`, `CustomEventSchema`, `EventGridSchema`  |  Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **input_mapping_fields** | [block](#input_mapping_fields-block-structure) |  -  |  -  |  A `input_mapping_fields` block. Changing this forces a new resource to be created. | 
| **input_mapping_default_values** | [block](#input_mapping_default_values-block-structure) |  -  |  -  |  A `input_mapping_default_values` block. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether or not public network access is allowed for this server. Defaults to `true`. | 
| **local_auth_enabled** | bool |  `True`  |  -  |  Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`. | 
| **inbound_ip_rule** | [block](#inbound_ip_rule-block-structure) |  -  |  -  |  One or more `inbound_ip_rule` blocks. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `input_mapping_default_values` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_type` | string | No | - | Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `data_version` | string | No | - | Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `subject` | string | No | - | Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Event Grid Topic. Possible values are 'SystemAssigned', 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Topic. |

### `input_mapping_fields` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `topic` | string | No | - | Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `event_type` | string | No | - | Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `event_time` | string | No | - | Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `data_version` | string | No | - | Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `subject` | string | No | - | Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |

### `inbound_ip_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_mask` | string | Yes | - | The IP mask (CIDR) to match on. |
| `action` | string | No | Allow | The action to take when the rule is matched. Possible values are 'Allow'. Defaults to 'Allow'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventGrid Topic ID. | 
| **endpoint** | string | No  | The Endpoint associated with the EventGrid Topic. | 
| **primary_access_key** | string | Yes  | The Primary Shared Access Key associated with the EventGrid Topic. | 
| **secondary_access_key** | string | Yes  | The Secondary Shared Access Key associated with the EventGrid Topic. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
