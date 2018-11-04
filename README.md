[![CircleCI](https://circleci.com/gh/actiniumio/terraform-aws-ec2-europe.svg?style=svg)](https://circleci.com/gh/actiniumio/terraform-aws-ec2-europe)

# Terraform AWS Europe

## Init

> The Devops Team use this terraform plan to provision AWS with a CI/CD to test allspark.

This demonstrates the provisioning of a single compute VM(`t2.micro = 1vCPU / 1 Go `) in Amazon Web Service

```bash
$ terraform init
```

This will create the `terraform.tfstate` file

## Running it

```bash
$ terraform validate -var 'aws_access_key=$AWS_ACCESS_KEY' -var 'aws_secret_key=$AWS_SECRET_KEY' -var 'aws_region=eu-west-3'
$ terraform plan -var 'aws_access_key=$AWS_ACCESS_KEY' -var 'aws_secret_key=$AWS_SECRET_KEY' -var 'aws_region=eu-west-3'
$ terraform apply -var 'aws_access_key=$AWS_ACCESS_KEY' -var 'aws_secret_key=$AWS_SECRET_KEY' -var 'aws_region=eu-west-3'
```

## Variable

| Variable       | Value - Sample    | Description         |
| -------------- | ----------------- | ------------------- |
| aws_access_key | $GCP_PROJECT-Name | Your AWS Access Key |
| aws_secret_key | 1                 | Your AWS Secret Key |
| aws_region     | See Appendix      | AWS Zone            |


## Appendix

### Use on Free Tier

| Family            | Type      | vCPUs | Memory (GiB) | Instance Storage (GB) | EBS-Optimized Available | Network Performance | IPv6 Support |
| ----------------- | --------- | ----- | ------------ | --------------------- | ----------------------- | ------------------- | ------------ |
| General purpose   | t2.micro  | 1     | 1            | EBS only              | -                       | Low to Moderate     | Yes          |

### Use a standard account

| Family            | Type      | vCPUs | Memory (GiB) | Instance Storage (GB) | EBS-Optimized Available | Network Performance | IPv6 Support |
| ----------------- | --------- | ----- | ------------ | --------------------- | ----------------------- | ------------------- | ------------ |
| Compute optimized | c5.large  | 2     | 4            | EBS only              | Yes                     | Up to 10 Gigabit    | Yes          |
| General purpose   | t2.medium | 2     | 4            | EBS only              | -                       | Low to Moderate     | Yes          |
| General purpose   | t2.micro  | 1     | 1            | EBS only              | -                       | Low to Moderate     | Yes          |

### AWS Zone

| Zone      | Region |
| --------- | ------ |
| eu-west-3 | Paris  |

### Supported Operating System - AWS AMI

| OS       | toto |
| -------- | ---- |
| CentOS 7 |      |
| Ubuntu   |      |
