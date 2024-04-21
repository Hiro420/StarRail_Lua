local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaBtnSwitchLevelPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Initial = 1
L1_1.Ultimate = 2
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch
  L4_2 = A0_2._on_btn_switch
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1.Initial
  A0_2._type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_switch_btn
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._type = A1_2
end
L0_1.set_statistic_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._type
  L2_2 = L1_1.Initial
  A0_2._type = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_switch
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_switch_beginner
  L2_2.alpha = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_switch_max
  L2_2.alpha = 0.2
  L2_2 = L1_1.Ultimate
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_switch_btn
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BtnSwitchLevel_ToInitial"
    L2_2(L3_2, L4_2)
  end
end
L0_1.reset_switch_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.Initial
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_switch_btn
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BtnSwitchLevel_ToInitial"
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_1.Ultimate
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_switch_btn
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "BtnSwitchLevel_ToUltimate"
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.play_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_lv
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equipment
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equipment
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_lightcone_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_switch_status
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_switch_beginner
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_AvatarDetail_Switch_Min"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_switch_max
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_AvatarDetail_Switch_Max"
  L1_2(L2_2, L3_2)
end
L0_1._init_switch_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type
  L2_2 = L1_1.Initial
  if L1_2 == L2_2 then
    L1_2 = L1_1.Ultimate
    A0_2._type = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_switch_beginner
    L1_2.alpha = 0.2
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_switch_max
    L1_2.alpha = 1
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_switch_btn
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "BtnSwitchLevel_ToUltimate"
    L1_2(L2_2, L3_2)
  else
    L1_2 = L1_1.Initial
    A0_2._type = L1_2
    L1_2 = L1_1.Initial
    A0_2._tab_index = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_switch_beginner
    L1_2.alpha = 1
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_switch_max
    L1_2.alpha = 0.2
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_switch_btn
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "BtnSwitchLevel_ToInitial"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._callback
  L2_2 = A0_2._callback_self
  L3_2 = A0_2._type
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_switch = L2_1
return L0_1
