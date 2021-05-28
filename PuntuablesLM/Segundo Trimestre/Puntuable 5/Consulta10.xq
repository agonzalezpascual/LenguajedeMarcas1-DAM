let $asegurados :=  doc("envio_ep2t5b.xml")//envio/poliza/asegurado
let $count := count($asegurados)
 return <cuenta> {data($count)}</cuenta>