<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:variable name="all-songs" as="document-node()+"
        select="collection('../song_markup/?select=*.xml')"/>
    <xsl:template name="xsl:initial-template">
        <html>
            <head>
                <title>Sample output</title>
            </head>
            <body>
                <h1>Table of Contents</h1>
                <xsl:apply-templates select="$all-songs//song"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="song">
        <xsl:message select="position()"/>
        <section>
            <h2>
                <xsl:value-of select="metadata/title"/>
            </h2>
            <h2>
                <xsl:value-of select="metadata/sung-by"/>
            </h2>
            <xsl:apply-templates select="verse"/> 
        </section>
    </xsl:template>
       <xsl:template match="verse">
           <p>
           <xsl:apply-templates/>
           </p>
    </xsl:template>
    <xsl:template match="line-start">
        <br/>
    </xsl:template>
</xsl:stylesheet>
