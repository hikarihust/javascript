<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XPATH tutorial</title>
            </head>
            <body>
                <h1>Node in XPath</h1>
                <div>
                    <!-- <xsl:value-of select="/" /><br /> -->
                    <!-- <xsl:value-of select="book_shop" /><br /> -->
                    <!-- <xsl:value-of select="book_shop/book/title" /><br /> -->
                    <!-- <xsl:value-of select="//price" /><br />
                    <xsl:value-of select="/book_shop/book/price" /><br /> -->
                    <!-- <xsl:value-of select="." /><br /> -->
                    <!-- <xsl:for-each select="book_shop/book"> -->
                        <!-- <xsl:value-of select="title" /><br /> -->
                        <!-- <xsl:value-of select="." /><br /> -->
                    <!-- </xsl:for-each> -->
                    <!-- <xsl:for-each select="book_shop/book/shipping"> -->
                        <!-- <xsl:value-of select="." /><br /> -->
                        <!-- <xsl:value-of select=".." /><br /> -->
                    <!-- </xsl:for-each> -->

                    <!-- <xsl:for-each select="book_shop">
                        <xsl:value-of select="book/@id" /><br />
                    </xsl:for-each> -->

                    <xsl:for-each select="book_shop/book/@id">
                        <xsl:value-of select="." /><br />
                    </xsl:for-each>
                </div>
                <div>
                    <div>=======================================================</div>
                    nodename  : Lấy tất cả các node có tên là "nodename" <br />
                    /         : Lựa chọn từ phần tử gốc của tập tin XML <br />
                    //nodename: Truy cập vào node có tên nodename ở vị trí bất kỳ
                    .         : Lấy toàn bộ giá trị node hiện thời
                    ..        : Lấy toàn bộ giá trị của node cha
                    @         : Lấy giá trị của thuộc tính
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>