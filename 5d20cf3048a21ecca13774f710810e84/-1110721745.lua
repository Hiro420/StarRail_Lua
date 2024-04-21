local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceHandbookRedDotFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._native_filter = nil
  end
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "RogueNousDiceHandbookReward"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.is_dice_handbook_unlocked
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RogueNousDiceHandbookRedDotFilter
    L1_2 = L1_2()
    A0_2._native_filter = L1_2
  end
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.UpdateRedDots
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_surface_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_handbook_reward
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.NewSurfaceIDs
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RogueNousSurfaceNew"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh_surface_new = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_dice_surface_collection_reward_quest_ids
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L3_2 = false
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L2_2
    L9_2 = L2_2.TryGetQuestData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.Status
      L11_2 = CS
      L11_2 = L11_2.LEOGBBOPKKO
      L11_2 = L11_2.JKFPIINHGPD
      if L10_2 == L11_2 then
        L3_2 = true
        break
      end
    end
  end
  if L3_2 then
    L4_2 = G
    L4_2 = L4_2.RedDotModule
    L4_2 = L4_2.Instance
    L5_2 = L4_2
    L4_2 = L4_2.update_reddot
    L6_2 = "RogueNousDiceHandbookReward"
    L7_2 = nil
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._refresh_handbook_reward = L1_1
return L0_1
