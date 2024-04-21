local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.StuffStats
L1_1 = "UIText_Activity_Museum_Upgrade_RenewPoint_Title"
L2_1 = "UIText_Activity_Museum_Upgrade_RenewPoint_Title_Select"
L3_1 = "UIText_Activity_Museum_Upgrade_RenewPoint_Content"
L4_1 = "SpriteOutput/Quest/Museum/MuseumLevelUpIcon/MuseumLevelUpIconAll.png"
L5_1 = "UIText_Activity_Museum_Upgrade_StatsA_Title"
L6_1 = "UIText_Activity_Museum_Upgrade_StatsA_Title_Select"
L7_1 = "UIText_Activity_Museum_Upgrade_StatsA_Content"
L8_1 = "SpriteOutput/Quest/Museum/MuseumLevelUpIcon/MuseumLevelUpIcon1.png"
L9_1 = "UIText_Activity_Museum_Upgrade_StatsB_Title"
L10_1 = "UIText_Activity_Museum_Upgrade_StatsB_Title_Select"
L11_1 = "UIText_Activity_Museum_Upgrade_StatsB_Content"
L12_1 = "SpriteOutput/Quest/Museum/MuseumLevelUpIcon/MuseumLevelUpIcon2.png"
L13_1 = "UIText_Activity_Museum_Upgrade_StatsC_Title"
L14_1 = "UIText_Activity_Museum_Upgrade_StatsC_Title_Select"
L15_1 = "UIText_Activity_Museum_Upgrade_StatsC_Content"
L16_1 = "SpriteOutput/Quest/Museum/MuseumLevelUpIcon/MuseumLevelUpIcon3.png"
L17_1 = "UIText_Activity_Museum_UpgradePage_MaxDesc"
L18_1 = "UIText_Activity_Museum_UpgradePage_Max"
L19_1 = "#E93B29"
L20_1 = "#383434"
L21_1 = "#F8F7ED"
L22_1 = G
L22_1 = L22_1.Class
L23_1 = "MuseumUpgradeItemPanel"
L24_1 = G
L24_1 = L24_1.BasePanel
L22_1 = L22_1(L23_1, L24_1)
function L23_1(A0_2)
  local L1_2
  A0_2._is_selected = false
end
L22_1.init = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataRefresh
  L4_2 = A0_2._on_museum_refresh_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumAreaUpgrade
  L4_2 = A0_2._on_museum_refresh_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumStatUpgrade
  L4_2 = A0_2._on_museum_refresh_notify
  L1_2(L2_2, L3_2, L4_2)
end
L22_1._on_load = L23_1
function L23_1(A0_2)
  local L1_2
  A0_2._area_data = nil
  A0_2._property_data = nil
end
L22_1._on_dispose = L23_1
function L23_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._stat_type = A1_2
  A0_2._area_data = A2_2
  A0_2._property_data = A3_2
  L4_2 = A0_2._get_item_textid
  L5_2 = A0_2._stat_type
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  A0_2._textid_name = L4_2
  A0_2._textid_preview_name = L5_2
  A0_2._textid_desc = L6_2
  L7_2 = A0_2._get_item_image
  L8_2 = A0_2._stat_type
  L7_2 = L7_2(L8_2)
  L9_2 = A0_2
  L8_2 = A0_2._async_load_sprite_to
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_icon
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._refresh
  L8_2(L9_2)
end
L22_1.setup_view = L23_1
function L23_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L22_1.get_first_selected_object = L23_1
function L23_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.interactable
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = nil
  ::lbl_11::
  return L1_2
end
L22_1.get_navigation_btn = L23_1
function L23_1(A0_2, A1_2, A2_2)
  A0_2._on_click = A1_2
  A0_2._on_click_listener = A2_2
