local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = "UIText_ClockPark_Add"
L1_1 = "UIText_ClockPark_Subtract"
L2_1 = "#8ef254"
L3_1 = "#eb4d3d"
L4_1 = "ClockParkGameNumShowLight"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.ActivityClockParkModule
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ClockParkCheckPointType
L7_1 = G
L7_1 = L7_1.ConstValueUtils
L7_1 = L7_1.get_uint_array
L8_1 = "Max_Attribute_Script"
L7_1 = L7_1(L8_1)
L8_1 = "#97938c"
L9_1 = "#d8d4ca"
L10_1 = "#8ef254"
L11_1 = "#eb4d3d"
L12_1 = "#eed7a6"
L13_1 = require
L14_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L13_1(L14_1)
L13_1 = require
L14_1 = "Ui.UIUtils.UIColorUtils"
L13_1(L14_1)
L13_1 = G
L13_1 = L13_1.Class
L14_1 = "ActivityClockParkGamePlayAttributeItemPanel"
L15_1 = G
L15_1 = L15_1.BasePanel
L13_1 = L13_1(L14_1, L15_1)
function L14_1(A0_2)
  local L1_2
end
L13_1._on_load = L14_1
function L14_1(A0_2)
  local L1_2
  A0_2._attribute_item = nil
end
L13_1._on_dispose = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._attribute_item = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Value
  A0_2._value = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_value
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._value
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_show_check_effect
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_simplified
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._close_finish_anim
  L2_2(L3_2)
end
L13_1.setup_view = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 ~= 0
  A0_2._value_changed = L2_2
  L2_2 = 0 < A1_2
  A0_2._value_changed_up = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_value
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._attribute_item
  L4_2 = L4_2.Value
  L4_2 = L4_2 + A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L4_2 = A0_2._attribute_item
  L4_2 = L4_2.Value
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_value_change_color
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L13_1.set_value_change = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_effect_fail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L13_1.set_show_fail_effect = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_effect_check
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L13_1.set_show_check_effect = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_value_change_color
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_value
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
end
L13_1._setup_value_change_color = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 0 then
    L2_2 = L8_1
    L3_2 = L9_1
    return L2_2, L3_2
  end
  if 0 < A1_2 then
    L2_2 = L10_1
    L3_2 = L10_1
    return L2_2, L3_2
  end
  if A1_2 < 0 then
    L2_2 = L11_1
    L3_2 = L11_1
    return L2_2, L3_2
  end
end
L13_1._get_value_change_color = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_change
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L3_2 = A0_2._attribute_item
  L3_2 = L3_2.Value
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_check_point_target
  L1_2(L2_2)
end
L13_1._setup_simplified = L14_1
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if 0 <= A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_cur
    L5_2 = A0_2
    L4_2 = A0_2._get_total
    L4_2 = L4_2(L5_2)
    L4_2 = A1_2 / L4_2
    L3_2.value = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_pre
    L4_2 = A1_2 + A2_2
    L6_2 = A0_2
    L5_2 = A0_2._get_total
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 / L5_2
    L3_2.value = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_pre_fill
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = L2_1
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_cur
    L4_2 = A1_2 + A2_2
    L6_2 = A0_2
    L5_2 = A0_2._get_total
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 / L5_2
    L3_2.value = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_pre
    L5_2 = A0_2
    L4_2 = A0_2._get_total
    L4_2 = L4_2(L5_2)
    L4_2 = A1_2 / L4_2
    L3_2.value = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_pre_fill
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = L3_1
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
end
L13_1._setup_progress = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L5_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ChapterInfo
  L1_2 = L1_2.CheckPointInfo
  L2_2 = L1_2.HasCheck
  if L2_2 then
    L2_2 = L1_2.CheckPointType
    L3_2 = L6_1.AttrGreaterEqual
    L2_2 = L2_2 == L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_target
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = L1_2.CheckSingleAttributeDict
    L4_2 = A0_2._attribute_item
    L4_2 = L4_2.Type
    L3_2 = L3_2[L4_2]
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector2
    L6_2 = A0_2
    L5_2 = A0_2._get_total
    L5_2 = L5_2(L6_2)
    L5_2 = L3_2 / L5_2
    L6_2 = 0.5
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.rect_target
    L5_2.anchorMin = L4_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.rect_target
    L5_2.anchorMax = L4_2
  end
