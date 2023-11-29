# azurerm_active_directory_domain_service_replica_set

Manages a Replica Set for an Active Directory Domain Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **domain_service_id** | string | True | -  |  -  | The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where this Replica Set should exist. Changing this forces a new resource to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created. | 

