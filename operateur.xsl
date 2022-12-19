<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
 <xsl:template match="/" >
     <html>
         <body>
             <h3> Liste des operateurs </h3>
             <ul>
                 <xsl:for-each select="operateur/client">
                     <li>
                         Nom du client: <xsl:value-of select="@nom" />
                     </li>
                     <table border="1" width="80%">
                         <tr>
                             <th>Num d'abonnement</th><th>type</th><th>DATE D'ABONNEMENT</th><th>MONTANT TOTAL DES FACTURES</th>
                         </tr>
                         <xsl:for-each select="abonnement">
                             <tr>
                                 <td>
                                     <xsl:value-of select="@num" />
                                 </td>
                                 <td>
                                     <xsl:value-of select="@type" />
                                 </td>
                                 <td>
                                     <xsl:value-of select="@dateAb" />
                                 </td>
                                 <td>
                                     <xsl:value-of select="sum(facture/@montant)" />
                                 </td>
                             </tr>
                         </xsl:for-each>
                     </table>
                         
                 </xsl:for-each>
                
             </ul>
         </body>
     </html>
 </xsl:template>
</xsl:stylesheet>