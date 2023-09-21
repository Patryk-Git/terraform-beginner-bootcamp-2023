# Terraform Beginner Bootcamp 2023

## Semntic Versioning

[semver.org](https://semver.org/)

The general format:
 **MAJOR.MINOR.PATCH**, eg. '1.0.1'

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes


## Install the Terraform CLI

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)


[AWS CLI ENV VARS](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

We can check if AWS credentials are configure correctly by running:
'''sh
aws sts get-caller-identity
'''

If it sucesfull you should get json that looks like this"

{
    "UserId": "AIDA3446VZ1234525",
    "Account": "12345678",
    "Arn": "arn:aws:iam::12345678:user/terraform-bootcamp"
}