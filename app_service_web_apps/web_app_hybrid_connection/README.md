# azurerm_web_app_hybrid_connection

Manages a Web App Hybrid Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **web_app_id** | string | True | -  |  -  | The ID of the Web App for this Hybrid Connection. Changing this forces a new resource to be created. | 
| **relay_id** | string | True | -  |  -  | The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created. | 
| **hostname** | string | True | -  |  -  | The hostname of the endpoint. | 
| **port** | string | True | -  |  -  | The port to use for the endpoint. | 
| **send_key_name** | string | False | `RootManageSharedAccessKey`  |  -  | The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` | 

