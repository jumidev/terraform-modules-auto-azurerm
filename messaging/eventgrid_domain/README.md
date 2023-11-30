# azurerm_eventgrid_domain

Manages an EventGrid Domain

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventgrid_domain" 
}

inputs = {
   name = "name of eventgrid_domain" 
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
| **var.name** | string  Specifies the name of the EventGrid Domain resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.identity** | block  -  |  -  |  An `identity` block. | 
| **var.input_schema** | string  `EventGridSchema`  |  `CloudEventSchemaV1_0`, `CustomEventSchema`, `EventGridSchema`  |  Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **var.input_mapping_fields** | block  -  |  -  |  A `input_mapping_fields` block. Changing this forces a new resource to be created. | 
| **var.input_mapping_default_values** | block  -  |  -  |  A `input_mapping_default_values` block. Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool  `True`  |  -  |  Whether or not public network access is allowed for this server. Defaults to `true`. | 
| **var.local_auth_enabled** | bool  `True`  |  -  |  Whether local authentication methods is enabled for the EventGrid Domain. Defaults to `true`. | 
| **var.auto_create_topic_with_first_subscription** | bool  `True`  |  -  |  Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to `true`. | 
| **var.auto_delete_topic_with_last_subscription** | bool  `True`  |  -  |  Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to `true`. | 
| **var.inbound_ip_rule** | block  -  |  -  |  One or more `inbound_ip_rule` blocks. | 
| **var.tags** | map  -  |  -  |  A mapping of tags to assign to the resource. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Event Grid Domain. Possible values are 'SystemAssigned', 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Domain. |

### `input_mapping_fields` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `topic` | string | No | - | Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `event_type` | string | No | - | Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `event_time` | string | No | - | Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `data_version` | string | No | - | Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `subject` | string | No | - | Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |

### `input_mapping_default_values` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_type` | string | No | - | Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `data_version` | string | No | - | Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |
| `subject` | string | No | - | Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. |

### `inbound_ip_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_mask` | string | Yes | - | The IP mask (CIDR) to match on. |
| `action` | string | No | Allow | The action to take when the rule is matched. Possible values are 'Allow'. Defaults to 'Allow'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventGrid Domain. | 
| **endpoint** | string | No  | The Endpoint associated with the EventGrid Domain. | 
| **primary_access_key** | string | No  | The Primary Shared Access Key associated with the EventGrid Domain. | 
| **secondary_access_key** | string | No  | The Secondary Shared Access Key associated with the EventGrid Domain. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this Event Grid Domain. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
