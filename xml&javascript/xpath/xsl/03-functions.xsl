<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XPATH tutorial</title>
            </head>
            <body>
                <h1>Function in XPath</h1>
                <div>
                <!-- > < = != --> Biểu thức so sánh
                </div>
                <hr />
                <div>
                    <!-- <xsl:for-each select="//book[price/real &gt; 50]">
                        <xsl:value-of select="title" /> <br />
                    </xsl:for-each> -->

                    <!-- <xsl:for-each select="//book[price/real &lt; 60]">
                        <xsl:value-of select="title" /> <br />
                    </xsl:for-each> -->

                    <!-- <xsl:for-each select="//book[price/real = price/saleoff]">
                        <xsl:value-of select="title" /> <br />
                    </xsl:for-each> -->

                    <xsl:for-each select="//book[price/real &gt; price/saleoff]">
                        <xsl:value-of select="title" /> <br />
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>