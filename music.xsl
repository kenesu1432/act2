<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Music Explorer</title>
                <style>
                    body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
                    h1 { color: #495057; text-align: center; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 10px 0; padding: 15px; border: 1px solid #dee2e6; border-radius: 8px; background-color: #f8f9fa; }
                    .songTitle { font-weight: bold; color: #212529; }
                    .artist { color: #2a9d8f; }
                    .albums { color: #e76f51; }
                    .debutYear { color: #6a4c93; }
                </style>
            </head>
            <body>
                <h1>Music Explorer</h1>
                <ul>
                    <xsl:for-each select="music/song">
                        <li>
                            <div class="songTitle"><xsl:value-of select="songTitle"/></div>
                            <div class="artist">Artist: <xsl:value-of select="artist"/></div>
                            <div class="albums">
                                Albums:
                                <ul>
                                    <xsl:for-each select="albums/album">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div class="debutYear">Debut Year: <xsl:value-of select="debutYear"/></div>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>