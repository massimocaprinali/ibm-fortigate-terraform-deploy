# ibm-fortigate-terraform-deploy

FortiGate IBM Deployment Templates - Currently in Development

## Description

A Terraform script to deploy a single FortiGate in IBM Cloud

## Requirements

-   [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html) 0.13+
-   An [IBM Gen 2 API key](https://cloud.ibm.com/docs/terraform?topic=terraform-provider-reference)
-   FortiOS 6.4.3 BYOL License.

## Deployment overview

Terraform deploys the following components:

-   A VPC with two subnets
-   A FortiGate BYOL instance with two NICs, one in each subnet
-   A security group with no restrictions
-   A Floating Public IP address attached to the FortiGate
-   A Logging disk
-   A basic bootstrap, including license if supplied.

## Deployment

1. From the IBM console navitagte to schematics.
2. Fill in the workspace info and create your workspace.
3. Copy the repo URL into repository URL field and then select Terraform version 0.13.
4. Add in your ssh key and adjust any Variables as needed in the settings.
5. Apply the plan.
6. Outputs, such as the Public IP and Default username and password can be found under the `View Log` link.

## Destroy the cluster

To destroy the cluster, click on `Actions`...->`Destroy`

# Support

Fortinet-provided scripts in this and other GitHub projects do not fall under the regular Fortinet technical support scope and are not supported by FortiCare Support Services.
For direct issues, please refer to the [Issues](https://github.com/fortinet/ibm-fortigate-terraform-deploy/issues) tab of this GitHub project.
For other questions related to this project, contact [github@fortinet.com](mailto:github@fortinet.com).

## License

[License](https://github.com/fortinet/ibm-fortigate-terraform-deploy/blob/main/LICENSE) © Fortinet Technologies. All rights reserved.
