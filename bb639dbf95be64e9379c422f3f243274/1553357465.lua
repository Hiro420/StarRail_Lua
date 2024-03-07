local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeSwitchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ItemComposeModule
L3_1 = {}
L3_1.Left = 1
L3_1.Right = 2
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_switch
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L5_2 = A0_2
  L4_2 = A0_2._check_is_same_series
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._is_same_series = L4_2
  A0_2._is_from_item_click = A3_2
  A0_2._selected_item_id = A1_2
  A0_2._switch_item_id_table = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_status
  L4_2(L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._switch_item_id_table
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 1
  L3_2 = A0_2._switch_item_id_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = A0_2._switch_item_id_table
    L7_2 = L7_2[L5_2]
    if L6_2 ~= L7_2 then
      L6_2 = false
      return L6_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._check_is_same_series = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemComposeConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._switch_item_id_table
  L3_2 = L3_1.Left
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemComposeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._switch_item_id_table
  L4_2 = L3_1.Right
  L3_2 = L3_2[L4_2]
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2.ItemID
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2.ItemID
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_left_icon
  L8_2 = L3_2.ItemIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_right_icon
  L8_2 = L4_2.ItemIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.InventoryModule
  L5_2 = L5_2.GetItemRarityConfig
  L6_2 = L3_2.Rarity
  L5_2 = L5_2(L6_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.InventoryModule
  L6_2 = L6_2.GetItemRarityConfig
  L7_2 = L4_2.Rarity
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_left_rarity_bg
  L10_2 = L5_2.FrameItemRarityPath
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_right_rarity_bg
  L10_2 = L6_2.FrameItemRarityPath
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_left_rarity_mask_bg
  L10_2 = L5_2.FrameItemRarityPath
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_right_rarity_mask_bg
  L10_2 = L6_2.FrameItemRarityPath
  L7_2(L8_2, L9_2, L10_2)
end
L0_1._setup_icon = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._selected_item_id
  L2_2 = A0_2._switch_item_id_table
  L2_2 = L2_2[1]
  if L1_2 == L2_2 then
    L1_2 = L3_1.Left
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = L3_1.Right
  ::lbl_10::
  A0_2._cur_side = L1_2
  L1_2 = A0_2._is_same_series
  if L1_2 then
    L1_2 = A0_2._is_from_item_click
    if L1_2 then
      L1_2 = A0_2._cur_side
      L2_2 = L3_1.Left
      if L1_2 == L2_2 then
        L1_2 = "SwitchLeft"
        if L1_2 then
          goto lbl_25
        end
      end
      L1_2 = "SwitchRight"
      ::lbl_25::
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_root
      L3_2 = L2_2
      L2_2 = L2_2.ResetTrigger
      L4_2 = "SwitchLeft"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_root
      L3_2 = L2_2
      L2_2 = L2_2.ResetTrigger
      L4_2 = "SwitchRight"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_root
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
  end
  else
    L1_2 = A0_2._cur_side
    L2_2 = L3_1.Left
    if L1_2 == L2_2 then
      L1_2 = "BtnSwitch_ToTop"
      if L1_2 then
        goto lbl_49
      end
    end
    L1_2 = "BtnSwitch_ToBottom"
    ::lbl_49::
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.GetLayerIndex
    L4_2 = "SwitchLayer"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_root
    L4_2 = L3_2
    L3_2 = L3_2.PlayInFixedTime
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._setup_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._cur_side
      L2_2 = L3_1.Left
      if L1_2 == L2_2 then
        L1_2 = A0_2._switch_item_id_table
        L2_2 = L3_1.Right
        L1_2 = L1_2[L2_2]
        if L1_2 then
          goto lbl_19
        end
      end
      L1_2 = A0_2._switch_item_id_table
      L2_2 = L3_1.Left
      L1_2 = L1_2[L2_2]
      ::lbl_19::
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_switch = L4_1
return L0_1
