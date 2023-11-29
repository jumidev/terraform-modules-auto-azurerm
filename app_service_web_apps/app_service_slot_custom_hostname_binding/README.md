# azurerm_app_service_slot_custom_hostname_binding

Manages a Hostname Binding within an App Service Slot.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **app_service_slot_id** | string | True | -  |  -  | The ID of the App Service Slot. Changing this forces a new resource to be created. | 
| **hostname** | string | True | -  |  -  | Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created. | 
| **ssl_state** | string | False | -  |  `IpBasedEnabled`, `SniEnabled`  | The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created. | 
| **thumbprint** | string | False | -  |  -  | The SSL certificate thumbprint. Changing this forces a new resource to be created. | 