end
L22_1.set_click_callback = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = A1_2
  L5_2 = A0_2._area_data
  L5_2 = L5_2.ID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L22_1.bind_reddot = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._property_data
  L1_2 = L1_2.CanUpdate
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._textid_name
  L5_2 = A0_2._property_data
  L5_2 = L5_2.Level
  L6_2 = A0_2._property_data
  L6_2 = L6_2.MaxLevel
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.cost_panel_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.max_tip_panel_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._stat_type
    L3_2 = L0_1.Unknown
    if L2_2 == L3_2 then
      L2_2 = A0_2._area_data
      L3_2 = L2_2
      L2_2 = L2_2.GetNextLevelRenewPointAddNum
      L2_2 = L2_2(L3_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MuseumAreaExcelTable
      L3_2 = L3_2.GetData
      L4_2 = A0_2._area_data
      L4_2 = L4_2.ID
      L5_2 = A0_2._property_data
      L5_2 = L5_2.Level
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MuseumAreaExcelTable
      L4_2 = L4_2.GetData
      L5_2 = A0_2._area_data
      L5_2 = L5_2.ID
      L6_2 = A0_2._property_data
      L6_2 = L6_2.Level
      L6_2 = L6_2 + 1
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = A0_2._textid_desc
      L8_2 = L2_2
      L9_2 = L4_2.RequireStatsA
      L10_2 = L3_2.RequireStatsA
      L9_2 = L9_2 - L10_2
      L10_2 = L4_2.RequireStatsB
      L11_2 = L3_2.RequireStatsB
      L10_2 = L10_2 - L11_2
      L11_2 = L4_2.RequireStatsC
      L12_2 = L3_2.RequireStatsC
      L11_2 = L11_2 - L12_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    else
      L2_2 = A0_2._area_data
      L3_2 = L2_2
      L2_2 = L2_2.GetNextLevelStatAddNum
      L4_2 = A0_2._stat_type
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = A0_2._textid_desc
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_cost
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._property_data
    L4_2 = L4_2.UpdateCost
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_cost
    L4_2 = A0_2
    L3_2 = A0_2._get_cost_color
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = G
    L2_2 = L2_2.MuseumUtils
    L2_2 = L2_2.get_fund_item_data
    L2_2 = L2_2()
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_cost_item
    L6_2 = L2_2.ItemIconPath
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = false
    L3_2 = A0_2._stat_type
    L4_2 = L0_1.Unknown
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MuseumAreaExcelTable
      L3_2 = L3_2.GetData
      L4_2 = A0_2._area_data
      L4_2 = L4_2.ID
      L5_2 = A0_2._property_data
      L5_2 = L5_2.Level
      L5_2 = L5_2 + 1
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2 ~= nil
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MuseumStatsExcelTable
      L3_2 = L3_2.GetData
      L4_2 = A0_2._property_data
      L4_2 = L4_2.Level
      L4_2 = L4_2 + 1
      L5_2 = A0_2._area_data
      L5_2 = L5_2.ID
      L6_2 = A0_2._stat_type
      L6_2 = #L6_2
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2 ~= nil
    end
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L17_1
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L18_1
      L3_2(L4_2, L5_2)
    end
  end
end
L22_1._refresh = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_click
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click
    L2_2 = A0_2._on_click_listener
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L22_1._on_btn_root = L23_1
function L23_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._property_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._is_selected
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_root
    L1_2(L2_2)
  end
end
L22_1._on_museum_refresh_notify = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_selected_title
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cost
  L4_2 = A0_2
  L3_2 = A0_2._get_cost_color
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
end
L22_1.set_selected = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._textid_preview_name
    L5_2 = A0_2._property_data
    L5_2 = L5_2.Level
    L6_2 = A0_2._property_data
    L6_2 = L6_2.Level
    L6_2 = L6_2 + 1
    L7_2 = A0_2._property_data
    L7_2 = L7_2.MaxLevel
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._textid_name
    L5_2 = A0_2._property_data
    L5_2 = L5_2.Level
    L6_2 = A0_2._property_data
    L6_2 = L6_2.MaxLevel
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L22_1._setup_selected_title = L23_1
function L23_1(A0_2)
  local L1_2
  L1_2 = A0_2._stat_type
  return L1_2
end
L22_1.get_stat_type = L23_1
function L23_1(A0_2)
  local L1_2
  L1_2 = A0_2._property_data
  return L1_2
end
L22_1.get_prop_data = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.Unknown
  if A0_2 == L1_2 then
    L1_2 = L1_1
    L2_2 = L2_1
    L3_2 = L3_1
    return L1_2, L2_2, L3_2
  else
    L1_2 = L0_1.StatsA
    if A0_2 == L1_2 then
      L1_2 = L5_1
      L2_2 = L6_1
      L3_2 = L7_1
      return L1_2, L2_2, L3_2
    else
      L1_2 = L0_1.StatsB
      if A0_2 == L1_2 then
        L1_2 = L9_1
        L2_2 = L10_1
        L3_2 = L11_1
        return L1_2, L2_2, L3_2
      else
        L1_2 = L0_1.StatsC
        if A0_2 == L1_2 then
          L1_2 = L13_1
          L2_2 = L14_1
          L3_2 = L15_1
          return L1_2, L2_2, L3_2
        end
      end
    end
  end
  L1_2 = nil
  L2_2 = nil
  return L1_2, L2_2
end
L22_1._get_item_textid = L23_1
function L23_1(A0_2)
  local L1_2
  L1_2 = L0_1.Unknown
  if A0_2 == L1_2 then
    L1_2 = L4_1
    return L1_2
  else
    L1_2 = L0_1.StatsA
    if A0_2 == L1_2 then
      L1_2 = L8_1
      return L1_2
    else
      L1_2 = L0_1.StatsB
      if A0_2 == L1_2 then
        L1_2 = L12_1
        return L1_2
      else
        L1_2 = L0_1.StatsC
        if A0_2 == L1_2 then
          L1_2 = L16_1
          return L1_2
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L22_1._get_item_image = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_selected
  if L1_2 then
    L1_2 = L21_1
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = L20_1
  ::lbl_8::
  L2_2 = G
  L2_2 = L2_2.MuseumUtils
  L2_2 = L2_2.is_upgrade_cost_affordable
  L3_2 = A0_2._property_data
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L1_2 = L19_1
  end
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_2
  return L2_2(L3_2)
end
L22_1._get_cost_color = L23_1
return L22_1
