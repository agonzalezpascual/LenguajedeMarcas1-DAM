for $c in doc("envio_ep2t5b.xml")//envio/poliza[1]/asegurado
return 
<newaseg>
  <nombre>{data([$c/@nombre])}</nombre>
  <apellidos>{data([$c/@apellidos])}</apellidos>
</newaseg>
