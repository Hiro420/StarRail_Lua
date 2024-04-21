local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeGridItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicGridItem"
L2_1 = G
L2_1 = L2_1.ItemComposeGridItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_item
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_item
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._item_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_bg
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_bg
    L2_2.alpha = 1.0
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_panel
  L4_2 = A0_2._item_data
  L4_2 = L4_2.ItemID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsLock
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsLock
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsLock
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item_data
  L2_2 = L2_2.IsLock
  if not L2_2 then
    L2_2 = A0_2._item_data
    L3_2 = L2_2
    L2_2 = L2_2.CanCompose
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ComposeItemFailedType
    L3_2 = L3_2.NeedResource
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._item_data
      L3_2 = L2_2
      L2_2 = L2_2.CanCompose
      L2_2 = L2_2(L3_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ComposeItemFailedType
      L3_2 = L3_2.InsufficientRemainComposeNum
      if L2_2 ~= L3_2 then
        goto lbl_70
      end
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_lock_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_lock_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  ::lbl_70::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._item_data
  L3_2 = L3_2.ItemID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rarity_star
  L5_2 = L2_2.Rarity
  L5_2 = #L5_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_formula_locked
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_red_dot
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._is_selected
  if L2_2 == A1_2 and A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "Checked"
    L5_2 = 1
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_item
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_selected = A1_2
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "Item not exists, config id: "
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_icon
  L5_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_rarity
  L5_2 = L2_2.Rarity
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_item
  L6_2 = A0_2._on_btn_click
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L5_2 = L5_2.rarity_frame
  L6_2 = L2_2.FrameItemRarityPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rairty_bg
  L6_2 = L2_2.FrameItemRarityBgPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_2.LineItemRarityColor
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.rairty_line
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColorWithOriginAlpha
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.rairty_line
  L7_2 = L7_2.color
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.color = L5_2
end
L0_1.set_rarity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_rarity_star = L1_1
return L0_1
