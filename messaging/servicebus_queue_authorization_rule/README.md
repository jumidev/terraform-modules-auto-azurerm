# azurerm_servicebus_queue_authorization_rule

Manages an Authorization Rule for a ServiceBus Queue.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_queue_authorization_rule" 
}

inputs = {
   name = "name of servicebus_queue_authorization_rule" 
   # queue_id → set in tfstate_inputs
}

tfstate_inputs = {
   queue_id = "path/to/servicebus_queue_component:id" 
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
| **name** | string |  Specifies the name of the Authorization Rule. Changing this forces a new resource to be created. | 
| **queue_id** | string |  Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **listen** | bool |  `False`  |  Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`. | 
| **send** | bool |  `False`  |  Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`. | 
| **manage** | bool |  `False`  |  Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Authorization Rule. | 
| **primary_key** | string | No  | The Primary Key for the Authorization Rule. | 
| **primary_connection_string** | string | No  | The Primary Connection String for the Authorization Rule. | 
| **secondary_key** | string | No  | The Secondary Key for the Authorization Rule. | 
| **secondary_connection_string** | string | No  | The Secondary Connection String for the Authorization Rule. | 
| **primary_connection_string_alias** | string | No  | The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired. | 
| **secondary_connection_string_alias** | string | No  | The alias Secondary Connection String for the ServiceBus Namespace | 

Additionally, all variables are provided as outputs.
