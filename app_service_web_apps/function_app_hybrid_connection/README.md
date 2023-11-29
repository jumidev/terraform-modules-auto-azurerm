# azurerm_function_app_hybrid_connection

Manages a Function App Hybrid Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **function_app_id** | string | True | -  |  -  | The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created. | 
| **relay_id** | string | True | -  |  -  | The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created. | 
| **hostname** | string | True | -  |  -  | The hostname of the endpoint. | 
| **port** | string | True | -  |  -  | The port to use for the endpoint | 
| **send_key_name** | string | False | `RootManageSharedAccessKey`  |  -  | The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` | 

