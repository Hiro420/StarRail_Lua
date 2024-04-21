local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueActionPointBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L2_2 = L2_2.CurAreaID
  L3_2 = G
  L3_2 = L3_2.ChessRogueUtils
  L3_2 = L3_2.is_area_the_guide_area_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.RogueNousUtils
  L4_2 = L4_2.IsGuideOneArea
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L3_2 or L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.safe_set_active
    L7_2 = false
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2._get_cur_action_point
    L5_2 = L5_2(L6_2)
  end
  L6_2 = 0 <= L5_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_title
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  if L6_2 then
    L9_2 = "UIText_RogueDLC_ActionPoint"
    if L9_2 then
      goto lbl_41
    end
  end
  L9_2 = "UIText_RogueDLC_ActionPoint_Overdraw_Level"
  ::lbl_41::
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_value
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = math
  L9_2 = L9_2.abs
  L10_2 = L5_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = nil
  if L6_2 then
    L8_2 = G
    L8_2 = L8_2.ChessRogueUtils
    L8_2 = L8_2.get_const_action_point_warning_num
    L8_2 = L8_2()
    if L5_2 < L8_2 then
      L7_2 = 2
    else
      L7_2 = 0
    end
  else
    L7_2 = 1
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.animator
  L9_2 = L8_2
  L8_2 = L8_2.SetInteger
  L10_2 = "Status"
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_action_point
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = G
  L3_2 = L3_2.ChessRogueUtils
  L3_2 = L3_2.get_const_action_point_warning_num
  L3_2 = L3_2()
  if L1_2 >= L3_2 then
    L2_2 = "ReduceNormal"
  elseif 0 <= L1_2 then
    L2_2 = "ReduceWarningHint"
  else
    L2_2 = "ReduceWarning"
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.play_reduce_animation = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L1_2 = L1_2.CurActionPoint
  return L1_2
end
L0_1._get_cur_action_point = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_action_point
  L1_2 = L1_2(L2_2)
  L2_2 = ""
  if 0 <= L1_2 then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_RogueDLC_ActionPoint_Overdraw_Current"
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ActionPointOverdrawExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L3_2.MazeBuff
      if L4_2 then
        goto lbl_26
      end
    end
    L4_2 = 0
    ::lbl_26::
    L5_2 = G
    L5_2 = L5_2.BuffUtils
    L5_2 = L5_2.GetMazeBuffData
    L6_2 = L4_2
    L7_2 = 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = L5_2.BuffDesc
      L8_2 = G
      L8_2 = L8_2.UITextUtils
      L8_2 = L8_2.GetSkillParams
      L9_2 = L5_2.ParamList
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L2_2 = L6_2
    end
  end
  L3_2 = G
  L3_2 = L3_2.ChessRogueUtils
  L3_2 = L3_2.get_const_action_point_intro_param
  L3_2 = L3_2()
  L4_2 = {}
  L5_2 = 0
  L6_2 = L3_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L4_2
    L11_2 = L3_2[L8_2]
    L11_2 = L11_2.UintValue
    L9_2(L10_2, L11_2)
  end
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "UIText_RogueDLC_ActionPoint"
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = "UIText_RogueDLC_ActionPoint_Overdraw_Intro"
  L8_2 = L2_2
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = L4_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.show_introduce_with_text
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1._on_btn_click = L2_1
return L0_1
