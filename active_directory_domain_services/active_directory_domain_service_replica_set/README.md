# azurerm_active_directory_domain_service_replica_set

Manages a Replica Set for an Active Directory Domain Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.domain_service_id** | string | True | The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure location where this Replica Set should exist. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **domain_service_id** | string  | - | 
| **location** | string  | - | 
| **subnet_id** | string  | - | 
| **id** | string  | The ID of the Domain Service Replica Set. | 
| **domain_controller_ip_addresses** | list  | A list of subnet IP addresses for the domain controllers in this Replica Set, typically two. | 
| **external_access_ip_address** | string  | The publicly routable IP address for the domain controllers in this Replica Set. | 
| **service_status** | string  | The current service status for the replica set. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "active_directory_domain_services/active_directory_domain_service_replica_set" 
}

inputs = {
   domain_service_id = "domain_service_id of active_directory_domain_service_replica_set" 
   location = "${location}" 
   subnet_id = "subnet_id of active_directory_domain_service_replica_set" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```