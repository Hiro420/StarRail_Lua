local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyChooseDirectionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = "5178"
L3_1 = "Monopoly_Activity_BubbleTalk_Case_RoadSelect"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetCurPlayingCellConfig
  L5_2 = L5_2(L6_2)
  A0_2._cur_cell_data = L5_2
  A0_2._step_count = A1_2
  A0_2._on_choose_direction_cbk = A2_2
  A0_2._on_choose_direction_listener = A3_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.choose_controller
  L6_2 = L5_2
  L5_2 = L5_2.Init
  L7_2 = A4_2
  L5_2(L6_2, L7_2)
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.first_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.second_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.forth_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.third_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.ShowPlayerBubble
  L2_2 = L3_1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.hint_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_MainPage_Move_LeftSteps"
  L4_2 = A0_2._step_count
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1.show = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._cur_cell_data
    L5_2 = L5_2.NextCellRotateAngle
    L5_2 = L5_2[L4_2]
    if 0 <= L5_2 and L5_2 < 45 or 315 <= L5_2 then
      L7_2 = A0_2
      L6_2 = A0_2._bind_btn_callback
      L8_2 = A0_2._binder
      L8_2 = L8_2.first_btn
      L9_2 = A0_2._on_direction_btn_clicked
      L10_2 = L4_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.first_btn
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    elseif 45 <= L5_2 and L5_2 < 135 then
      L7_2 = A0_2
      L6_2 = A0_2._bind_btn_callback
      L8_2 = A0_2._binder
      L8_2 = L8_2.second_btn
      L9_2 = A0_2._on_direction_btn_clicked
      L10_2 = L4_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.second_btn
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    elseif 135 <= L5_2 and L5_2 < 225 then
      L7_2 = A0_2
      L6_2 = A0_2._bind_btn_callback
      L8_2 = A0_2._binder
      L8_2 = L8_2.forth_btn
      L9_2 = A0_2._on_direction_btn_clicked
      L10_2 = L4_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.forth_btn
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    elseif 225 <= L5_2 and L5_2 < 315 then
      L7_2 = A0_2
      L6_2 = A0_2._bind_btn_callback
      L8_2 = A0_2._binder
      L8_2 = L8_2.third_btn
      L9_2 = A0_2._on_direction_btn_clicked
      L10_2 = L4_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.third_btn
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._setup_btn = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_choose_direction_cbk
  if L2_2 then
    L2_2 = A0_2._on_choose_direction_listener
    if L2_2 then
      L2_2 = A0_2._on_choose_direction_cbk
      L3_2 = A0_2._on_choose_direction_listener
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_direction_btn_clicked = L4_1
return L0_1
