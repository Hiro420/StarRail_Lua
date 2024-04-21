local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ActivityRewardUtils
L1_1 = G
L1_1 = L1_1.QuestUtils
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityRewardPageFilter"
L4_1 = G
L4_1 = L4_1.BaseFilter
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._activity_reward_id = A1_2
  A0_2._tab_group_red_dot_name = A2_2
  A0_2._tab_red_dot_name = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._prepare_data
  L4_2(L5_2)
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_red_dot_name
  return L1_2
end
L2_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._tab_red_dot_name
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_group_2_tab_rows
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_2_quest_ids
      if L1_2 ~= nil then
        goto lbl_15
      end
    end
  end
  do return end
  ::lbl_15::
  L1_2 = pairs
  L2_2 = A0_2._tab_group_2_tab_rows
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = false
    L7_2 = pairs
    L8_2 = L5_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = false
      L13_2 = A0_2._tab_2_quest_ids
      L14_2 = L11_2.QuestTabID
      L13_2 = L13_2[L14_2]
      if L13_2 ~= nil then
        L14_2 = pairs
        L15_2 = L13_2
        L14_2, L15_2, L16_2 = L14_2(L15_2)
        for L17_2, L18_2 in L14_2, L15_2, L16_2 do
          L19_2 = L1_1.get_quest_data
          L20_2 = L18_2
          L19_2 = L19_2(L20_2)
          L20_2 = L1_1.is_quest_reward_can_take
          L21_2 = L19_2
          L20_2 = L20_2(L21_2)
          if L20_2 then
            L12_2 = true
            break
          end
        end
      end
      if L12_2 then
        L6_2 = true
        L14_2 = G
        L14_2 = L14_2.RedDotModule
        L14_2 = L14_2.Instance
        L15_2 = L14_2
        L14_2 = L14_2.update_reddot
        L16_2 = A0_2._tab_red_dot_name
        L17_2 = L11_2.QuestTabID
        L14_2(L15_2, L16_2, L17_2)
      end
    end
    if L6_2 then
      L7_2 = G
      L7_2 = L7_2.StrExt
      L7_2 = L7_2.IsNullOrEmpty
      L8_2 = A0_2._tab_group_red_dot_name
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = G
        L7_2 = L7_2.RedDotModule
        L7_2 = L7_2.Instance
        L8_2 = L7_2
        L7_2 = L7_2.update_reddot
        L9_2 = A0_2._tab_group_red_dot_name
        L10_2 = L4_2
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.get_reward_config_row
  L2_2 = A0_2._activity_reward_id
  L1_2 = L1_2(L2_2)
  A0_2._reward_config_row = L1_2
  L1_2 = L0_1.get_tab_group_rows_by_reward_config_row
  L2_2 = A0_2._reward_config_row
  L1_2 = L1_2(L2_2)
  A0_2._tab_group_rows = L1_2
  L1_2 = L0_1.get_tab_group_2_tab_rows_by_tab_group_rows
  L2_2 = A0_2._tab_group_rows
  L1_2 = L1_2(L2_2)
  A0_2._tab_group_2_tab_rows = L1_2
  L1_2 = L0_1.get_tab_2_quest_ids_by_tab_group_2_tab_rows
  L2_2 = A0_2._tab_group_2_tab_rows
  L1_2 = L1_2(L2_2)
  A0_2._tab_2_quest_ids = L1_2
end
L2_1._prepare_data = L3_1
return L2_1
