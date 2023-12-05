# azurerm_eventhub_namespace_schema_group



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/eventhub_namespace_schema_group"   
}

inputs = {
   name = "Specifies the name of this schema group"   
   namespace_id = "Specifies the ID of the EventHub Namespace"   
   schema_compatibility = "Specifies the compatibility of this schema group"   
   schema_type = "Specifies the Type of this schema group"   
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
| **name** | string |  -  |  Specifies the name of this schema group. Changing this forces a new resource to be created. | 
| **namespace_id** | string |  -  |  Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **schema_compatibility** | string |  `None`, `Backward`, `Forward`  |  Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created. | 
| **schema_type** | string |  `Avro`, `Unknown`  |  Specifies the Type of this schema group. Possible values are `Avro`, `Unknown`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventHub Namespace Schema Group. | 

Additionally, all variables are provided as outputs.
