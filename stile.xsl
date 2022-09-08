<?xml version="1.0" encoding="UTF-8" ?><!-- Intestazione xml -->

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tei="http://www.tei-c.org/ns/1.0"
                xmlns="http://www.w3.org/1999/xhtml"> <!-- Elemento radice-->

<xsl:strip-space elements="country" />
<xsl:strip-space elements="ab" /> <!-- Gestione degli spazi bianchi-->
    
<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> <!-- Istruzioni di elaborazione-->

<xsl:key name="glossario" match="tei:label//tei:term[@xml:lang='it']" use="@ref" />
    
    <xsl:template match="/"> <!-- Template rules -->
        <html>
            <head>
                 <title>Trois premières conférences à l'Universitè</title>
                 <script src="Codifica_di_Testi.js"></script>
                 <link href="stile.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <nav class="navMenu">
                        <ul> 
                            <li><a href="#car">Caratteristiche generali</a></li>
                            <li><a href="#p17">Pagina 17</a></li>
                            <li><a href="#p18">Pagina 18</a></li>
                            <li><a href="#bibl">Bibliografia</a></li>
                        </ul>
                    </nav>
                </header>

                <div id="intro">
                    <div>
                        <h1><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='fr']" /></h1>
                        <h2><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title/following-sibling::tei:title[1]"/></h2>
                        <h3>di <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author" /></h3>
                    </div>
                </div>


                <div id="car">
                    <h3>Caratteristiche generali:</h3>
                         <div>
                            <xsl:apply-templates select="//tei:msContents" />
                        </div>
                    <h3>Caratteristiche fisiche:</h3>
                        <div>
                            <xsl:apply-templates select="//tei:physDesc" />
                        </div>
                    <h3>Cenni storici:</h3>
                         <div>
                            <xsl:apply-templates select="//tei:history" />
                        </div> 
                    <h3>Note editoriali:</h3>
                        <div>
                            <xsl:apply-templates select="//tei:editorialDecl" />
                        </div>                    
                </div>

                <div id="legenda">
                    <h3>Legenda:</h3>
                    <ul>
                        <li style="background-color:yellow">Elementi Terminologici</li>
                        <li style="background-color:#79d279">Glottonimi</li>
                        <li style="background-color:#b3e6ff">Esempi linguistici</li>
                        <li style="background-color:#bb99ff">Toponimi</li>
                        <li style="background-color:#ffcccc">Abbreviazioni</li>
                        <li style="background-color:#b3e6cc">(Estensioni)</li>
                        <li style="background-color:#d2a679">Aggiunte</li>
                        <li style="background-color:#c2c2a3">Note</li>
                        <li style="text-decoration-style:  wavy; text-decoration-line:  underline">Unclear</li>
                        <li>Gap: (?)</li>
                    </ul>
                </div>

                <div id="p17">
                    <h2>Pagina 17</h2>
                    <button type="button" id="retropag17" onclick="show()"> Mostra retro </button>
                        <div>
                            <div class="img">
                                <xsl:element name="span">
                                    <xsl:attribute name="id">img17</xsl:attribute>
                                    <xsl:apply-templates select="//tei:surface[@xml:id='prol3_pag17']" />
                                    <xsl:element name="map">
                                        <xsl:attribute name="name">wm_prol3_pag17</xsl:attribute>
                                        <xsl:apply-templates select="//tei:surface[@xml:id='prol3_pag17']//tei:zone" />
                                    </xsl:element>
                                </xsl:element>
                                <xsl:element name="span">
                                    <xsl:attribute name="id">img17r</xsl:attribute>
                                    <xsl:apply-templates select="//tei:surface[@xml:id='pag17_retro']" />
                                     <xsl:element name="map">
                                        <xsl:attribute name="name">wm_pag17_retro</xsl:attribute>
                                        <xsl:apply-templates select="//tei:surface[@xml:id='pag17_retro']//tei:zone" />
                                    </xsl:element>
                                </xsl:element>
                            </div>

                            <div id="testopag17">
                                <h3>Testo:</h3>
                                <xsl:apply-templates select="//tei:body/tei:div[@n ='17']//tei:ab" />
                            </div>
                            
                            <div id="traduzionepag17">
                                <h3>Traduzione:</h3>
                                <xsl:apply-templates select="//tei:div[@type='traduzione_pag_17']//tei:ab" />
                            </div>
                        </div>
                </div>

                <div id="p18">
                    <h2>Pagina 18</h2>
                    <button type="button" id="retropag18" onclick="show2()"> Mostra retro </button>
                        <div>
                            <div class="img">
                                <xsl:element name="span">
                                    <xsl:attribute name="id">img18</xsl:attribute>
                                    <xsl:apply-templates select="//tei:surface[@xml:id='prol3_pag18']" />
                                    <xsl:element name="map">
                                        <xsl:attribute name="name">wm_prol3_pag18</xsl:attribute>
                                        <xsl:apply-templates select="//tei:surface[@xml:id='prol3_pag18']//tei:zone" />
                                    </xsl:element>
                                </xsl:element>
                                <xsl:element name="span">
                                    <xsl:attribute name="id">img18r</xsl:attribute>
                                    <xsl:apply-templates select="//tei:surface[@xml:id='pag18_retro']" />
                                     <xsl:element name="map">
                                        <xsl:attribute name="name">wm_pag18_retro</xsl:attribute>
                                        <xsl:apply-templates select="//tei:surface[@xml:id='pag18_retro']//tei:zone" />
                                    </xsl:element>
                                </xsl:element>
                            </div>

                            <div id="testopag18">
                                <h3>Testo:</h3>
                                <xsl:apply-templates select="//tei:body/tei:div[@n ='18']//tei:ab" />
                            </div>
                            
                            <div id="traduzionepag18">
                                <h3>Traduzione:</h3>
                                <xsl:apply-templates select="//tei:div[@type='traduzione_pag_18']//tei:ab" />
                            </div>
                        </div>
                </div>

                <div id="bibl">
                    <h2>Bibliografia:</h2>
                    <div class="bibl">
                        <xsl:apply-templates select="//tei:listBibl" />
                    </div>
                </div>

                <div id="ref">
                    <h2>Riferimenti:</h2>
                    <div class="ref">
                        <xsl:apply-templates select="//tei:editionStmt" />
                    </div>
                </div>

            </body>
        </html>
    </xsl:template>

    <!-- Stile caratteristiche -->
    <xsl:template match="tei:msContents">
        <ul>
            <li><b>Titolo: </b><xsl:value-of select="//tei:msItem/tei:title" /></li>
            <li><b>Autore: </b><xsl:apply-templates select="//tei:msItem/tei:author" /></li>
            <li><b>Lingua: </b><xsl:value-of select="//tei:langUsage/tei:language[@ident='fr']" /></li>
            <li><b>Data: </b><xsl:value-of select="//tei:time" /></li>
            <li><b>Opera conservata presso: </b><xsl:value-of select="//tei:sourceDesc//tei:repository" />, <xsl:value-of select="//tei:sourceDesc//tei:country" /></li>
            <li><b>Accesso: </b><xsl:value-of select="//tei:publicationStmt//tei:availability" /></li>  
        </ul>
    </xsl:template>

    <!-- Stile caratteristiche fisiche -->
    <xsl:template match="tei:physDesc">
        <ul>
            <li><b>Materiale: </b><xsl:value-of select="//tei:support" /></li>
            <li><b>Pagine: </b><xsl:value-of select="//tei:extent" /></li>
            <li><b>Condizioni: </b><xsl:value-of select="//tei:condition"/></li>
            <li><b>Layout: </b><xsl:value-of select="//tei:layout" /></li>
            <li><b>Mani: </b><xsl:value-of select="//tei:handDesc" /></li>
            <li><b>Elementi decorativi: </b><xsl:value-of select="//tei:decoDesc" /></li>
        </ul>
    </xsl:template>

    <!-- Stile cenni storici -->
    <xsl:template match="tei:history">
        <ul>
            <li><b>In breve: </b><xsl:value-of select="//tei:summary" /></li>
            <li><b>Origini: </b><xsl:value-of select="//tei:origin" /></li>
            <li><b>Acquisizione: </b><xsl:value-of select="//tei:acquisition" /></li>
        </ul>
    </xsl:template>

    <!-- Stile note editoriali -->
    <xsl:template match="tei:editorialDecl">
        <ul>
            <li><b>Punteggiatura: </b><xsl:value-of select="//tei:punctuation" /></li>
            <li><b>Segmentazione: </b><xsl:value-of select="//tei:segmentation" /></li>
            <li><b>Date: </b><xsl:value-of select="//tei:stdVals" /></li>
            <li><b>Interpretazione: </b><xsl:value-of select="//tei:interpretation" /></li>
        </ul>
    </xsl:template>

    <!-- Stile bibliografia -->
    <xsl:template match="tei:listBibl">
        <xsl:for-each select="current()/tei:bibl">
            <xsl:element name="li">
                <xsl:value-of select="current()/tei:author" />,
                "<xsl:value-of select="current()/tei:title" />", 
                <xsl:choose> <!-- Se c'è l'elemento editor lo inserisco -->
                    <xsl:when test="tei:editor">
                        edizione a cura di <xsl:value-of select="current()/tei:editor" />,
                    </xsl:when>
                </xsl:choose>
                <xsl:value-of select="current()/tei:pubPlace" />,
                <xsl:value-of select="current()/tei:publisher" />,
                <xsl:value-of select="current()/tei:date" />,
                <xsl:value-of select="current()/tei:idno" />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- Stile Riferimenti -->
    <xsl:template match="tei:editionStmt">
        <b><xsl:value-of select="current()/tei:edition"></xsl:value-of></b>
        <p><b>Progetto a cura di: </b> <i><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='SC']"></xsl:value-of></i>, <i><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='MC']"></xsl:value-of></i>  e <i><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='VP']"></xsl:value-of></i></p>
        <p><b>Coordinato da: </b> <i><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='AMDG']"></xsl:value-of></i></p>
    </xsl:template>

    <!-- Stile elementi codifica: -->

    <!-- Suddivisione in pericopi -->
    <xsl:template match="tei:ab">
        <ab><xsl:apply-templates /></ab>
    </xsl:template>

    <!-- Inizio riga -->
    <xsl:template match="tei:lb">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="id" select="current()/@xml:id"></xsl:attribute>
            <xsl:attribute name="style">background-color: transparent</xsl:attribute>
            <b><xsl:value-of select="@n" /> - </b>
        </xsl:element>
    </xsl:template>

    <!-- Forma originale -->
    <xsl:template match="tei:orig">
        <orig><xsl:apply-templates /></orig>
    </xsl:template>
    
    <!-- Forma regolarizzata -->
    <xsl:template match="tei:reg">
        | <reg><xsl:apply-templates /></reg>
    </xsl:template>

    <!-- Abbreviazioni -->
    <xsl:template match="tei:abbr">
        <xsl:element name="span">
            <xsl:attribute name="style">background-color: #ffcccc</xsl:attribute>
            <abbr><xsl:apply-templates /></abbr>
        </xsl:element>
    </xsl:template>

    <!-- Estensioni -->
    <xsl:template match="tei:expan">
        <xsl:element name="span"></xsl:element>
        <xsl:element name="span"> 
            <xsl:attribute name="style">background-color: #b3e6cc</xsl:attribute>
            <expan>(<xsl:apply-templates />)</expan>
        </xsl:element>
    </xsl:template>
    
    <!-- Cancellature -->
    <xsl:template match="tei:del">
        <del><xsl:apply-templates /></del>
    </xsl:template>

    <!-- Aggiunte -->
    <xsl:template match="tei:add">
        <xsl:element name="span">
            <xsl:attribute name="style">background-color:  #d2a679</xsl:attribute>
            <add><xsl:apply-templates /></add>
        </xsl:element>
    </xsl:template>

    <!-- Note -->
    <xsl:template match="tei:div[@type='pagina']//tei:note">
        <xsl:element name="span">
            <xsl:attribute name="style">background-color:  #c2c2a3</xsl:attribute>
            <note><xsl:apply-templates /></note>
        </xsl:element>
    </xsl:template>

    <!-- Elementi mancanti --> 
    <xsl:template match="tei:gap">
        <xsl:element name="span">
            <gap>(?)</gap>
        </xsl:element>
    </xsl:template>

    <!-- Unclear -->
    <xsl:template match="tei:unclear">
        <xsl:element name="span">
            <xsl:attribute name="style">text-decoration-style:  wavy; text-decoration-line:  underline</xsl:attribute>
            <unclear><xsl:apply-templates /></unclear>
        </xsl:element>
    </xsl:template>

    <!-- Enfasi --> 
    <xsl:template match="tei:emph">
        <u><xsl:apply-templates /></u>
    </xsl:template>

    <!-- Elementi terminologici-->
    <xsl:template match="//tei:text//tei:term">
        <xsl:for-each select="current()">
            <xsl:element name="span">
                <xsl:attribute name="style">background-color:  yellow</xsl:attribute>
                <xsl:attribute name="title"><xsl:value-of select="key('glossario', current()/@ref)/following::tei:item[1]/tei:gloss[1]" /></xsl:attribute>
                <xsl:attribute name="class">terminologia</xsl:attribute>
                <term><xsl:apply-templates /></term>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- Glottonimi -->
    <xsl:template match="//tei:div[@type='pagina']//tei:term[@type='glottonimo']" priority="5"> <!-- il priority è qui necessario per evitare il match ambiguo-->
        <xsl:element name="span">
            <xsl:attribute name="style">background-color:  	 #79d279</xsl:attribute>
            <xsl:attribute name="class">gloss</xsl:attribute>
            <term><xsl:apply-templates /></term>
        </xsl:element>
    </xsl:template>

    <!-- Esempi linguistici -->
     <xsl:template match="//tei:div[@type='pagina']//tei:mentioned">
        <xsl:element name="span">
        <xsl:attribute name="style">background-color:  	  #b3e6ff</xsl:attribute>
            <xsl:attribute name="class">example</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>

    <!-- Toponimi -->
    <xsl:template match="//tei:div[@type='pagina']//tei:name[@type='place']">
        <xsl:element name="span">
        <xsl:attribute name="style">background-color:  	  #bb99ff</xsl:attribute>
            <xsl:attribute name="class">example</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>

    <!-- Immagini -->
    <xsl:template match="//tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="concat(@xml:id, '.jpg')" /> <!-- 'concat' concatena le due stringhe-->
            </xsl:attribute>
            <xsl:attribute name="usemap"><xsl:value-of select="concat('#wm_', @xml:id)" /></xsl:attribute>
        </xsl:element>
        <!-- <xsl:element name="map">
            <xsl:attribute name="name">workmap</xsl:attribute>
            <xsl:for-each select="//tei:surface/tei:graphic/following-sibling::tei:zone">
                <xsl:element name="area">
                    <xsl:attribute name="id"><xsl:value-of select="current()/xml:id" /></xsl:attribute>
                    <xsl:attribute name="coords"><xsl_value-of select="current()/concat(@ulx, @uly, @lrx, @lry)" /></xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element> -->
    </xsl:template>

    <xsl:variable name="apice">'</xsl:variable> <!-- variabile per includere l'apice nel concat sottostante -->

    <!-- Zone -->
    <xsl:template match="//tei:zone[@uly>20]"> <!-- Condizione necessaria per escludere l'area dell'intera pagina, che bloccherebbe il funzionamento della map -->
        <xsl:element name="area">
            <xsl:attribute name="class"><xsl:value-of select="current()/@xml:id" /></xsl:attribute>
            <xsl:attribute name="shape">rect</xsl:attribute>
            <xsl:attribute name="coords"><xsl:value-of select="current()/normalize-space(concat((@ulx)*0.180, ',', (@uly)*0.180, ',', (@lrx)*0.180, ',', (@lry)*0.180))" /></xsl:attribute>
            <xsl:attribute name="onmouseover"><xsl:value-of select="concat('lineon(', $apice, concat('pag_', ../@n, '_', 'line_', position()-1), $apice, ')')" /></xsl:attribute>
            <xsl:attribute name="onmouseout"><xsl:value-of select="concat('lineoff(', $apice, concat('pag_', ../@n, '_', 'line_', position()-1), $apice, ')')" /></xsl:attribute>
        </xsl:element>
    </xsl:template>


</xsl:stylesheet>