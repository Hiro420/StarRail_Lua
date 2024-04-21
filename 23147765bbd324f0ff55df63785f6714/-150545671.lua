local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoBanItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoBanItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2._binder
  L4_2.TypeTag = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_click_callback = A1_2
  A0_2._on_click_callback_owner = A2_2
end
L0_1.register_on_click_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._aeon_data = A1_2
  L2_2 = A0_2._aeon_data
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_empty
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_empty
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_normal
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_empty
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_normal
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_aeon
  L5_2 = A0_2._aeon_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.AeonFigure
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_aeon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._aeon_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.RogueAeonPathName2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cross_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._aeon_data
  L4_2 = L4_2.IsCrossAeon
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_selected
  L4_2 = A0_2._aeon_data
  L4_2 = L4_2.IsSelected
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_click_callback
  if L1_2 then
    L1_2 = A0_2._on_click_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_click_callback
      L2_2 = A0_2._on_click_callback_owner
      L3_2 = A0_2._aeon_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root = L1_1
return L0_1
