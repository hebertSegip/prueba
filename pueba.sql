CREATE OR REPLACE FUNCTION prueba.function (
)
RETURNS TABLE (
  "fecha_actual" TIMESTAMP,
  "nombres" VARCHAR 
) AS
$body$
DECLARE
  v_fecha TIMESTAMP ;
BEGIN
  select NOW() INTO v_fecha;
  RETURN query select v_fecha,'prueba';
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
PARALLEL UNSAFE;