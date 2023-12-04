# azurerm_data_factory_managed_private_endpoint

Manages a Data Factory Managed Private Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_managed_private_endpoint" 
}

inputs = {
   name = "name of data_factory_managed_private_endpoint" 
   # data_factory_id → set in tfstate_inputs
   # target_resource_id → set in tfstate_inputs
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id" 
   target_resource_id = "path/to/any_resource_component:id" 
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
| **name** | string |  Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **data_factory_id** | string |  The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **target_resource_id** | string |  The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **subresource_name** | string |  Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **fqdns** | string |  Fully qualified domain names. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Managed Private Endpoint. | 

Additionally, all variables are provided as outputs.
