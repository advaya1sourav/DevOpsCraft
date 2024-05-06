<h1 align="center" id="title">AWS-VPC-Setup using Terraform</h1>

<p align="center"><img src="https://socialify.git.ci/advaya1sourav/DevOpsCraft/image?font=Jost&amp;name=1&amp;owner=1&amp;pattern=Floating%20Cogs&amp;theme=Light" alt="project-image"></p>

<p id="description">This project contains Terraform code to set up a Virtual Private Cloud (VPC) in AWS with multiple subnets a NAT gateway and an Internet gateway. It provides a basic network infrastructure designed for high availability and secure network operations.</p>

  
  
<h2>🧐 Features</h2>

Here're some of the project's best features:

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
project
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
private_sub_1 = "subnet-041150e8ff8ca2be7" private_sub_2 = "subnet-07a9674276991c52f" public_sub_1 = "subnet-04dccb09bb97aba9a" public_sub_2 = "subnet-0ecbe2c5e8d9fa6f5" vpc_cidr = "172.16.0.0/16" vpc_id = "vpc-032137149e217f66f"
```
