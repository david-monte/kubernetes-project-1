# Kubernetes - Projeto 1

Neste repositório estão contidos todos os arquivos para o desenvolvimento de um projeto para criação das imagens dos contêineres e serviços necessários para colocar uma aplicação em produção num cluster kubernetes. O serviço de nuvem utilizado foi o Google Cloud Plataform (GCP).

## Descrição de Conteúdo

1. Pasta *backend*: Contém um *dockerfile* para construção de uma imagem *docker* do *php-apache* para conexão do *frontend* a um banco de dados *mysql* que fará a persistência dos dados a partir da aplicativo;

2. Pasta *database*: Contém um *dockerfile* para construção de imagem *docker* do *mysql* incluindo uma tabela para armazenamento dos dados vindos do *frontend*;

3. *deployment.yml*: Implementa a criação do *deployment* no cluster kubernetes incluindo o *Persitent Volume Claim*, o banco de dados *mysql* e o *php*;

4. *services.yml*: Implementa a criação os serviços de *load balancer* e a conexão com o banco de dados *mysql* no cluster kubernetes;

5. *script.bat* (Windows) ou *script.sh* (Linux): *script* para implementação do projeto incluido as seguintes etapas:
    * Criação das imagens *docker*;
    * Envio das imagens *docker* para o *Docker Hub*;
    * Criação dos serviços no cluster kubernetes; e
    * Criação dos *deployments*. 
