DROP POLICY IF EXISTS All_actions_enabled_if_profilefk_is_correct on public.car;
CREATE POLICY All_actions_enabled_if_profilefk_is_correct
ON public.car
AS PERMISSIVE FOR ALL
TO authenticated
USING (true)
WITH CHECK (
    auth.uid() = profile_fk
);

-- lav policy til hver i stedet for "all"