# azurerm_data_factory_managed_private_endpoint

Manages a Data Factory Managed Private Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_managed_private_endpoint" 
}

inputs = {
   name = "name of data_factory_managed_private_endpoint" 
   data_factory_id = "data_factory_id of data_factory_managed_private_endpoint" 
   target_resource_id = "target_resource_id of data_factory_managed_private_endpoint" 
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
| **var.name** | string | True | Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.data_factory_id** | string | True | The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | False | Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **var.fqdns** | string | False | Fully qualified domain names. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Managed Private Endpoint. | 

Additionally, all variables are provided as outputs.
