# azurerm_eventgrid_topic

Manages an EventGrid Topic~> **Note:** at this time EventGrid Topic's are only available in a limited number of regions.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Event Grid Topic. Possible values are 'SystemAssigned', 'UserAssigned'. ||
|   identity_ids (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Topic. ||

| **var.input_schema** | string | False | `EventGridSchema`  |  `CloudEventSchemaV1_0`, `CustomEventSchema`, `EventGridSchema`  |  Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created. | 
| **var.input_mapping_fields** | block | False | -  |  -  |  A `input_mapping_fields` block. Changing this forces a new resource to be created. | | `input_mapping_fields` block structure: || 
|   topic (string): Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||
|   event_type (string): Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||
|   event_time (string): Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||
|   data_version (string): Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||
|   subject (string): Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||

| **var.input_mapping_default_values** | block | False | -  |  -  |  A `input_mapping_default_values` block. Changing this forces a new resource to be created. | | `input_mapping_default_values` block structure: || 
|   event_type (string): Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||
|   data_version (string): Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||
|   subject (string): Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created. ||

| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether or not public network access is allowed for this server. Defaults to `true`. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`. | 
| **var.inbound_ip_rule** | block | False | -  |  -  |  One or more `inbound_ip_rule` blocks. | | `inbound_ip_rule` block structure: || 
|   ip_mask (string): (REQUIRED) The IP mask (CIDR) to match on. ||
|   action (string): The action to take when the rule is matched. Possible values are 'Allow'. Defaults to 'Allow'. ||

| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventGrid Topic ID. | 
| **endpoint** | string | No  | The Endpoint associated with the EventGrid Topic. | 
| **primary_access_key** | string | No  | The Primary Shared Access Key associated with the EventGrid Topic. | 
| **secondary_access_key** | string | No  | The Secondary Shared Access Key associated with the EventGrid Topic. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
