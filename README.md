<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="imgs/terraform-logo.png" alt="Bot logo"></a>
</p>

<h3 align="center">CRIAR UMA MAQUINA ATRAVES DO TERRAFORM NA AWS</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> 🤖 Arquivo para criação de servidor na aws atraves de configuração do terraform.
    <br> 
</p>

## 📝 Table of Contents

- [ABOUT](#about)
- [PLUGINS VISUAL STUDIO](#plugin)
- [LOGO](#logotf)
- [CLI](#cli)
- [REQUISITOS](#requisitos)
- [RESUMO](#resumo)

## 🧐 About <a name = "about"></a>

Criação de Instancia na AWS atraves do Terraform.
Com um unico arquivo, poucos comandos, voce cria um recurso na aws.

ATENÇÃO: É necessario configuração previa do CLI da AWS com as suas credenciais.

## 🎥 PLUGINS VISUAL STUDIO <a name = "plugin"></a>

![logotf](imgs/terraform-logo.gif)

Plugins Visual Studio

- https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform

## 💭 CLI TERRAFORM no UBUNTU <a name = "cli"></a>

- Instale o CLI no UBUNTU

  `curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -`

  ```
   sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  ```

  `sudo apt install terraform`

SE, voce quiser instalar uma versao especifica basta fazer o comando com:

      # sudo apt install terraform=0.XX.0

exemplo:

      # sudo apt install terraform=0.11.0

## 🎈 REQUISITO OBRIGATÓRIO <a name = "requisitos"></a>

Precisa estar configurado o CLI da AWS.

### No VSCODE depois de feito MAIN.TF:

```
terraform init
```

```
terraform apply
```

Instancia criada na AWS.

---

## 🎈 RESUMO DA OPERA<a name = "resumo"></a>

- 1. Baixe o projeto.
- 2. Edite o arquivo da PASTA da AWS onde estao as suas credenciais.
  - É o arquivo `main.tf` onde tem `shared_credentials_file = "/home/ultimate/.aws/credentials`
- 3. Rode o comando `terraform init`
- 4. Rode o comando `terraform apply`
- 5. Acesse a AWS e veja o recurso criado em "Instancias".

![logotf](imgs/terraform-logo.gif)
