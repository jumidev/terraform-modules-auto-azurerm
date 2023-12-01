# azurerm_eventhub_cluster

Manages an EventHub Cluster

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventhub_cluster" 
}

inputs = {
   name = "name of eventhub_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of eventhub_cluster" 
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
| **name** | string |  Specifies the name of the EventHub Cluster resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the EventHub Cluster exists. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  The SKU name of the EventHub Cluster. The only supported value at this time is `Dedicated_1`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventHub Cluster ID. | 

Additionally, all variables are provided as outputs.
