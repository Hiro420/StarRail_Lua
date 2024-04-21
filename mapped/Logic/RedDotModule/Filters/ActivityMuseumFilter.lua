local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MuseumModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMuseumFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
L2_1 = {}
L2_1.item = 1
L2_1.avatar = 2
function L3_1(A0_2)
  local L1_2
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L1_1.dtor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "ActivityMuseum"
  return L1_2
end
L1_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.register_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_collect_reward
  L1_2(L2_2)
end
L1_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_collection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_item_collection
  L1_2(L2_2)
end
L1_1._refresh_collect_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllMuseumAvatarItemDataList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.MuseumStuffRow
    L7_2 = L7_2.Type
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.StuffType
    L8_2 = L8_2.Avatar
    if L7_2 == L8_2 then
      L7_2 = L6_2.TakenCollectReward
      if L7_2 == false then
        L7_2 = L6_2.Status
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.MuseumCollectionItemStatus
        L8_2 = L8_2.Owned
        if L7_2 == L8_2 then
          L7_2 = G
          L7_2 = L7_2.RedDotModule
          L7_2 = L7_2.Instance
          L8_2 = L7_2
          L7_2 = L7_2.update_reddot
          L9_2 = "MuseumAtlasCollectReward"
          L10_2 = L6_2.ID
          L7_2(L8_2, L9_2, L10_2)
          L7_2 = G
          L7_2 = L7_2.RedDotModule
          L7_2 = L7_2.Instance
          L8_2 = L7_2
          L7_2 = L7_2.update_reddot
          L9_2 = "MuseumAtlasType"
          L10_2 = L2_1.avatar
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L1_1._refresh_avatar_collection = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllExhibitItemDataList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.TakenCollectReward
    if L7_2 == false then
      L7_2 = L6_2.Status
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.MuseumCollectionItemStatus
      L8_2 = L8_2.Owned
      if L7_2 == L8_2 then
        L7_2 = G
        L7_2 = L7_2.RedDotModule
        L7_2 = L7_2.Instance
        L8_2 = L7_2
        L7_2 = L7_2.update_reddot
        L9_2 = "MuseumAtlasCollectReward"
        L10_2 = L6_2.ID
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = G
        L7_2 = L7_2.RedDotModule
        L7_2 = L7_2.Instance
        L8_2 = L7_2
        L7_2 = L7_2.update_reddot
        L9_2 = "MuseumAtlasArea"
        L10_2 = L6_2.MuseumItemRow
        L10_2 = L10_2.AreaID
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = G
        L7_2 = L7_2.RedDotModule
        L7_2 = L7_2.Instance
        L8_2 = L7_2
        L7_2 = L7_2.update_reddot
        L9_2 = "MuseumAtlasType"
        L10_2 = L2_1.item
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L1_1._refresh_item_collection = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.RedDotQuestSeries
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
    L8_2 = "MuseumLimitedRewardTab"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = L0_1.RedDotPhaseQuestList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "MuseumPhaseReward"
    L10_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
  end
end
L1_1._refresh_quest_red_dot = L3_1
return L1_1
