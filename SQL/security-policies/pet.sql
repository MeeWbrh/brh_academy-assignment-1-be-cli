DROP POLICY IF EXISTS When_AuthId_Equals_ProfileFk_Enable_Read_on_Pet on public.pet;
CREATE POLICY When_AuthId_Equals_ProfileFk_Enable_Read_on_Pet
ON public.pet
AS PERMISSIVE 
FOR SELECT TO authenticated USING
(
    auth.uid() = profile_fk
);

DROP POLICY IF EXISTS When_AuthId_Equals_ProfileFk_Enable_Create_on_Pet on public.pet;
CREATE POLICY When_AuthId_Equals_ProfileFk_Enable_Create_on_Pet
ON public.pet
AS PERMISSIVE 
FOR INSERT TO authenticated
WITH CHECK
(
    auth.uid() = profile_fk
);

DROP POLICY IF EXISTS When_AuthId_Equals_ProfileFk_Enable_Update_on_Pet on public.pet;
CREATE POLICY When_AuthId_Equals_ProfileFk_Enable_Update_on_Pet
ON public.pet
AS PERMISSIVE 
FOR UPDATE TO authenticated USING 
(
    auth.uid() = profile_fk
)
WITH CHECK 
(
    auth.uid() = profile_fk
);

DROP POLICY IF EXISTS When_AuthId_Equals_ProfileFk_Enable_Delete_on_Pet on public.Pet;
CREATE POLICY When_AuthId_Equals_ProfileFk_Enable_Delete_on_Pet
ON public.Pet
AS PERMISSIVE
FOR DELETE TO authenticated 
USING (
  auth.uid() = profile_fk
);
