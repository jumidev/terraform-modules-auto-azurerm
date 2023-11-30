# azurerm_servicebus_topic_authorization_rule

Manages a ServiceBus Topic authorization Rule within a ServiceBus Topic.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_topic_authorization_rule" 
}

inputs = {
   name = "name of servicebus_topic_authorization_rule" 
   topic_id = "topic_id of servicebus_topic_authorization_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created. | 
| **var.topic_id** | string | True | -  |  Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created. | 
| **var.listen** | bool | False | `False`  |  Grants listen access to this this Authorization Rule. Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  Grants send access to this this Authorization Rule. Defaults to `false`. | 
| **var.manage** | bool | False | `False`  |  Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ServiceBus Topic ID. | 
| **primary_key** | string | No  | The Primary Key for the ServiceBus Topic authorization Rule. | 
| **primary_connection_string** | string | No  | The Primary Connection String for the ServiceBus Topic authorization Rule. | 
| **secondary_key** | string | No  | The Secondary Key for the ServiceBus Topic authorization Rule. | 
| **secondary_connection_string** | string | No  | The Secondary Connection String for the ServiceBus Topic authorization Rule. | 
| **primary_connection_string_alias** | string | No  | The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired. | 
| **secondary_connection_string_alias** | string | No  | The alias Secondary Connection String for the ServiceBus Namespace | 

Additionally, all variables are provided as outputs.
