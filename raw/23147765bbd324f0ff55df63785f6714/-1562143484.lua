local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementHintDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._owner
  L2_2 = L2_2.data
  L2_2 = L2_2.ScoringId
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AchievementModule
    L3_2 = L2_2
    L2_2 = L2_2.GetAchievementDataByScoringID
    L4_2 = A0_2._owner
    L4_2 = L4_2.data
    L4_2 = L4_2.ScoringId
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._owner
    L1_2 = L2_2.data
  end
  L2_2 = L1_2.Row
  L2_2 = L2_2.Rarity
  if L2_2 == "Low" then
    L2_2 = "UI/Common/Widget/AchievementHint-copper.prefab"
    return L2_2
  else
    L2_2 = L1_2.Row
    L2_2 = L2_2.Rarity
    if L2_2 == "Mid" then
      L2_2 = "UI/Common/Widget/AchievementHint-sliver.prefab"
      return L2_2
    else
      L2_2 = L1_2.Row
      L2_2 = L2_2.Rarity
      if L2_2 == "High" then
        L2_2 = "UI/Common/Widget/AchievementHint-gold.prefab"
        return L2_2
      end
    end
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AreaInfoPanel/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.title_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AreaInfoPanel/ExclaimationMarkPanel/LevelIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rarity = L1_2
end
L0_1._on_bind = L1_1
return L0_1
