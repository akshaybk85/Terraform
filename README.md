# Terraform

Authentication is the process of verifying who a user is.

Authorization is the process of what they have to do 

Example:  Bob is a user in AWS with no access to any service 

Access Credintials:- Depending on the provider, the type of access crediantials would change.

<img width="451" height="121" alt="image" src="https://github.com/user-attachments/assets/b8672777-cec3-40ba-8929-abbc242dad85" />

1.Let us create an IAM user (using AWS CLI): 

```bash
aws iam create-user --user-name MyNewUser
```

2.Attach the AdministratorAccess policy to the new user:

```bash
aws iam attach-user-policy \
  --user-name MyNewUser  \
  --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
```

3. To confirm if the access has been provided Please use below command
 
 ```bash
aws iam list-attached-user-policies --user-name MyNewUser
```

4.Generate access keys for the user (save the Access Key and Secret Access Key): 

 ```bash
aws iam create-access-key --user-name MyNewUser
```
Make sure to install AWS CLI and VS Code as per your machine type.

once installed open terminal and configure aws credentials

```bash

PS C:\Users\admin> aws --version  # check the current version 
aws-cli/2.31.7 Python/3.13.7 Windows/11 exe/AMD64
PS C:\Users\admin> aws configure
AWS Access Key ID [****************SUNF]:  your AWS Access Key ID
AWS Secret Access Key [****************Ps4+]:Your AWS Secret Access Key
Default region name [ap-south-1]: "Your default region"
Default output format [json]: json
```
This creates two files:
~/.aws/credentials → stores keys
~/.aws/config → stores region & settings


Why we don’t put keys directly in Terraform code?

Security risk  — If we commit .tf files with keys to GitHub, anyone can use them.

Using environment variables or the ~/.aws/credentials file keeps keys outside your Terraform repo.

It also lets you easily switch between multiple AWS accounts/profiles without changing code.

