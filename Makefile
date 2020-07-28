all:

download: swagger-codegen-cli.jar

swagger-codegen-cli.jar:
	wget https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.20/swagger-codegen-cli-3.0.20.jar -O swagger-codegen-cli.jar

doc:
	mkdir -p html
	java -jar swagger-codegen-cli.jar generate -i openkarotz-openapi.json -l html -o html