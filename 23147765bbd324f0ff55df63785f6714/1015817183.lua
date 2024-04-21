local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SelectGenderPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = "Ev_sfx_ui_system_create_avatar_gender_select"
function L3_1(A0_2)
  local L1_2
  A0_2._btn_enabled = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.set_gender_selected_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._confirm_callback = A1_2
  A0_2._confirm_callback_self = A2_2
end
L0_1.set_confirm_callback = L3_1
function L3_1(A0_2, A1_2)
  A0_2._btn_enabled = A1_2
end
L0_1.set_btn_enable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_change_gender
  L4_2 = A0_2._on_exchange_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_confirm_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_enabled
  if L1_2 then
    L1_2 = A0_2._callback
    if L1_2 then
      L1_2 = A0_2._callback_self
      if L1_2 then
        L1_2 = A0_2._callback
        L2_2 = A0_2._callback_self
        L1_2(L2_2)
        L2_2 = A0_2
        L1_2 = A0_2._post_exchange_sound
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_gender_exchange = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._owner
    L1_2 = L1_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Check
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_gender_exchange
      L0_3(L1_3)
    end
    L4_2 = L1_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_gender_exchange
    L1_2(L2_2)
  end
end
L0_1._on_exchange_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_enabled
  if L1_2 then
    L1_2 = A0_2._confirm_callback
    if L1_2 then
      L1_2 = A0_2._confirm_callback_self
      if L1_2 then
        L1_2 = A0_2._confirm_callback
        L2_2 = A0_2._confirm_callback_self
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_confirm_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._post_exchange_sound = L3_1
return L0_1
