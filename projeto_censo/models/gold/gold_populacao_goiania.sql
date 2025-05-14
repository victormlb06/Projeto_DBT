select 		sp.cor_raca,
			sp.sexo,
			sp.grupo_idade,
			sp.alfabetizacao,
			sp.populacao,
			sm.nm_municipio,
			sm.cod_municipio_completo
from        {{ ref('silver_populacao') }} sp
inner join  {{ ref('stg_municipio') }} sm
on 			sm.cod_municipio_completo = sp.id_municipio
where 		sm.nome_uf = 'Goiás'
and 		sm.nm_municipio = 'Goiânia'