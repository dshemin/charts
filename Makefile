release:
	helm package `ls -d */`
	helm repo index --url https://dshemin.github.io/charts/ .