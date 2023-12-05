# azurerm_data_factory_pipeline

Manages a Pipeline inside a Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_pipeline"   
}

inputs = {
   name = "Specifies the name of the Data Factory Pipeline"   
   # data_factory_id → set in tfstate_inputs
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id"   
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
| **name** | string |  Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description for the Data Factory Pipeline. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Pipeline. | 
| **concurrency** | int |  The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`. | 
| **folder** | string |  The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level. | 
| **moniter_metrics_after_duration** | string |  The TimeSpan value after which an Azure Monitoring Metric is fired. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Pipeline. | 
| **variables** | string |  A map of variables to associate with the Data Factory Pipeline. | 
| **activities_json** | string |  A JSON object that contains the activities that will be associated with the Data Factory Pipeline. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Pipeline. | 

Additionally, all variables are provided as outputs.
