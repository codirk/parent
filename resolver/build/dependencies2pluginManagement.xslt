<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:pom="http://maven.apache.org/POM/4.0.0"
>

	<xsl:template match="/">

		<project xmlns="http://maven.apache.org/POM/4.0.0"
				 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
				 xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
		<modelVersion>4.0.0</modelVersion>

		<groupId><xsl:value-of select="pom:project/pom:groupId" /></groupId>
		<artifactId><xsl:value-of select="pom:project/pom:artifactId" /></artifactId>
		<version><xsl:value-of select="pom:project/pom:version" /></version>

		<packaging>pom</packaging>
		<build>
				<xsl:apply-templates  select="pom:project/pom:dependencies" />

		</build>
		</project>

	</xsl:template>

	<xsl:template match="pom:project" ><xsl:apply-templates /></xsl:template>
	<xsl:template match="pom:modelVersion" ></xsl:template>
	<xsl:template match="pom:packaging" >T</xsl:template>
	<xsl:template match="pom:name" >T</xsl:template>
	<xsl:template match="pom:description" >T</xsl:template>
	<xsl:template match="pom:properties" >T</xsl:template>
	<xsl:template match="pom:build" >T</xsl:template>
	<xsl:template match="pom:profiles" ><xsl:value-of select="." /></xsl:template>
	<xsl:template match="pom:repositories" ><xsl:value-of select="." /></xsl:template>
	<xsl:template match="pom:dependencyManagement" ><xsl:apply-templates /></xsl:template>
	<xsl:template match="pom:dependencies" >
		<pluginManagement>
			<plugins>
				<xsl:apply-templates />
			</plugins>
		</pluginManagement>
	</xsl:template>
	<xsl:template match="pom:dependency" >
		<plugin>
			<groupId><xsl:value-of select="./pom:groupId" /></groupId>
			<artifactId><xsl:value-of select="./pom:artifactId" /></artifactId>
			<version><xsl:value-of select="./pom:version" /></version>
		</plugin>
	</xsl:template>
	<xsl:template match="text()" ></xsl:template>

</xsl:stylesheet>

