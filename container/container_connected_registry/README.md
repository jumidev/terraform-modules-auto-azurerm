# azurerm_container_connected_registry

Manages a Container Connected Registry.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_connected_registry" 
}

inputs = {
   container_registry_id = "container_registry_id of container_connected_registry" 
   name = "name of container_connected_registry" 
   sync_token_id = "sync_token_id of container_connected_registry" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.container_registry_id** | string  The ID of the Container Registry that this Connected Registry will reside in. Changing this forces a new Container Connected Registry to be created. | 
| **var.name** | string  The name which should be used for this Container Connected Registry. Changing this forces a new Container Connected Registry to be created. | 
| **var.sync_token_id** | string  The ID of the Container Registry Token which is used for synchronizing the Connected Registry. Changing this forces a new Container Connected Registry to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.audit_log_enabled** | bool  -  |  -  |  Should the log auditing be enabled? | 
| **var.client_token_ids** | string  -  |  -  |  Specifies a list of IDs of Container Registry Tokens, which are meant to be used by the clients to connect to the Connected Registry. | 
| **var.log_level** | string  `None`  |  `None`, `Debug`, `Information`, `Warning`, `Error`  |  The verbosity of the logs. Possible values are `None`, `Debug`, `Information`, `Warning` and `Error`. Defaults to `None`. | 
| **var.mode** | string  `ReadWrite`  |  `Mirror`, `ReadOnly`, `ReadWrite`, `Registry`  |  The mode of the Connected Registry. Possible values are `Mirror`, `ReadOnly`, `ReadWrite` and `Registry`. Changing this forces a new Container Connected Registry to be created. Defaults to `ReadWrite`. | 
| **var.notification** | block  -  |  -  |  One or more `notification` blocks. | 
| **var.parent_registry_id** | string  -  |  -  |  The ID of the parent registry. This can be either a Container Registry ID or a Connected Registry ID. Changing this forces a new Container Connected Registry to be created. | 
| **var.sync_message_ttl** | string  `P1D`  |  -  |  The period of time (in form of ISO8601) for which a message is available to sync before it is expired. Allowed range is from `P1D` to `P90D`. Defaults to `P1D`. | 
| **var.sync_schedule** | string  `* * * * *`  |  -  |  The cron expression indicating the schedule that the Connected Registry will sync with its parent. Defaults to `* * * * *`. | 
| **var.sync_window** | string  -  |  -  |  The time window (in form of ISO8601) during which sync is enabled for each schedule occurrence. Allowed range is from `PT3H` to `P7D`. | 

### `notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action of the artifact that wants to be subscribed for the Connected Registry. Possible values are 'push', 'delete' and '*' (i.e. any). |
| `tag` | string | No | - | The tag of the artifact that wants to be subscribed for the Connected Registry. |
| `digest` | string | No | - | The digest of the artifact that wants to be subscribed for the Connected Registry. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Connected Registry. | 

Additionally, all variables are provided as outputs.
