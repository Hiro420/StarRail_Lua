local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Attribute.ActivityClockParkGamePlayAttributeItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkAttributeType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkGameStateEnum
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ClockParkCheckPointType
L4_1 = G
L4_1 = L4_1.ActivityClockParkGamePlayAttributeItemPanel
L4_1 = L4_1.check_state
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ActivityClockParkGamePlayAttributePanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._attribute_table = nil
end
L5_1._on_dispose = L6_1
function L6_1(A0_2, A1_2)
  A0_2._merge_progress_panel = A1_2
end
L5_1.init_merge_progress_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_dict
  L3_2 = L0_1.ClockParkInstance
  L3_2 = L3_2.AttributeInfo
  L3_2 = L3_2.AttributeItemsDict
  L2_2 = L2_2(L3_2)
  A0_2._attribute_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_attribute
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_state_effect
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._attribute_table
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L2_1.Check
  L2_2 = L1_2 ~= L2_2
  L3_2 = 0
  L4_2 = pairs
  L5_2 = A0_2._attribute_table
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_item_list
    L10_2 = L9_2
    L9_2 = L9_2.get_panel_by_index
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L11_2 = A0_2
      L10_2 = A0_2._get_attribute_effect
      L12_2 = L8_2.Type
      L10_2 = L10_2(L11_2, L12_2)
      if L2_2 then
        L3_2 = L3_2 + L10_2
        L12_2 = L9_2
        L11_2 = L9_2.set_value_change
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      else
        L12_2 = L9_2
        L11_2 = L9_2.set_value_change
        L13_2 = 0
        L11_2(L12_2, L13_2)
      end
    end
  end
  L4_2 = A0_2._merge_progress_panel
  if L4_2 ~= nil then
    L4_2 = 0
    L5_2 = pairs
    L6_2 = A0_2._attribute_table
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L9_2.Value
      L4_2 = L4_2 + L10_2
    end
    L5_2 = A0_2._merge_progress_panel
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L4_2
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L5_1._setup_cur_attribute = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ActionInfo
  L2_2 = L2_2.OnCardEffectResult
  L3_2 = L0_1.ClockParkInstance
  L3_2 = L3_2.ActionInfo
  L3_2 = L3_2.OnCardSuccessEffectResult
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkUtils
  L4_2 = L4_2.get_attribute_change_from_effect_result
  L5_2 = L2_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkUtils
  L5_2 = L5_2.get_attribute_change_from_effect_result
  L6_2 = L3_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 + L5_2
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkUtils
  L5_2 = L5_2.get_buff_attribute_change
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L4_2 + L5_2
  return L5_2
end
L5_1._get_attribute_effect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._attribute_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_item_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.set_show_fail_effect
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L5_1.hide_fail_effect = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.CurGameStateEnum
  L3_2 = L2_1.Check
  L3_2 = L2_2 == L3_2
  L5_2 = A0_2
  L4_2 = A0_2._get_sum_value
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = A0_2._attribute_table
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = A0_2
    L10_2 = A0_2._get_attribute_effect
    L12_2 = L9_2.Type
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = A0_2
    L11_2 = A0_2._is_attribute_need_check_and_satisfy
    L13_2 = L9_2
    L14_2 = L10_2
    L15_2 = L4_2
    L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L13_2 = A0_2._binder
    L13_2 = L13_2.panel_item_list
    L14_2 = L13_2
    L13_2 = L13_2.get_panel_by_index
    L15_2 = L8_2
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 ~= nil then
      if L3_2 and not A1_2 then
        if L11_2 then
          L15_2 = L13_2
          L14_2 = L13_2.show_state
          L16_2 = L4_1.checking
          L17_2 = L12_2
          L14_2(L15_2, L16_2, L17_2)
        else
          L15_2 = L13_2
          L14_2 = L13_2.show_state
          L16_2 = L4_1.no_check
          L17_2 = L12_2
          L14_2(L15_2, L16_2, L17_2)
        end
      else
        L14_2 = L9_2.Value
        L14_2 = L14_2 + L10_2
        if not (L14_2 <= 0) then
          L14_2 = G
          L14_2 = L14_2.ActivityClockParkUtils
          L14_2 = L14_2.is_state_near_check
          L14_2 = L14_2()
          if not L14_2 or L12_2 then
            goto lbl_62
          end
        end
        L15_2 = L13_2
        L14_2 = L13_2.show_state
        L16_2 = L4_1.fail_check
        L17_2 = false
        L14_2(L15_2, L16_2, L17_2)
        goto lbl_73
        ::lbl_62::
        if L11_2 then
          L15_2 = L13_2
          L14_2 = L13_2.show_state
          L16_2 = L4_1.wait_check
          L17_2 = L12_2
          L14_2(L15_2, L16_2, L17_2)
        else
          L15_2 = L13_2
          L14_2 = L13_2.show_state
          L16_2 = L4_1.no_check
          L17_2 = L12_2
          L14_2(L15_2, L16_2, L17_2)
        end
      end
    end
    ::lbl_73::
  end
end
L5_1._refresh_state_effect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._attribute_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._get_attribute_effect
    L9_2 = L6_2.Type
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L6_2.Value
    L8_2 = L1_2 + L8_2
    L1_2 = L8_2 + L7_2
  end
  return L1_2
