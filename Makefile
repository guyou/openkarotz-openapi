all:

download: swagger-codegen-cli.jar

swagger-codegen-cli.jar:
	wget https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.20/swagger-codegen-cli-3.0.20.jar -O swagger-codegen-cli.jar

doc: openkarotz-openapi.json
	mkdir -p html
	java -jar swagger-codegen-cli.jar generate -i openkarotz-openapi.json -l html -o html

python: openkarotz-openapi.json
	mkdir -p python
	java -jar swagger-codegen-cli.jar generate -i openkarotz-openapi.json -l python -o python -c config-python.json

clean:
	rm -rf doc python
