# healthpayments

Aplicativo voltado a gestão de serviços de saude oferecidos por uma rede credenciada de estabelecimentos de saúde (prestadores) 
aos clientes cadastrados (usuários do aplicativo), visando a realização de eventos assistenciais com diferenciados pagamentos eletrônicos pelo aplicativo.

O aplicativo é conectado através de API REST com um backend/orquestrador com uma arquitetura orientada a serviços, onde são
realizads consultas dos dados cadastrais da rede credenciada (prestadores), suas unidades de atendimento, corpo clínico,
eventos assistencias de saúde disponíveis (consultas médicas/exames), incluindo preços e horários de atendimento.

O usuário através do aplicativo poderá consultar a rede credenciada, agendar um procedimento médico e efetivar o pagamento
ao prestador de serviço credenciado.

## Getting Started

As principais funções implementadas são:

1 - Onboarding digital de clientes e dependentes, com acompanhamento das negociações, emissão de contratos e termo de adesão para pessoas físicas e jurídicas.

2 - Consulta a rede credenciada de saúde composta por estabelecimentos ou profissionais de saúde credenciados para agendamento de eventos assistenciais de saúde disponíveis (consultas médicas, SADT, medicamentos, odontologia, medicina alternativa e cirurgias) com tabela de preços praticados e agenda de atendimento. oferecidos pela rede credenciada.

3 - Conta Digital  (wallet) para recebimentos de mensalidades e pagamentos de eventos assistenciais de saúde com boletos, cartão de crédito e PIX. incluindo transferências dos pagamentos para a rede credenciada.

