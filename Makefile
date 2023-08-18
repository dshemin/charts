packages = pgadmin \
	wikijs

release:
	helm package ${packages}
	helm repo index --url https://dshemin.github.io/charts/ .