# azurerm_vmware_express_route_authorization

Manages an Express Route VMware Authorization.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Express Route VMware Authorization. Changing this forces a new VMware Authorization to be created. | 
| **var.private_cloud_id** | string | True | -  |  -  | The ID of the VMware Private Cloud in which to create this Express Route VMware Authorization. Changing this forces a new VMware Authorization to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **private_cloud_id** | string  | - | 
| **id** | string  | The ID of the VMware Authorization. | 
| **express_route_authorization_id** | string  | The ID of the Express Route Circuit Authorization. | 
| **express_route_authorization_key** | string  | The key of the Express Route Circuit Authorization. | 