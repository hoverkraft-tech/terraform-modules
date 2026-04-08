# Azure Firewall Policy Rule Collection Group Module

This module manages Azure Firewall Policy Rule Collection Group resources.

## Usage

```hcl
module "firewall_rules" {
  source = "./modules/azure/firewall-policy-rule-collection-group"

  name               = "rcg-spoke-to-spoke"
  customer           = "beetween"
  environment        = "connectivity"
  firewall_policy_id = module.firewall_policy.id
  priority           = 100

  network_rule_collections = [
    {
      name     = "allow-spoke-to-spoke"
      priority = 100
      action   = "Allow"
      rules = [
        {
          name                  = "allow-all-spokes"
          protocols             = ["Any"]
          source_addresses      = ["10.11.0.0/16", "10.12.0.0/16"]
          destination_addresses = ["10.11.0.0/16", "10.12.0.0/16"]
          destination_ports     = ["*"]
        }
      ]
    }
  ]
}
```

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of the Rule Collection Group | string | - |
| firewall_policy_id | ID of the Firewall Policy | string | - |
| priority | Priority of the group | number | 100 |
| network_rule_collections | List of network rule collections | list | [] |
| application_rule_collections | List of application rule collections | list | [] |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Rule Collection Group |
| name | The name of the Rule Collection Group |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.40.0, <5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.54.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_firewall_policy_rule_collection_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/firewall_policy_rule_collection_group) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_rule_collections"></a> [application\_rule\_collections](#input\_application\_rule\_collections) | List of application rule collections | <pre>list(object({<br>    name     = string<br>    priority = number<br>    action   = string<br>    rules = list(object({<br>      name              = string<br>      source_addresses  = optional(list(string))<br>      source_ip_groups  = optional(list(string))<br>      destination_fqdns = optional(list(string))<br>      protocols = list(object({<br>        type = string<br>        port = number<br>      }))<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Firewall Policy Rule Collection Group | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Firewall Policy Rule Collection Group | `string` | `""` | no |
| <a name="input_firewall_policy_id"></a> [firewall\_policy\_id](#input\_firewall\_policy\_id) | The ID of the Firewall Policy where the Rule Collection Group belongs | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Firewall Policy Rule Collection Group | `string` | n/a | yes |
| <a name="input_network_rule_collections"></a> [network\_rule\_collections](#input\_network\_rule\_collections) | List of network rule collections | <pre>list(object({<br>    name     = string<br>    priority = number<br>    action   = string<br>    rules = list(object({<br>      name                  = string<br>      protocols             = list(string)<br>      source_addresses      = optional(list(string))<br>      source_ip_groups      = optional(list(string))<br>      destination_addresses = optional(list(string))<br>      destination_ip_groups = optional(list(string))<br>      destination_fqdns     = optional(list(string))<br>      destination_ports     = list(string)<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_priority"></a> [priority](#input\_priority) | The priority of the Firewall Policy Rule Collection Group | `number` | `100` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Firewall Policy Rule Collection Group | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Firewall Policy Rule Collection Group |
| <a name="output_name"></a> [name](#output\_name) | The name of the created Firewall Policy Rule Collection Group |
<!-- END_TF_DOCS -->
