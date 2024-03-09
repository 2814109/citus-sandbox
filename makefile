push:
	git add . && git commit -m 'u' && git push origin main

init:
	docker run -d --name citus -p 5432:5432 -e POSTGRES_PASSWORD=mypass \
           citusdata/citus:12.1 && curl https://examples.citusdata.com/tutorial/companies.csv > companies.csv && curl https://examples.citusdata.com/tutorial/campaigns.csv > campaigns.csv && curl https://examples.citusdata.com/tutorial/ads.csv > ads.csv