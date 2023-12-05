# azurerm_notification_hub_namespace

Manages a Notification Hub Namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/notification_hub_namespace"   
}

inputs = {
   name = "name of notification_hub_namespace"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   namespace_type = "namespace_type of notification_hub_namespace"   
   sku_name = "sku_name of notification_hub_namespace"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created. | 
| **namespace_type** | string |  `Messaging`, `NotificationHub`  |  The Type of Namespace - possible values are `Messaging` or `NotificationHub`. | 
| **sku_name** | string |  `Free`, `Basic`, `Standard`  |  The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Is this Notification Hub Namespace enabled? Defaults to `true`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Notification Hub Namespace. | 
| **servicebus_endpoint** | string | No  | The ServiceBus Endpoint for this Notification Hub Namespace. | 

Additionally, all variables are provided as outputs.
