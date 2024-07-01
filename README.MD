# Prova de Conceito (PoC) usando Terraform e Kubernetes na Google Cloud Platform (GCP)

Este repositório contém um exemplo de como configurar uma infraestrutura básica na GCP utilizando Terraform para provisionamento e Kubernetes para orquestração de contêineres.

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes itens configurados:

- Credenciais de serviço com permissões adequadas para criar recursos na GCP
- Terraform instalado localmente

## Estrutura do Projeto

O projeto está organizado da seguinte forma:

```
terraform-poc/
├── modules/
│   ├── gke/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── ...
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── ...
│   └── iam/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── ...
├── envs/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── terraform.tfvars
│   ├── stg/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── terraform.tfvars
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── terraform.tfvars
├── .terraform/
│   └── ...
├── .gitignore
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Configuração e Uso


   Configure as Credenciais:

Coloque seu arquivo de credenciais do serviço Google Cloud (credentials.json) na pasta apropriada ou configure as credenciais conforme necessário.

Inicialize o Terraform:

Execute o comando abaixo para inicializar o diretório do Terraform:

```
terraform init
```
Planeje e Aplique as Configurações:

Use o Terraform para planejar e aplicar as configurações conforme sua necessidade:

```
terraform plan -var-file=envs/stg/terraform.tfvars
```
Substitua **dev** por **stg** ou **prod** conforme necessário para outros ambientes.

