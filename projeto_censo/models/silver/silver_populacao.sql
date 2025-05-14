select
			sp.id_municipio,
			sp.cor_raca,
			sp.sexo,
			sp.grupo_idade,
			sp.alfabetizacao,
			cast(sp.populacao as int) populacao
from 		{{ ref('stg_populacao') }}  sp
where 		sp.populacao <> ''
order by 	populacao desc