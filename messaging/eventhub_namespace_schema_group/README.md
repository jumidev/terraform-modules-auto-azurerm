# azurerm_eventhub_namespace_schema_group



## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of this schema group. Changing this forces a new resource to be created. | 
| **namespace_id** | string | True | -  |  -  | Specifies the ID of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **schema_compatibility** | string | True | -  |  `None`, `Backward`, `Forward`  | Specifies the compatibility of this schema group. Possible values are `None`, `Backward`, `Forward`. Changing this forces a new resource to be created. | 
| **schema_type** | string | True | -  |  `Avro`, `Unknown`  | Specifies the Type of this schema group. Possible values are `Avro`, `Unknown`. Changing this forces a new resource to be created. | 

