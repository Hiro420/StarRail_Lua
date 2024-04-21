local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = "#8ef254"
L3_1 = "#eb4d3d"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ActivityClockParkGamePlayAttributeMergeProgressPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = G
  L3_2 = L3_2.ConstValueUtils
  L3_2 = L3_2.get_uint_array
  L4_2 = "CheckPoint_Show_Script"
  L3_2 = L3_2(L4_2)
  A0_2._enable_script_id_list = L3_2
  L3_2 = G
  L3_2 = L3_2.ConstValueUtils
  L3_2 = L3_2.get_uint_value
  L4_2 = "CheckPoint_Maximum_5"
  L3_2 = L3_2(L4_2)
  A0_2._max_length = L3_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._is_show_merge_progress
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_check_point_targets
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_attribute_progress
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_merge_attribute_value
    L5_2 = L4_2
    L4_2 = L4_2.SetCustomizedText
    L6_2 = A1_2 + A2_2
    L4_2(L5_2, L6_2)
  end
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.Story
  if L1_2 ~= L2_2 then
    L2_2 = L1_1.SelectStartChapter
    if L1_2 ~= L2_2 then
      goto lbl_11
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_11::
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.ScriptID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._enable_script_id_list
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 ~= nil
  return L3_2
end
L4_1._is_show_merge_progress = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ChapterInfo
  L1_2 = L1_2.CheckPointInfo
  L2_2 = L1_2.HasCheck
  if not L2_2 then
    return
  end
  L2_2 = L1_2.CheckTotalAttributeValue
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = A0_2._max_length
  L4_2 = L2_2 / L4_2
  L5_2 = 0.5
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_target
  L4_2.anchorMin = L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_target
  L4_2.anchorMax = L3_2
end
L4_1._setup_check_point_targets = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if 0 <= A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_cur
    L4_2 = A0_2._max_length
    L4_2 = A1_2 / L4_2
    L3_2.value = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_pre
    L4_2 = A1_2 + A2_2
    L5_2 = A0_2._max_length
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
    L5_2 = A0_2._max_length
    L4_2 = L4_2 / L5_2
    L3_2.value = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_pre
    L4_2 = A0_2._max_length
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
L4_1._setup_attribute_progress = L5_1
return L4_1
