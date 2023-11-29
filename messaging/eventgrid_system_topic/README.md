# azurerm_eventgrid_system_topic

Manages an Event Grid System Topic.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **source_arm_resource_id** | string | True | -  |  -  | The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created. | 
| **topic_type** | string | True | -  |  -  | The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: `Microsoft.AppConfiguration.ConfigurationStores`, `Microsoft.Communication.CommunicationServices`, `Microsoft.ContainerRegistry.Registries`, `Microsoft.Devices.IoTHubs`, `Microsoft.EventGrid.Domains`, `Microsoft.EventGrid.Topics`, `Microsoft.Eventhub.Namespaces`, `Microsoft.KeyVault.vaults`, `Microsoft.MachineLearningServices.Workspaces`, `Microsoft.Maps.Accounts`, `Microsoft.Media.MediaServices`, `Microsoft.Resources.ResourceGroups`, `Microsoft.Resources.Subscriptions`, `Microsoft.ServiceBus.Namespaces`, `Microsoft.SignalRService.SignalR`, `Microsoft.Storage.StorageAccounts`, `Microsoft.Web.ServerFarms` and `Microsoft.Web.Sites`. Changing this forces a new Event Grid System Topic to be created. | 

