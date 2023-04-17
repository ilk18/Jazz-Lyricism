<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Song List</title>
            </head>
            <body>
                <h1>Songs</h1>
                <section>
                    <h2>Titles</h2>
                    <ul>
                        <xsl:apply-templates select="$all-songs" mode="toc"/>
                    </ul>
                </section>
                <hr/>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <!--toc mode-->
    <xsl:template match="$song" mode="toc">
        <li>
            <xsl:apply-templates select="@number"/>
            <xsl:text>. </xsl:text>
            <xsl:apply-templates select="line[1]" mode="toc"/>
        </li>
    </xsl:template>
    <!--reading view-->
    <xsl:template match="$all-songs">
        <section>
            <h2>
                <xsl:apply-templates select="@number"/>
            </h2>
            <p>
                <xsl:apply-templates/>
            </p>
        </section>
    </xsl:template>
    <xsl:template match="line">
        <xsl:apply-templates/>
        <xsl:if test="following-sibling::line">
            <br/>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
