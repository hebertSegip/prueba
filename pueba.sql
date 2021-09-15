CREATE OR REPLACE FUNCTION prueba.function (
)
RETURNS TABLE (
  "fecha_actual" TIMESTAMP,
  "nombres" VARCHAR 
) AS
$body$
DECLARE
  v_fecha TIMESTAMP ;
  v_nombre TIMESTAMP ;
BEGIN
  select NOW(), 'prueba' INTO v_fecha;
  RETURN query select v_fecha,v_nombre;
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
PARALLEL UNSAFE;