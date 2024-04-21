local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicSynthesisSelectMainAffixLeftPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._config = L2_2
  L2_2 = A0_2._config
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_rarity
  L4_2 = A0_2._config
  L4_2 = L4_2.Rarity
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A3_2 and A2_2 then
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = tonumber
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L4_2 < L5_2 then
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "<color=\"#C84A32\">%s</color>"
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      A1_2 = L4_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_total_count
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_count_slash
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_total_count
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_count_slash
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_total_count
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_item_icon
  L4_2 = A0_2._config
  L4_2 = L4_2.ItemFigureIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._set_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._config
  L3_2 = L3_2.ItemName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_current_have
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ItemCommonIcon_Num"
  L1_2(L2_2, L3_2)
end
L0_1._set_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_rarity
  L6_2 = L2_2.FrameItemRarityPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._set_rarity = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._config
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_click = L1_1
return L0_1
