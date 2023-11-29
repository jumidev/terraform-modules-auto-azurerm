# azurerm_eventhub_namespace_schema_group



## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of this schema group. Changing this forces a new resource to be created. | 
| **var.namespace_id** | string | True | -  |  Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **var.schema_compatibility** | string | True | `None`, `Backward`, `Forward`  |  Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created. | 
| **var.schema_type** | string | True | `Avro`, `Unknown`  |  Specifies the Type of this schema group. Possible values are `Avro`, `Unknown`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **namespace_id** | string  | - | 
| **schema_compatibility** | string  | - | 
| **schema_type** | string  | - | 
| **id** | string  | The ID of the EventHub Namespace Schema Group. | 