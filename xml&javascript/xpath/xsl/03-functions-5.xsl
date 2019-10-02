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
                    Tính số tiền được giảm của mỗi cuốn sách
                </div>
                <hr />
                <div>
                    <xsl:for-each select="//book">
                        <h3>
                            <xsl:value-of select="title" /> |
                        </h3>
                        <br /> Price: <xsl:value-of select="price/real" />
                        <br /> Saleoff: <xsl:value-of select="price/saleoff" />
                        <br /> Down: <xsl:value-of select="price/real - price/saleoff" />
                        <br /> % down: <xsl:value-of select="round(100 - (price/saleoff div price/real)*100)" />
                        <hr/> ==============================================
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>