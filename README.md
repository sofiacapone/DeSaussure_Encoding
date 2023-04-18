# DeSaussure_Encoding
La presente cartella contiene tutti i file per l'esame di Codifica di Testi realizzato da: 
<ul>
  <li>Sofia Capone</li>
  <li>Matilde Cicalini</li>
  <li>Viola Portunato</li>
 </ul>

Il file XML è stato validato con l'XML parser Xerces attraverso la seguente riga di comando:
```shell
 java -cp "Xerces-J-bin.2.12.1/xerces-2_12_1/*" dom.Counter source/Codifica_di_Testi.xml
```

Il file Html è stato ottenuto passando il file XML e il file XSL al processore Saxon attraverso la seguente riga di comando:
```shell
java -jar SaxonHE10-3J/saxon-he-10.3.jar -s:./source/Codifica_di_Testi.xml -xsl:./source/stile.xsl
```
