# azurerm_eventgrid_system_topic

Manages an Event Grid System Topic.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventgrid_system_topic" 
}

inputs = {
   location = "${location}" 
   name = "name of eventgrid_system_topic" 
   resource_group_name = "${resource_group}" 
   source_arm_resource_id = "source_arm_resource_id of eventgrid_system_topic" 
   topic_type = "topic_type of eventgrid_system_topic" 
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
| **var.location** | string | True | The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created. | 
| **var.name** | string | True | The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created. | 
| **var.identity** | block | False | An `identity` block. | 
| **var.source_arm_resource_id** | string | True | The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created. | 
| **var.topic_type** | string | True | The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: `Microsoft.AppConfiguration.ConfigurationStores`, `Microsoft.Communication.CommunicationServices`, `Microsoft.ContainerRegistry.Registries`, `Microsoft.Devices.IoTHubs`, `Microsoft.EventGrid.Domains`, `Microsoft.EventGrid.Topics`, `Microsoft.Eventhub.Namespaces`, `Microsoft.KeyVault.vaults`, `Microsoft.MachineLearningServices.Workspaces`, `Microsoft.Maps.Accounts`, `Microsoft.Media.MediaServices`, `Microsoft.Resources.ResourceGroups`, `Microsoft.Resources.Subscriptions`, `Microsoft.ServiceBus.Namespaces`, `Microsoft.SignalRService.SignalR`, `Microsoft.Storage.StorageAccounts`, `Microsoft.Web.ServerFarms` and `Microsoft.Web.Sites`. Changing this forces a new Event Grid System Topic to be created. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Event Grid System Topic. Possible values are 'SystemAssigned', 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid System Topic. |
| `tags` | map | No | - | A mapping of tags which should be assigned to the Event Grid System Topic. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Event Grid System Topic. | 
| **identity** | block | No  | An `identity` block. | 
| **metric_arm_resource_id** | string | No  | The Metric ARM Resource ID of the Event Grid System Topic. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
