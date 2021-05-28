<html>
  <head>
  <title> Consulta 4</title>
  </head>
  <body>
  
    <table table-border="1">
    <tr>
    <td>Titulo</td>
    <td>Autor</td>
    </tr>
      {for $libro in doc("libros_ep2t5a.xml")//libro
        return <tr> 
            <td>{$libro/titulo}</td>
            <td>{$libro/autor}</td>
          </tr>
}
    
    </table>
  
  </body>
</html>