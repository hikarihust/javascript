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
                    
                </div>
                <hr />
                <div>
                    <br /> Số cuốn sách: <xsl:value-of select="count(book_shop/book)" />
                    <br /> Tổng số tiền: <xsl:value-of select="sum(book_shop/book/price/saleoff)" />
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>