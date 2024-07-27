# Descrição do Projeto Conceitual

Contém o esquema para um sistema de gerenciamento de clientes, pagamentos e entregas, desenvolvido com o objetivo de proporcionar uma estrutura clara e eficiente. A seguir, apresentamos os principais componentes e regras do esquema.

## Objetivo

Refinar o modelo apresentado em aula, acrescentando os seguintes pontos:

- **Cliente PJ e PF**: Uma conta pode ser Pessoa Jurídica (PJ) ou Pessoa Física (PF), mas não pode conter ambas as informações.
- **Pagamento**: Deve ser possível cadastrar mais de uma forma de pagamento por cliente.
- **Entrega**: A entrega deve possuir status e código de rastreio.

## Estrutura de Clientes

- **Pessoa Jurídica (PJ)**: Clientes cadastrados como empresas, contendo informações específicas como CNPJ, razão social e endereço comercial.
- **Pessoa Física (PF)**: Clientes cadastrados como indivíduos, contendo informações como CPF, nome completo e endereço residencial.
- **Regra de Exclusividade**: Uma conta de cliente pode ser apenas PJ ou PF, evitando a duplicidade de informações e garantindo a integridade dos dados.

## Estrutura de Pagamentos

- **Formas de Pagamento**: Os clientes podem cadastrar múltiplas formas de pagamento, como cartões de crédito, débito e outras modalidades.
- **Gestão de Pagamentos**: O sistema deve permitir a adição, atualização e remoção de métodos de pagamento, garantindo flexibilidade e conveniência ao cliente.

## Estrutura de Entregas

- **Status de Entrega**: Cada entrega possui um status que indica o seu progresso, como "pendente", "em trânsito" e "entregue".
- **Código de Rastreamento**: Um código único de rastreamento é gerado para cada entrega, permitindo ao cliente acompanhar o progresso e localização do pedido.

