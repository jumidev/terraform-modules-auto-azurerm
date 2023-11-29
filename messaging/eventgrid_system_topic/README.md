# azurerm_eventgrid_system_topic

Manages an Event Grid System Topic.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  | The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.source_arm_resource_id** | string | True | -  |  -  | The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created. | 
| **var.topic_type** | string | True | -  |  -  | The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: `Microsoft.AppConfiguration.ConfigurationStores`, `Microsoft.Communication.CommunicationServices`, `Microsoft.ContainerRegistry.Registries`, `Microsoft.Devices.IoTHubs`, `Microsoft.EventGrid.Domains`, `Microsoft.EventGrid.Topics`, `Microsoft.Eventhub.Namespaces`, `Microsoft.KeyVault.vaults`, `Microsoft.MachineLearningServices.Workspaces`, `Microsoft.Maps.Accounts`, `Microsoft.Media.MediaServices`, `Microsoft.Resources.ResourceGroups`, `Microsoft.Resources.Subscriptions`, `Microsoft.ServiceBus.Namespaces`, `Microsoft.SignalRService.SignalR`, `Microsoft.Storage.StorageAccounts`, `Microsoft.Web.ServerFarms` and `Microsoft.Web.Sites`. Changing this forces a new Event Grid System Topic to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **identity** | block  | - | 
| **source_arm_resource_id** | string  | - | 
| **topic_type** | string  | - | 
| **id** | string  | The ID of the Event Grid System Topic. | 
| **identity** | block  | An `identity` block. | 
| **metric_arm_resource_id** | string  | The Metric ARM Resource ID of the Event Grid System Topic. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 