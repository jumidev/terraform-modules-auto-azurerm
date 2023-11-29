# azurerm_container_connected_registry

Manages a Container Connected Registry.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **container_registry_id** | string | True | -  |  -  | The ID of the Container Registry that this Connected Registry will reside in. Changing this forces a new Container Connected Registry to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Container Connected Registry. Changing this forces a new Container Connected Registry to be created. | 
| **sync_token_id** | string | True | -  |  -  | The ID of the Container Registry Token which is used for synchronizing the Connected Registry. Changing this forces a new Container Connected Registry to be created. | 
| **audit_log_enabled** | bool | False | -  |  -  | Should the log auditing be enabled? | 
| **client_token_ids** | string | False | -  |  -  | Specifies a list of IDs of Container Registry Tokens, which are meant to be used by the clients to connect to the Connected Registry. | 
| **log_level** | string | False | `None`  |  `None`, `Debug`, `Information`, `Warning`, `Error`  | The verbosity of the logs. Possible values are `None`, `Debug`, `Information`, `Warning` and `Error`. Defaults to `None`. | 
| **mode** | string | False | `ReadWrite`  |  `Mirror`, `ReadOnly`, `ReadWrite`, `Registry`  | The mode of the Connected Registry. Possible values are `Mirror`, `ReadOnly`, `ReadWrite` and `Registry`. Changing this forces a new Container Connected Registry to be created. Defaults to `ReadWrite`. | 
| **notification** | block | False | -  |  -  | One or more `notification` blocks. | 
| **parent_registry_id** | string | False | -  |  -  | The ID of the parent registry. This can be either a Container Registry ID or a Connected Registry ID. Changing this forces a new Container Connected Registry to be created. | 
| **sync_message_ttl** | string | False | `P1D`  |  -  | The period of time (in form of ISO8601) for which a message is available to sync before it is expired. Allowed range is from `P1D` to `P90D`. Defaults to `P1D`. | 
| **sync_schedule** | string | False | `* * * * *`  |  -  | The cron expression indicating the schedule that the Connected Registry will sync with its parent. Defaults to `* * * * *`. | 
| **sync_window** | string | False | -  |  -  | The time window (in form of ISO8601) during which sync is enabled for each schedule occurrence. Allowed range is from `PT3H` to `P7D`. | 

