<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XPATH tutorial</title>
            </head>
            <body>
                <h1>Position in XPath</h1>
                <div>
                    path/book[2]: Lấy ra thông tin của node ở vị trí số 2 <br />
                    path/book[last()]: Lấy ra thông tin của node ở vị trí cuối cùng <br />
                    path/book[last()-1]: Lấy ra thông tin của node ở vị trí kế cuối <br />
                    path/book[@id]: Lấy ra thông tin của các node có tồn tại thuộc tính id <br />
                    path/book[@id=n]: Lấy ra thông tin của các node có tồn tại thuộc tính id có giá trị bằng n<br />
                    //book/title | //book/author: Lấy ra giá trị của title và author<br />
                </div>
                <hr />
                <div>
                    <!-- <xsl:value-of select="book_shop/book[3]" /><br /> -->
                    <!-- <xsl:value-of select="book_shop/book[last()]" /><br /> -->
                    <!-- <xsl:value-of select="book_shop/book[last()-1]" /><br /> -->
                    <!-- <xsl:value-of select="book_shop/book[@id]" /><br /> -->

                    <!-- <xsl:for-each select="book_shop/book[@id]">
                        <xsl:value-of select="title" /> <br />
                    </xsl:for-each> -->

                    <!-- <xsl:value-of select="book_shop/book[@id = 22]/title" /> <br /> -->

                    <xsl:for-each select="//book/title | //book/author">
                        <xsl:value-of select="." /> <br />
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>