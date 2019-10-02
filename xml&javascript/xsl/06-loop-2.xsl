<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="book_shop">
        <html>
            <head>
                <title>XSL tutorial</title>
            </head>
            <body>
                <h1>Lập trình jQuery</h1>
                <h3>Cách nhúng tập tin .xsl vào tập tin .xml</h3>
                <xsl:for-each select="book[pages = 500]">
                <xsl:sort select="weight" order="descending" data-type="number" />
                    <ul>
                        <li>Tên: <xsl:value-of select="title" /></li>
                        <li>Tác giả: <xsl:value-of select="author" /></li>
                        <li>Số trang: <xsl:value-of select="pages" /></li>
                        <li>
                            Khối lượng: <xsl:value-of select="weight" />
                                        <xsl:value-of select="weight/@units" />
                        </li>
                        <li>==============================================</li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>