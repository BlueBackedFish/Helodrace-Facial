using FacialAnimation;
using HarmonyLib;
using Verse;

namespace HelodraceFacial
{
    [HarmonyPatch(typeof(Pawn_AgeTracker), "RecalculateLifeStageIndex")]
    internal static class BabyFacialGrowthRefreshPatch
    {
        private static void Prefix(int ___cachedLifeStageIndex, out int __state)
        {
            __state = ___cachedLifeStageIndex;
        }

        private static void Postfix(
            Pawn ___pawn,
            int ___cachedLifeStageIndex,
            int __state)
        {
            if (___pawn?.def?.defName != "Helod"
                || __state == ___cachedLifeStageIndex)
            {
                return;
            }

            Reload(___pawn.GetComp<HeadControllerComp>());
            Reload(___pawn.GetComp<EyeballControllerComp>());
            Reload(___pawn.GetComp<LidControllerComp>());
            Reload(___pawn.GetComp<MouthControllerComp>());
            Reload(___pawn.GetComp<LidOptionControllerComp>());

            ___pawn.Drawer?.renderer?.SetAllGraphicsDirty();
        }

        private static void Reload(IFacialAnimationController controller)
        {
            if (controller == null)
            {
                return;
            }

            controller.SetDirty();
            controller.ReloadIfNeed();
        }
    }
}
