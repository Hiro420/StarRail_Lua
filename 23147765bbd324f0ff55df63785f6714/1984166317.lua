local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardContentItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelRewardContentItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.level
  L3_2 = A1_2.is_break
  L4_2 = A0_2._binder
  L4_2 = L4_2.title_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.task_list
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.task_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = false
  L5_2 = G
  L5_2 = L5_2.LevelRewardUtils
  L5_2 = L5_2.get_world_level_row_by_level
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  if L3_2 and L6_2 ~= nil then
    L4_2 = true
    L7_2 = A0_2._binder
    L7_2 = L7_2.task_list_title
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = "UIText_WorldLevelupToWhere_1"
    L10_2 = L6_2.Level
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = L5_2.Breaktips1
    if L7_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.detail_text1
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L5_2.Breaktips1
      L7_2(L8_2, L9_2)
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.detail_text1
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L5_2.Breaktips1
    L9_2 = L9_2 ~= nil
    L7_2(L8_2, L9_2)
    L7_2 = L5_2.Breaktips2
    if L7_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.detail_text2
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L5_2.Breaktips2
      L7_2(L8_2, L9_2)
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.detail_text2
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L5_2.Breaktips2
    L9_2 = L9_2 ~= nil
    L7_2(L8_2, L9_2)
  end
  L7_2 = A0_2._binder
  L8_2 = L7_2
  L7_2 = L7_2.set_active
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
end
L0_1.show_break_tips = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.level
  L3_2 = A1_2.is_break
  L4_2 = false
  L5_2 = A0_2._binder
  L5_2 = L5_2.title_panel
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.task_list
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.task_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.detail_text2
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.detail_text1
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.LevelRewardUtils
  L5_2 = L5_2.get_world_level_row_by_level
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  if L3_2 and L6_2 ~= nil then
    L4_2 = true
    L7_2 = A0_2._binder
    L7_2 = L7_2.task_list_title
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = "UIText_LevelupToWhere_1"
    L10_2 = L6_2.MaxPlayerLevel
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = A0_2._binder
  L8_2 = L7_2
  L7_2 = L7_2.set_active
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
end
L0_1.show_level_limits = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.level
  L3_2 = A1_2.is_break
  L4_2 = A0_2._binder
  L4_2 = L4_2.task_list
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.task_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.detail_text2
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.detail_text1
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = false
  L5_2 = G
  L5_2 = L5_2.LevelRewardUtils
  L5_2 = L5_2.get_world_level_row_by_level
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  if L3_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.title_text
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = "UIText_BreakUpMisson"
    L7_2(L8_2, L9_2)
    if L5_2 ~= nil then
      L7_2 = L5_2.LevelUpMission
      if L7_2 ~= nil then
        L7_2 = L5_2.LevelUpMission
        if L7_2 ~= 0 then
          L7_2 = A0_2._binder
          L7_2 = L7_2.task_desc
          L8_2 = L7_2
          L7_2 = L7_2.SafeSetTextID
          L9_2 = L5_2.LevelUpMissionTips
          L7_2(L8_2, L9_2)
          L4_2 = true
        end
      end
    end
  end
  L7_2 = A0_2._binder
  L8_2 = L7_2
  L7_2 = L7_2.set_active
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
end
L0_1.show_task_intro = L1_1
return L0_1