end
L13_1._setup_check_point_target = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ScriptID
  L2_2 = L7_1[L1_2]
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogError
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "[ClockPark] \232\142\183\229\143\150\229\137\167\230\156\172\229\177\158\230\128\167\230\157\161\233\149\191\229\186\166\229\164\177\232\180\165: \229\137\167\230\156\172ID: "
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
    L2_2 = 100
    return L2_2
  end
  L2_2 = L7_1[L1_2]
  return L2_2
end
L13_1._get_total = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.Value
  L3_2 = A0_2._value
  L3_2 = L3_2 ~= nil
  if L3_2 then
    L4_2 = A0_2._value
    L4_2 = L2_2 - L4_2
    L5_2 = 0 < L4_2
    L6_2 = G
    L6_2 = L6_2.ChallengeActionUtils
    L6_2 = L6_2.create_immediate_action
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2._binder
      L0_3 = L0_3.txt_value
      L1_3 = L0_3
      L0_3 = L0_3.SetCustomizedText
      L2_3 = L2_2
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_progress
      L2_3 = A0_2._attribute_item
      L2_3 = L2_3.Value
      L3_3 = L4_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_effect_up
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = L5_2
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_effect_down
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = L5_2
      L2_3 = not L2_3
      L0_3(L1_3, L2_3)
    end
    return L6_2(L7_2)
  end
end
L13_1.get_finish_action_for_little_game = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._value_changed
  if L1_2 then
    L1_2 = A0_2._value_changed_up
    L2_2 = G
    L2_2 = L2_2.ChallengeActionUtils
    L2_2 = L2_2.create_immediate_action
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_effect_up
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = L1_2
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_effect_down
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = L1_2
      L2_3 = not L2_3
      L0_3(L1_3, L2_3)
    end
    return L2_2(L3_2)
  end
  L1_2 = nil
  return L1_2
end
L13_1.get_finish_anim_action = L14_1
function L14_1(A0_2)
  local L1_2
  L1_2 = A0_2._value_changed
  if L1_2 then
    L1_2 = A0_2._value_changed_up
  end
  return L1_2
end
L13_1.has_value_change_up = L14_1
function L14_1(A0_2)
  local L1_2
  L1_2 = A0_2._value_changed
  if L1_2 then
    L1_2 = A0_2._value_changed_up
    L1_2 = not L1_2
  end
  return L1_2
end
L13_1.has_value_change_down = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_up
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_down
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L13_1._close_finish_anim = L14_1
L14_1 = {}
L14_1.no_check = 1
L14_1.wait_check = 2
L14_1.fail_check = 3
L14_1.checking = 4
L13_1.check_state = L14_1
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L13_1.check_state
  L3_2 = L3_2.no_check
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_switcher
    L4_2 = L3_2
    L3_2 = L3_2.SwitchState
    L5_2 = "NoCheck"
    L3_2(L4_2, L5_2)
  else
    L3_2 = L13_1.check_state
    L3_2 = L3_2.wait_check
    if A1_2 == L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.mono_switcher
      L4_2 = L3_2
      L3_2 = L3_2.SwitchState
      L5_2 = "WaitCheck"
      L3_2(L4_2, L5_2)
    else
      L3_2 = L13_1.check_state
      L3_2 = L3_2.fail_check
      if A1_2 == L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.mono_switcher
        L4_2 = L3_2
        L3_2 = L3_2.SwitchState
        L5_2 = "FailCheck"
        L3_2(L4_2, L5_2)
      else
        L3_2 = L13_1.check_state
        L3_2 = L3_2.checking
        if A1_2 == L3_2 then
          L3_2 = A0_2._binder
          L3_2 = L3_2.mono_switcher
          L4_2 = L3_2
          L3_2 = L3_2.SwitchState
          L5_2 = "Checking"
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_check_complete
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L13_1.check_state
  L5_2 = L5_2.no_check
  L5_2 = A1_2 ~= L5_2 and L5_2
  L3_2(L4_2, L5_2)
end
L13_1.show_state = L14_1
return L13_1
