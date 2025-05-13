select 		sp.cor_raca,
			sp.sexo,
			sp.grupo_idade,
			sp.alfabetizacao,
			sp.populacao,
			sm."Nome_Município",
			sm."Código Município Completo"
from        {{ ref('silver_populacao') }} sp
inner join  {{ ref('stg_municipio') }} sm
on 			sm."Código Município Completo" = sp.id_municipio
where 		sm."Nome_UF" = 'Goiás'
and 		sm."Nome_Município" = 'Goiânia'