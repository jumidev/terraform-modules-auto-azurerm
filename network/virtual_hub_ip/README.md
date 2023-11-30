# azurerm_virtual_hub_ip

Manages a Virtual Hub IP. This resource is also known as a Route Server.~> **NOTE** Virtual Hub IP only supports Standard Virtual Hub without Virtual Wan.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub_ip" 
}

inputs = {
   name = "name of virtual_hub_ip" 
   virtual_hub_id = "virtual_hub_id of virtual_hub_ip" 
   subnet_id = "subnet_id of virtual_hub_ip" 
   public_ip_address_id = "public_ip_address_id of virtual_hub_ip" 
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
| **var.name** | string  The name which should be used for this Virtual Hub IP. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string  The ID of the Virtual Hub within which this IP configuration should be created. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string  The ID of the Subnet that the IP will reside. Changing this forces a new resource to be created. | 
| **var.public_ip_address_id** | string  The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.private_ip_address** | string  -  |  -  |  The private IP address of the IP configuration. | 
| **var.private_ip_allocation_method** | string  `Dynamic`  |  `Static`, `Dynamic`  |  The private IP address allocation method. Possible values are `Static` and `Dynamic` is allowed. Defaults to `Dynamic`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub IP. | 

Additionally, all variables are provided as outputs.