end
L5_1._get_sum_value = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L0_1.ClockParkInstance
  L4_2 = L4_2.ScriptInfo
  L4_2 = L4_2.ChapterInfo
  L5_2 = L4_2.CheckPointInfo
  L6_2 = L0_1.ClockParkInstance
  L6_2 = L6_2.ScriptInfo
  L6_2 = L6_2.IsInEndless
  if L6_2 then
    L6_2 = true
    L7_2 = A1_2.Value
    L7_2 = L7_2 + A2_2
    L7_2 = 0 < L7_2
    return L6_2, L7_2
  end
  L6_2 = L5_2.HasCheck
  if not L6_2 then
    L6_2 = true
    L7_2 = A1_2.Value
    L7_2 = L7_2 + A2_2
    L7_2 = 0 < L7_2
    return L6_2, L7_2
  end
  L6_2 = L5_2.CheckPointType
  L7_2 = L3_1.AttrGreaterEqual
  if L6_2 == L7_2 then
    L6_2 = L5_2.CheckSingleAttributeDict
    L7_2 = A1_2.Type
    L6_2 = L6_2[L7_2]
    L6_2 = 0 < L6_2
    L7_2 = A1_2.Value
    L7_2 = L7_2 + A2_2
    L7_2 = 0 < L7_2
    if L6_2 then
      L8_2 = A1_2.Value
      L8_2 = L8_2 + A2_2
      L9_2 = L5_2.CheckSingleAttributeDict
      L10_2 = A1_2.Type
      L9_2 = L9_2[L10_2]
      L7_2 = L8_2 >= L9_2
    end
    L8_2 = L6_2
    L9_2 = L7_2
    return L8_2, L9_2
  end
  L6_2 = L5_2.CheckPointType
  L7_2 = L3_1.AttrSumGreaterEqual
  if L6_2 == L7_2 then
    L6_2 = true
    L7_2 = L5_2.CheckTotalAttributeValue
    L7_2 = A3_2 >= L7_2
    return L6_2, L7_2
  end
  L6_2 = true
  L7_2 = A1_2.Value
  L7_2 = L7_2 + A2_2
  L7_2 = 0 < L7_2
  return L6_2, L7_2
end
L5_1._is_attribute_need_check_and_satisfy = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A1_2 then
    L2_2 = pairs
    L3_2 = A0_2._attribute_table
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2._binder
      L7_2 = L7_2.panel_item_list
      L8_2 = L7_2
      L7_2 = L7_2.get_panel_by_index
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L9_2 = L7_2
        L8_2 = L7_2.set_show_check_effect
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
    end
    return
  end
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.ChapterInfo
  L2_2 = L2_2.CheckPointInfo
  L3_2 = L2_2.CheckPointType
  L4_2 = L3_1.AttrGreaterEqual
  L3_2 = L3_2 == L4_2
  L4_2 = L2_2.CheckPointType
  L5_2 = L3_1.AttrSumGreaterEqual
  L4_2 = L4_2 == L5_2
  if L3_2 or L4_2 then
    L5_2 = pairs
    L6_2 = A0_2._attribute_table
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = A0_2._binder
      L10_2 = L10_2.panel_item_list
      L11_2 = L10_2
      L10_2 = L10_2.get_panel_by_index
      L12_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 ~= nil then
        L12_2 = L10_2
        L11_2 = L10_2.set_show_check_effect
        L13_2 = L4_2 or L13_2
        if not L4_2 then
          L13_2 = L2_2.CheckSingleAttributeDict
          L14_2 = L9_2.Type
          L13_2 = L13_2[L14_2]
          L13_2 = 0 < L13_2
        end
        L11_2(L12_2, L13_2)
      end
    end
  end
end
L5_1.show_check_effect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = false
  L3_2 = false
  L4_2 = pairs
  L5_2 = A0_2._attribute_table
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_item_list
    L10_2 = L9_2
    L9_2 = L9_2.get_panel_by_index
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      if not L2_2 then
        L11_2 = L9_2
        L10_2 = L9_2.has_value_change_up
        L10_2 = L10_2(L11_2)
        L2_2 = L10_2
      end
      if not L3_2 then
        L11_2 = L9_2
        L10_2 = L9_2.has_value_change_down
        L10_2 = L10_2(L11_2)
        L3_2 = L10_2
      end
      L11_2 = L9_2
      L10_2 = L9_2.get_finish_anim_action
      L10_2 = L10_2(L11_2)
      if L10_2 ~= nil then
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L1_2
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = G
  L6_2 = L6_2.ChallengeActionUtils
  L6_2 = L6_2.create_immediate_action
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = L2_2
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_AudioManager
      L1_3 = L0_3
      L0_3 = L0_3.PostEvent
      L2_3 = "Ev_sfx_ui_feedback_activity_clockPark_coreNum_up"
      L0_3(L1_3, L2_3)
    else
      L0_3 = L3_2
      if L0_3 then
        L0_3 = CS
        L0_3 = L0_3.RPG
        L0_3 = L0_3.Client
        L0_3 = L0_3.GlobalVars
        L0_3 = L0_3.s_AudioManager
        L1_3 = L0_3
        L0_3 = L0_3.PostEvent
        L2_3 = "Ev_sfx_ui_feedback_activity_clockPark_coreNum_down"
        L0_3(L1_3, L2_3)
      end
    end
  end
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  return L1_2
end
L5_1.get_attribute_finish_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._attribute_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_item_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.get_finish_action_for_little_game
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 ~= nil then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L1_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  return L1_2
end
L5_1.get_little_game_refresh_action = L6_1
return L5_1
