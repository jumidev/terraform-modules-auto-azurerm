# azurerm_dns_zone

Enables you to manage DNS zones within Azure DNS. These zones are hosted on Azure's name servers to which you can delegate the zone from the parent domain.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dns/dns_zone" 
}

inputs = {
   name = "name of dns_zone" 
   resource_group_name = "${resource_group}" 
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
| **var.name** | string | True | The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.soa_record** | block | False | An `soa_record` block. | 
| `soa_record` block structure: || 
|   email (string): (REQUIRED) The email contact for the SOA record. ||
|   host_name (string): The domain name of the authoritative name server for the SOA record. If not set, computed value from Azure will be used. ||
|   expire_time (string): The expire time for the SOA record. Defaults to '2419200'. ||
|   minimum_ttl (string): The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to '300'. ||
|   refresh_time (string): The refresh time for the SOA record. Defaults to '3600'. ||
|   retry_time (string): The retry time for the SOA record. Defaults to '300'. ||
|   serial_number (string): The serial number for the SOA record. Defaults to '1'. ||
|   ttl (int): The Time To Live of the SOA Record in seconds. Defaults to '3600'. ||
|   tags (map): A mapping of tags to assign to the Record Set. ||
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The DNS Zone ID. | 
| **max_number_of_record_sets** | int | No  | Maximum number of Records in the zone. Defaults to `1000`. | 
| **number_of_record_sets** | int | No  | The number of records already in the zone. | 
| **name_servers** | list | No  | A list of values that make up the NS record for the zone. | 

Additionally, all variables are provided as outputs.
