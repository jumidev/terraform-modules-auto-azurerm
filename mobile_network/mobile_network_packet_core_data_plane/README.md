# azurerm_mobile_network_packet_core_data_plane

Manages a Mobile Network Packet Core Data Plane.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Mobile Network Packet Core Data Plane. Changing this forces a new Mobile Network Packet Core Data Plane to be created. | 
| **mobile_network_packet_core_control_plane_id** | string | True | -  |  -  | Specifies the ID of the Mobile Network Packet Core Data Plane. Changing this forces a new Mobile Network Packet Core Data Plane to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Mobile Network Packet Core Data Plane should exist. Changing this forces a new Mobile Network Packet Core Data Plane to be created. | 
| **user_plane_access_name** | string | False | -  |  -  | Specifies the logical name for thie user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **user_plane_access_ipv4_address** | string | False | -  |  -  | The IPv4 address for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **user_plane_access_ipv4_subnet** | string | False | -  |  -  | The IPv4 subnet for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **user_plane_access_ipv4_gateway** | string | False | -  |  -  | The default IPv4 gateway for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network Packet Core Data Plane. | 

