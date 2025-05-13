select
			bic.id_municipio,
			bic.cor_raca,
			bic.sexo,
			bic.grupo_idade,
			bic.alfabetizacao,
			cast(bic.populacao as int) populacao
from 		br_ibge_censo bic
where 		bic.populacao <> ''
order by 	populacao desc