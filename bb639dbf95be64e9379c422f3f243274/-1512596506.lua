local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradePageInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.System
L1_1 = L1_1.Convert
L1_1 = L1_1.ToUInt32
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AetherDivideConstCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "AetherDivide_CommonExp"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L1_1 = L1_1(L2_1)
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AvatarPropertyType
L3_1 = L3_1.MaxHP
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.AvatarPropertyType
L4_1 = L4_1.Attack
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.AvatarPropertyType
L5_1 = L5_1.Speed
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = {}
L3_1.Enable = "#86FFF9"
L3_1.Disable = "#FF4C4C"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion_prev
  L4_2 = A0_2._on_click_promotion_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion_next
  L4_2 = A0_2._on_click_promotion_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeResult.AetherSpiritUpgradeResultDialogSinglePropertyItem"
  L6_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeResult.AetherSpiritUpgradeResultDialogSinglePropertyItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._property_list_panel = L1_2
  L1_2 = A0_2._property_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_promotion_change_callback = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_badge_enough
  return L1_2
end
L0_1.get_is_badge_enough = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_mat_enough
  return L1_2
end
L0_1.get_is_mat_enough = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._spirit_data = A1_2
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.Promotion
  A0_2._promotion = L2_2
  L2_2 = A0_2._promotion
  L2_2 = L2_2 + 1
  A0_2._new_promotion = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._new_promotion
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.MaxPromotion
  if L1_2 > L2_2 then
    L1_2 = A0_2._spirit_data
    L1_2 = L1_2.MaxPromotion
    A0_2._new_promotion = L1_2
  else
    L1_2 = A0_2._new_promotion
    if L1_2 < 1 then
      A0_2._new_promotion = 1
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_promotion_prev
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._new_promotion
  L4_2 = A0_2._promotion
  L3_2 = L3_2 - L4_2
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_promotion_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._new_promotion
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.MaxPromotion
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_promotion_upgrade_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_property
  L1_2(L2_2)
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._new_promotion
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._promotion
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_add_level_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._new_promotion
  L4_2 = A0_2._promotion
  L3_2 = L3_2 > L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._new_promotion
  L2_2 = A0_2._promotion
  if L1_2 > L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_add_level_value
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._new_promotion
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._check_is_badge_enough
    L1_2 = L1_2(L2_2)
    A0_2._is_badge_enough = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._check_is_mat_enough
    L1_2 = L1_2(L2_2)
    A0_2._is_mat_enough = L1_2
    L1_2 = A0_2._is_badge_enough
    if L1_2 then
      L1_2 = A0_2._is_mat_enough
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_add_level_value
        L2_2 = G
        L2_2 = L2_2.UIColorUtils
        L2_2 = L2_2.GetColor
        L3_2 = L3_1.Enable
        L2_2 = L2_2(L3_2)
        L1_2.color = L2_2
    end
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_add_level_value
      L2_2 = G
      L2_2 = L2_2.UIColorUtils
      L2_2 = L2_2.GetColor
      L3_2 = L3_1.Disable
      L2_2 = L2_2(L3_2)
      L1_2.color = L2_2
    end
  end
end
L0_1._setup_promotion_upgrade_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spirit_data
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsBadgeEnough
  return L1_2(L2_2)
end
L0_1._check_is_badge_enough = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spirit_data
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsMatEnough
  return L1_2(L2_2)
end
L0_1._check_is_mat_enough = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_property_table
  L1_2(L2_2)
  L1_2 = A0_2._property_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._property_table
  L1_2(L2_2, L3_2)
end
L0_1._setup_property = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._promotion
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.MaxPromotion
  if L1_2 >= L2_2 then
    L1_2 = 0
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = 1
  ::lbl_10::
  L2_2 = {}
  A0_2._property_table = L2_2
  L2_2 = 1
  L3_2 = L2_1
  L3_2 = #L3_2
  L3_2 = L3_2 - L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = L2_1[L5_2]
    L6_2.Type = L7_2
    L7_2 = A0_2._spirit_data
    L8_2 = L7_2
    L7_2 = L7_2.GetDisplayFormatPropertyByType
    L9_2 = L6_2.Type
    L10_2 = A0_2._promotion
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.BeforeValue = L7_2
    L7_2 = A0_2._spirit_data
    L8_2 = L7_2
    L7_2 = L7_2.GetDisplayFormatPropertyByType
    L9_2 = L6_2.Type
    L10_2 = A0_2._new_promotion
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.CurrentValue = L7_2
    L7_2 = A0_2._promotion
    L6_2.CurPromotion = L7_2
    L7_2 = A0_2._new_promotion
    L6_2.NewPromotion = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._property_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._generate_property_table = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._new_promotion
  L1_2 = L1_2 - 1
  A0_2._new_promotion = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_click_promotion_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._new_promotion
  L1_2 = L1_2 + 1
  A0_2._new_promotion = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_click_promotion_next = L4_1
return L0_1
