# azurerm_active_directory_domain_service_replica_set



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "active_directory_domain_services/active_directory_domain_service_replica_set"   
}
inputs = {
   # domain_service_id → set in component_inputs
   location = "${location}"   
   # subnet_id → set in component_inputs
}
component_inputs = {
   domain_service_id = "path/to/active_directory_domain_service_component:id"   
   subnet_id = "path/to/subnet_component:id"   
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
| **domain_service_id** | string |  The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where this Replica Set should exist. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **subnet_id** | string | No  | The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Domain Service Replica Set. | 
| **domain_controller_ip_addresses** | list | No  | A list of subnet IP addresses for the domain controllers in this Replica Set, typically two. | 
| **external_access_ip_address** | string | No  | The publicly routable IP address for the domain controllers in this Replica Set. | 
| **service_status** | string | No  | The current service status for the replica set. | 

Additionally, all variables are provided as outputs.
