<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html> 

  <STYLE>
                h2 {font-family: Arial,Univers,sans-serif;
                    font-size: 36pt ;
                    text-align: center;
  
                    }

                    table
                     
                    {
                    font-family: Arial,Univers,sans-serif;
                 
                    text-align: center;
                    align-content: center; 
                   overflow-x:auto;
                     border: 2px solid blue;
                     border-collapse: collapse;
                     
                     


                     }
                     th,td{
                        font-size: 30px ;
                        padding: 15px;
                         border-bottom: 1px solid #ffff;
  text-align: left;

                     }

                     tr:hover {
                     background-color:gold ;
                     }


                    .center {
                      margin-left: auto;
                     margin-right: auto;


}
        </STYLE>

<body>
  <h2>Employee Management System</h2>
  <table border="1" class='center'>
   
    <tr bgcolor="yellow">
      <th style="text-align:left">ID</th>
      <th style="text-align:left">NAME</th>
        <th style="text-align:left">AGE</th>
 <th style="text-align:left">SALARY</th>
 <th style="text-align:left">EMAIL</th>
  <th style="text-align:left">MobNUM</th>
   <th style="text-align:left">Designation</th>
   <th style="text-align:left">Promotion</th>




    </tr>
    <xsl:for-each select="Company/Employee">
    <tr>
      <td><xsl:value-of select="emp-id"/></td>
      <td><xsl:value-of select="emp-name"/></td>
     <td><xsl:value-of select="emp-age"/></td>
     <td><xsl:value-of select="emp-salary"/></td>
     <td><xsl:value-of select="emp-emailid"/></td>
     <td><xsl:value-of select="emp-phonenum"/></td>
      <td><xsl:value-of select="emp-designation"/></td>



    </tr>
   <!-- <td>
      <xsl:choose>
        <xsl:when test="Emp_age>=50">
        Associate Project Manager promotion
        </xsl:when>
        <xsl:when test="Emp_age>=40 and Emp_age<=49">
        Team Leader promotion
        </xsl:when>

    <xsl:when test="Emp_age<40">
       Developer Team Leader promotion
        </xsl:when>
   </xsl:choose>
   
   </td>
-->
    </xsl:for-each>
  </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

