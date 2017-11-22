<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei html xs"
    version="2.0">
    
    <xsl:import href="convert2HTML.xsl"/>

    <!-- Do NOT add customizations here. This stylesheet merely wraps 
         the output of convert2HTML.xsl in html and body tags, for previewing
         while editing the TEI in Oxygen. -->

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" media="all" href="https://medieval.bodleian.ox.ac.uk/assets/application-6bfca9b06bca925147856b007c4f62b7a22c690872e8d141bcc17b7b9703808c.css" />
            </head>
            <body style="padding:2em ! important;">
                <div>
                    <div class="content tei-body" id="{//TEI/@xml:id}">
                        <xsl:apply-templates select="//msDesc"/>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
