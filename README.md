# az-windows
Create a Windows Virtual Machine on Azure

# Description

# Usage

```hcl
module "windows-vm" {
  source                  = "git:https://github.com/bnguyenvan/az-windows.git"
  vm-name                 = "windows-vm1"
  username                = "Administrator"
  password                = "P@ssword"
  resource_group_name     = "Name_Of_Resource_Group"
  resource_group_location = "Location_Of_Resource_Group"
  subnet_id               = "Subnet_ID"
  public_ip_enable        = false
}
```
Change neccesarily fields to adapt your config:
* vm-name
* username
* password
* resource_group_name
* resource_group_location
* subnet_id
* public_ip_enable

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.98.0. < 4.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >=3.6.0, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.98.0. < 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.windows_server_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_public_ip.windows_server_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_windows_virtual_machine.windows_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | Size of the VM | `string` | `"Standard_DS1_v2"` | no |
| <a name="input_password"></a> [password](#input\_password) | Password for windows machine | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Resource Group Name | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | username for windows machine | `string` | n/a | yes |
| <a name="input_vm-name"></a> [vm-name](#input\_vm-name) | Name of the VM | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_interface_id"></a> [interface\_id](#output\_interface\_id) | n/a |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | n/a |
| <a name="output_vm_public_ip"></a> [vm\_public\_ip](#output\_vm\_public\_ip) | n/a |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->
