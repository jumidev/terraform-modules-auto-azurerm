# azurerm_databox_edge_order

Manages a Databox Edge Order.!> Creation of Databox Edge Order is not supported by the Azure API - as such the `azurerm_databox_edge_order` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Databox Edge Order should exist. Changing this forces a new Databox Edge Order to be created. | 
| **device_name** | string | True | -  |  -  | The name of the Databox Edge Device this order is for. Changing this forces a new Databox Edge Order to be created. | 
| **contact** | block | True | -  |  -  | A `contact` block. | 
| **shipment_address** | block | True | -  |  -  | A `shipment_address` block. | 

