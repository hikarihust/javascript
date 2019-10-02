<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XSL tutorial</title>
            </head>
            <body>
                <h1>Lập trình jQuery</h1>
                <h3>Cách nhúng tập tin .xsl vào tập tin .xml</h3>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <ul>
            <xsl:apply-templates select="title"/>  
            <xsl:apply-templates select="author"/>
            <li>==============================================</li>  
        </ul>
    </xsl:template>
    <xsl:template match="title">
        <li>Tên: <xsl:value-of select="." /></li>
    </xsl:template>
    <xsl:template match="author">
        <li>Tên: <xsl:value-of select="." /></li>
    </xsl:template>
</xsl:stylesheet>