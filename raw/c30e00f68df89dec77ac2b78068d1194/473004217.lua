local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAeonOptionItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._aeon_id = 0
  A0_2._aeon_row = nil
  A0_2._aeon_data = nil
  A0_2._level_before = 0
  A0_2._exp_before = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.change_btn_status = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  A0_2._config = A1_2
  L5_2 = A0_2._config
  L5_2 = L5_2.index
  A0_2._index = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn
  L6_2 = L5_2
  L5_2 = L5_2.SetChecked
  L7_2 = false
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.register_click_callback
  L7_2 = A2_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_option
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._config
  L3_2 = L3_2.text_id
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._config
  L2_2 = L2_2.icon_path
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A0_2._config
    L5_2 = L5_2.icon_path
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_on_btn_click
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._config
  L1_2.is_chosen = true
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._config
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._do_on_btn_click = L1_1
return L0_1
