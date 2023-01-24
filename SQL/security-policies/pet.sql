DROP POLICY IF EXISTS read_permission_only_when_authid_equal_profilefk on public.pet;
CREATE POLICY read_permission_only_when_authid_equal_profilefk
ON public.pet
AS PERMISSIVE
FOR SELECT TO authenticated USING (
  auth.uid() = profile_fk
);