# azurerm_network_manager_subscription_connection

Manages a Network Manager Subscription Connection which may cross tenants.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_subscription_connection" 
}

inputs = {
   name = "name of network_manager_subscription_connection" 
   subscription_id = "subscription_id of network_manager_subscription_connection" 
   network_manager_id = "network_manager_id of network_manager_subscription_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created. | 
| **var.subscription_id** | string | True | Specifies the ID of the target Subscription. Changing this forces a new resource to be created. | 
| **var.network_manager_id** | string | True | Specifies the ID of the Network Manager which the Subscription is connected to. | 
| **var.description** | string | False | A description of the Network Manager Subscription Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Subscription Connection. | 
| **connection_state** | string | No  | The Connection state of the Network Manager Subscription Connection. | 

Additionally, all variables are provided as outputs.
