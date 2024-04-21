local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoGraphFreeStyleItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._auto_click_when_select
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_click
        L0_3(L1_3)
      else
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.set_select
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._auto_click_when_select
      if not L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.set_select
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._on_click_handler = nil
  A0_2._on_click_listener = nil
  A0_2._data = nil
  A0_2._index = nil
  A0_2._auto_click_when_select = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._data = A1_2
  A0_2._index = A2_2
  A0_2._auto_click_when_select = A3_2
end
L0_1.set_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_icon = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_click_handler = A1_2
  A0_2._on_click_listener = A2_2
end
L0_1.register_click_handler = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "DisableAdd"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "NormalAdd"
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "IdlePlay"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "NormalAdd"
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_enable_effect = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "DisableAdd"
    L3_2(L4_2, L5_2)
  elseif A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "IdlePlay"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "NormalAdd"
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._on_click_handler
  if L1_2 then
    L1_2 = A0_2._on_click_handler
    L2_2 = A0_2._on_click_listener
    L3_2 = A0_2._data
    L4_2 = A0_2._index
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._on_click = L1_1
return L0_1
