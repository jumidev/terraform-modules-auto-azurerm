# azurerm_virtual_desktop_host_pool_registration_info

Manages the Registration Info for a Virtual Desktop Host Pool.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **expiration_date** | datetime | True | -  |  -  | A valid `RFC3339Time` for the expiration of the token.. | 
| **hostpool_id** | string | True | -  |  -  | The ID of the Virtual Desktop Host Pool to link the Registration Info to. Changing this forces a new Registration Info resource to be created. Only a single virtual_desktop_host_pool_registration_info resource should be associated with a given hostpool. Assigning multiple resources will produce inconsistent results. | 

