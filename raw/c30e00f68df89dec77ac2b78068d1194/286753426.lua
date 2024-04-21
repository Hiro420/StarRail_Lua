local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicTabShownItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._invoke_callback
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._relic_config = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.ID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_info
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.ItemFigureIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RelicBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._relic_config
  L3_2 = L3_2.Type
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BaseTypeText
  L3_2(L4_2, L5_2)
end
L0_1._set_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._relic_config
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_default_click
    L1_2(L2_2)
  end
end
L0_1._invoke_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._relic_config
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1._on_default_click = L1_1
return L0_1
