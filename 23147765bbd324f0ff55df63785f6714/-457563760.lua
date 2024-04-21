local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueDoingTipPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2.current_progress_id = nil
  A0_2.active = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L0_1._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_click_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.current_progress_id
  if L2_2 ~= nil then
    L2_2 = A0_2.current_progress_id
    L3_2 = A1_2.AreaProgressID
    if L2_2 == L3_2 then
      return
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.RogueAreaRow
  L4_2 = L4_2.AreaNameID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_planet
  L5_2 = A1_2.RogueAreaRow
  L5_2 = L5_2.AreaTipsIcon
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.active
  if L3_2 == A1_2 then
    return
  end
  A0_2.active = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_click_area
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 and A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "FadeIn_Top"
    L3_2(L4_2, L5_2)
  elseif A1_2 and not A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "FadeIn_Bottom"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "FadeOut"
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_active = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._callback
  L2_2 = A0_2._listener
  L1_2(L2_2)
end
L0_1._on_click = L1_1
return L0_1
