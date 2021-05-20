for $libro in doc("libros_ep2t5a.xml")//libro
where $libro/paginas>500
return $libro/titulo