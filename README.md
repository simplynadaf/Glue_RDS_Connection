# 🛡️🔗 Secure Data Pipelines: Connect Amazon Glue to Amazon RDS VPC 🛠️💡

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/simplynadaf/git-sync-cloudformation.svg)](https://github.com/simplynadaf/amazon_rds_terraform/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/simplynadaf/git-sync-cloudformation.svg)](https://github.com/simplynadaf/amazon_rds_terraform/issues)
[![GitHub forks](https://img.shields.io/github/forks/simplynadaf/git-sync-cloudformation.svg)](https://github.com/simplynadaf/amazon_rds_terraform/network)
[![Twitter](https://img.shields.io/twitter/url/https/github.com/simplynadaf/git-sync-cloudformation.svg?style=social)](https://twitter.com/intent/tweet?text=Check%20out%20this%20awesome%20project%20https://github.com/simplynadaf/git-sync-cloudformation)

## Project Overview

This project we will examine how to create a Virtual Private Cloud (VPC) to provide safe connectivity between Amazon RDS and Amazon Glue. We should be able to execute Extract, Transform, and Load (ETL) operations between Glue and RDS with ease, guaranteeing safe and effective data processing inside a VPC.

### Key Features:

- **Private Networking:** Ensure secure communication between Amazon Glue and Amazon RDS by setting up both services inside a Virtual Private Cloud (VPC). This allows all data transfer to occur over private subnets, isolating your traffic from the public internet and increasing data security.

- **Security Group and Subnet Control:** Configure security groups and subnets to tightly control inbound and outbound traffic between Glue and RDS. This feature allows you to restrict network access so that only Glue jobs can interact with the RDS instance, ensuring secure and efficient ETL processes.

- **Seamless ETL Operations:** Enable Amazon Glue to efficiently extract, transform, and load data from Amazon RDS by leveraging the VPC for smooth data flow. This setup ensures that your ETL operations are optimized for security and performance, allowing data to be processed within the protected boundaries of the VPC.

## Tutorial Blog:

Follow the detailed tutorial on [Dev.to](https://dev.to/aws-builders/streamlining-infrastructure-deployment-seamless-cloudformation-stack-deployment-with-git-sync-2hg5) for step-by-step instructions.

## Follow for Updates:

Stay updated with new features, improvements, and best practices by following this repository.

## Connect with the Author:

Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/sarvar04/) for discussions, questions, or collaboration opportunities.

## Getting Started

Follow these steps to start using CloudFormation Git Sync for managing your AWS CloudFormation YAML files. Detailed instructions can be found in the [documentation](docs/).

1. Clone the repository:

```bash
git clone https://github.com/simplynadaf/amazon_rds_terraform.git
cd amazon_rds_terraform

# 🛡️🔗 Secure Data Pipelines: Connecting Amazon Glue to Amazon RDS in a VPC 🛠️💡

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE) 
[![GitHub stars](https://img.shields.io/github/stars/simplynadaf/Glue_RDS_Connection.svg)](https://github.com/simplynadaf/Glue_RDS_Connection/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/simplynadaf/Glue_RDS_Connection.svg)](https://github.com/simplynadaf/Glue_RDS_Connection/issues)
[![GitHub forks](https://img.shields.io/github/forks/simplynadaf/Glue_RDS_Connection.svg)](https://github.com/simplynadaf/Glue_RDS_Connection/network)
[![Twitter](https://img.shields.io/twitter/url/https/github.com/simplynadaf/Glue_RDS_Connection.svg?style=social)](https://twitter.com/intent/tweet?text=Check%20out%20this%20awesome%20project%20https://github.com/simplynadaf/Glue_RDS_Connection)

## Project Overview

In this project, we demonstrate how to establish a secure connection between **Amazon Glue** and **Amazon RDS** within a **Virtual Private Cloud (VPC)**. This setup will allow you to perform secure Extract, Transform, and Load (ETL) operations with Amazon Glue, ensuring that all data is transferred within private subnets to increase data security.

### Key Features:

- **Private Networking:** Run Amazon Glue and Amazon RDS within a VPC to ensure all data communication happens over private subnets, protecting your ETL operations from external threats.
  
- **Custom Security Groups and Subnets:** Configure security groups and subnets to tightly control the flow of traffic between Glue and RDS. This ensures that only Glue jobs can access your RDS instance, enhancing the security and efficiency of your ETL pipelines.

- **Seamless ETL Operations:** With this VPC-based setup, Amazon Glue can efficiently extract, transform, and load data from RDS, all while remaining within the protected VPC environment. This guarantees that your data operations are secure and optimized for performance.

## Prerequisites

- Two AWS accounts (for cross-account setup) or one AWS account (for same-account setup)
- Amazon Glue, Amazon RDS, and VPC pre-configured in your AWS environment
- AWS CLI or AWS Management Console for deployment
- IAM roles with cross-account trust and appropriate permissions for both Glue and RDS

## Architecture Overview

The architecture involves setting up VPC Peering (or a Transit Gateway) between two AWS accounts or VPCs, allowing Glue to access RDS instances securely. IAM roles with cross-account trust are used to permit Glue jobs to interact with RDS resources across different AWS accounts or within the same account.

## Steps to Setup the Secure Connection

1. **Create a VPC and Subnets:**
    - Ensure both Amazon Glue and Amazon RDS are placed inside the same or peered VPC. Configure private subnets for better isolation.
  
2. **VPC Peering / Transit Gateway (for cross-account setup):**
    - If Glue and RDS are in separate AWS accounts or different VPCs, ensure VPC peering is established, or configure a Transit Gateway to route traffic securely between the VPCs.

3. **Configure Security Groups:**
    - Create and attach security groups for Glue and RDS instances that allow inbound and outbound traffic only between the two services. Restrict access to the necessary ports (e.g., 3306 for MySQL).

4. **Cross-Account IAM Role Setup (if needed):**
    - Create cross-account IAM roles with the necessary permissions. Ensure that the Glue job role has the `rds:DescribeDBInstances` and `rds:Connect` permissions and that the trust policy allows interaction between the accounts.

5. **Glue Job Configuration:**
    - Configure the Glue job with appropriate network settings, ensuring that it runs within the VPC and has the necessary permissions to connect to the RDS instance.

6. **Test the Setup:**
    - Run a test Glue job to ensure that it can successfully connect to the RDS instance and perform data extraction, transformation, and loading.

## Example CloudFormation Template

Here is a sample CloudFormation template for setting up the necessary resources:

```yaml
AWSTemplateFormatVersion: '2010-09-09'
Resources:
  MyVpc:
    Type: 'AWS::EC2::VPC'
    Properties: 
      CidrBlock: 10.0.0.0/16
      EnableDnsSupport: true
      EnableDnsHostnames: true

  MySubnet:
    Type: 'AWS::EC2::Subnet'
    Properties: 
      VpcId: !Ref MyVpc
      CidrBlock: 10.0.1.0/24
      AvailabilityZone: !Select [ 0, !GetAZs '' ]

  MyGlueSecurityGroup:
    Type: 'AWS::EC2::SecurityGroup'
    Properties:
      VpcId: !Ref MyVpc
      GroupDescription: Allow access from Glue

  MyRDSSecurityGroup:
    Type: 'AWS::EC2::SecurityGroup'
    Properties:
      VpcId: !Ref MyVpc
      GroupDescription: Allow access from RDS
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 3306
          ToPort: 3306
          SourceSecurityGroupId: !Ref MyGlueSecurityGroup
