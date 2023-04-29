<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:variable name="all-songs" as="document-node()+"
        select="collection('.?select=*.xml')"/>
    <xsl:template name="xsl:initial-template">
        <html>
            <head>
                <title>Explore the Songs</title>
                <link rel="stylesheet" type="text/css" href="ExploretheSongs.css" />
            </head>
            <body>
                <ul class="navigation">
                    <li><a href="index.xhtml">Home</a></li>
                    <li><a href="MeettheSingers.xhtml">Meet the Singers</a></li>
                    <li><a href="Methodology.xhtml">Our Methodology</a></li>
                    <li><a href="song-markup.xhtml">Explore the Songs</a></li>
                    <li><a href="TheData.xhtml">Our Findings</a></li>
                </ul>
                <xsl:apply-templates select="$all-songs"/>
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
    <xsl:template match="action">
        <span style="color: blue;"><xsl:value-of select="."/></span>
    </xsl:template>
    
    <xsl:template match="description">
        <span style="color: green;"><xsl:value-of select="."/></span>
    </xsl:template>
    
    <xsl:template match="cause">
        <span style="color: red;"><xsl:value-of select="."/></span>
    </xsl:template>
    
    <xsl:template match="mental-health">
        <span style="color: orange;"><xsl:value-of select="."/></span>
    </xsl:template>
    
    <xsl:template match="relationship">
        <span style="color: purple;"><xsl:value-of select="."/></span>
    </xsl:template>
    
    <xsl:template match="money">
        <span style="color: brown;"><xsl:value-of select="."/></span>
    </xsl:template>
</xsl:stylesheet>