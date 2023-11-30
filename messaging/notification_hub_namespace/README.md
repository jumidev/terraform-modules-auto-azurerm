# azurerm_notification_hub_namespace

Manages a Notification Hub Namespace.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created. | 
| **var.namespace_type** | string | True | -  |  `Messaging`, `NotificationHub`  |  The Type of Namespace - possible values are `Messaging` or `NotificationHub`. | 
| **var.sku_name** | string | True | -  |  `Free`, `Basic`, `Standard`  |  The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is this Notification Hub Namespace enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Notification Hub Namespace. | 
| **servicebus_endpoint** | string | No  | The ServiceBus Endpoint for this Notification Hub Namespace. | 

Additionally, all variables are provided as outputs.
