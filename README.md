# Terraform templates

## Getting started

### Install Terraform via Homebrew

Install the HashiCorp tap

```
$ brew tap hashicorp/tap
```

Now, install Terraform

```
$ brew install hashicorp/tap/terraform
```

To update to the latest version of Terraform, first update Homebrew.

```
$ brew update
```

Then, run the upgrade command to download and use the latest Terraform version.

```
$ brew upgrade hashicorp/tap/terraform
```

### Enable tab completion

```
$ terraform -install-autocomplete
```

## The enviroments

The template are configured with three different enviroments:

-   `development.tf` - This file represent the current development enviroment of our infrastructure

-   `staging.tf` - This file represent the current stating enviroment of our infrastruture

-   `production.tf` - This file represent the current production enviroment of our infrastructure

## Using the modules
