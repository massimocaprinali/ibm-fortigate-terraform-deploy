# ibm-fortigate-terraform-deploy

FortiGate IBM Deployment Templates - Currently in Development

## Description

A Terraform script to deploy a single FortiGate in IBM Cloud

## Requirements

-   [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html) 0.13+
-   An [IBM Gen 2 API key](https://cloud.ibm.com/docs/terraform?topic=terraform-provider-reference)
-   FortiOS 6.2.3 //TODO: check version

## Deployment overview

Terraform deploys the following components:

-   A VPC with two subnets
-   A FortiGate BYOL instance with two NICs, one in each subnet
-   A security group with no restrictions

## Deployment

//TODO: once map is introduced deployment will change to also have the fortigate version step.

> **Note:** By default the script expects an ssh key at ~/.ssh/id_rsa.pub
> To deploy the FortiDemo Inspector:

1. Clone the repository.
2. Change to the cloned directory and initialize the providers and modules:

    ```sh
    $ cd fortidemo-inspector
    $ terraform init
    ```

3. Submit the Terraform plan using the command below. Replace the variables with your own AccessKey and Secret Key.

    ```sh
    $ terraform plan -var "ibmcloud_api_key=<secret_key>"
    ```

4. Verify output.
5. Confirm and apply the plan:

    ```sh
    $ terraform apply -var "ibmcloud_api_key=<secret_key>"
    ```

6. If output is satisfactory, type `yes`.

## Destroy the cluster

To destroy the cluster, use the command:

```sh
$ terraform destroy -var "ibmcloud_api_key=<secret_key>"
```

## Additional information

// TODO:

# Support

Fortinet-provided scripts in this and other GitHub projects do not fall under the regular Fortinet technical support scope and are not supported by FortiCare Support Services.
For direct issues, please refer to the [Issues](https://github.com/fortinet/ibm-fortigate-terraform-deploy/issues) tab of this GitHub project.
For other questions related to this project, contact [github@fortinet.com](mailto:github@fortinet.com).

## License

[License](https://github.com/fortinet/ibm-fortigate-terraform-deploy/blob/main/LICENSE) © Fortinet Technologies. All rights reserved.
