# azurerm_network_manager_subscription_connection

Manages a Network Manager Subscription Connection which may cross tenants.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created. | 
| **var.subscription_id** | string | True | Specifies the ID of the target Subscription. Changing this forces a new resource to be created. | 
| **var.network_manager_id** | string | True | Specifies the ID of the Network Manager which the Subscription is connected to. | 
| **var.description** | string | False | A description of the Network Manager Subscription Connection. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **subscription_id** | string  | - | 
| **network_manager_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Network Manager Subscription Connection. | 
| **connection_state** | string  | The Connection state of the Network Manager Subscription Connection. | 