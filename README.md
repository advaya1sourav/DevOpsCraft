<h1 align="center" id="title">AWS-VPC-Setup using Terraform</h1>

<p align="center"><img src="https://socialify.git.ci/advaya1sourav/DevOpsCraft/image?font=Jost&amp;name=1&amp;owner=1&amp;pattern=Floating%20Cogs&amp;theme=Light" alt="project-image"></p>

<p id="description">This project contains Terraform code to set up a Virtual Private Cloud (VPC) in AWS with multiple subnets a NAT gateway and an Internet gateway. It provides a basic network infrastructure designed for high availability and secure network operations.</p>

Key Components: 

  VPC: A virtual network with a specified CIDR block to host other AWS resources.

  Public Subnets: Two subnets with public IP addresses for internet-accessible resources, each in a 
  different Availability Zone.

  Private Subnets: Two subnets without public IP addresses for secure, internal-only resources, each in 
  a different Availability Zone.

  Internet Gateway: Enables internet access for resources within public subnets.

  NAT Gateway: Provides internet access for resources in private subnets without exposing them 
  directly to the public internet.

  Route Tables: Separate routing configurations for public and private subnets, with associations to 
  ensure proper routing through gateways
 

<h2>🛠️ Installation Steps:</h2>

<p>1. create a aws IAM user with administrator permissions</p>

```
Guide : https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html
```

<p>2. setup aws cli and add credentails created from step 1</p>

```
aws configure
```

<p>3. clone the repo</p>

```
git clone https://github.com/advaya1sourav/DevOpsCraft.git
```

<p>4. change variables.tf file</p>

```
"project": project name
"environment": environment  name
"vpc_cidr": VPC CIDR
"pub_sub_1_cidr": public subnet1 CIDR
"pub_sub_2_cidr": public subnet2 CIDR
"priv_sub_1_cidr": priv subnet1 CIDR
"priv_sub_2_cidr": priv subnet2 CIDR
```

<p>5. initialize terraform</p>

```
terraform init
```

<p>6. apply the configuration</p>

```
terraform apply --auto-approve
```

<p>7. sample output</p>

```
private_sub_1 = "subnet-041150e8ff8ca2be7" 
private_sub_2 = "subnet-07a9674276991c52f" 
public_sub_1 = "subnet-04dccb09bb97aba9a" 
public_sub_2 = "subnet-0ecbe2c5e8d9fa6f5" 
vpc_cidr = "172.16.0.0/16" 
vpc_id = "vpc-032137149e217f66f"
```
