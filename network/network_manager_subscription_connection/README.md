# azurerm_network_manager_subscription_connection

Manages a Network Manager Subscription Connection which may cross tenants.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created. | 
| **subscription_id** | string | True | -  |  -  | Specifies the ID of the target Subscription. Changing this forces a new resource to be created. | 
| **network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager which the Subscription is connected to. | 
| **description** | string | False | -  |  -  | A description of the Network Manager Subscription Connection. | 

