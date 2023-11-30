# azurerm_servicebus_queue_authorization_rule

Manages an Authorization Rule for a ServiceBus Queue.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Authorization Rule. Changing this forces a new resource to be created. | 
| **var.queue_id** | string | True | -  |  Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created. | 
| **var.listen** | bool | False | `False`  |  Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`. | 
| **var.send** | bool | False | `False`  |  Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`. | 
| **var.manage** | bool | False | `False`  |  Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **queue_id** | string  | - | 
| **listen** | bool  | - | 
| **send** | bool  | - | 
| **manage** | bool  | - | 
| **id** | string  | The ID of the Authorization Rule. | 
| **primary_key** | string  | The Primary Key for the Authorization Rule. | 
| **primary_connection_string** | string  | The Primary Connection String for the Authorization Rule. | 
| **secondary_key** | string  | The Secondary Key for the Authorization Rule. | 
| **secondary_connection_string** | string  | The Secondary Connection String for the Authorization Rule. | 
| **primary_connection_string_alias** | string  | The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired. | 
| **secondary_connection_string_alias** | string  | The alias Secondary Connection String for the ServiceBus Namespace | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_queue_authorization_rule" 
}

inputs = {
   name = "name of servicebus_queue_authorization_rule" 
   queue_id = "queue_id of servicebus_queue_authorization_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```