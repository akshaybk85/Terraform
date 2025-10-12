# Terraform

Authentication is the process of verifying who a user is.

Authorization is the process of what they have to do 

Example:  Bob is a user in AWS with no access to any service 

Access Credintials:- Depending on the provider, the type of access crediantials would change.

<img width="451" height="121" alt="image" src="https://github.com/user-attachments/assets/b8672777-cec3-40ba-8929-abbc242dad85" />

1.Let us create a IAM user i'm using aws CLI for user creation 
'''bash
aws iam create-user --user-name MyNewUser
'''bash

2.Give a Permision 
'''bash
aws iam attach-user-policy \
  --user-name MyNewUser  \
  --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
'''
3. To confirm if the access has been provided Please use below command 
'''bash
aws iam list-attached-user-policies --user-name MyNewUser
'''
3. Now we have to create access key, One key are generated save it [i.e Access key and secrete access key]
'''bash
aws iam create-access-key --user-name MyNewUser
'''




