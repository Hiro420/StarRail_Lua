local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanelBinderResult"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarStatisticPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 6
L2_1 = 0.4
function L3_1(A0_2, A1_2)
end
L0_1.setup_in_control_button_enable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_status_info_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = {}
  A0_2._avatar_property_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPropertyExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsDisplay
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._avatar_property_table
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._avatar_property_table
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Order
    L3_3 = A1_3.Order
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_detail
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L2_2.onSelectTrigger = L3_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._is_refresh_statistic = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.AvatarStatisticDialog"
  L3_2 = A0_2._avatar_data
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_detail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_info
  L1_2(L2_2)
  L1_2 = A0_2._is_refresh_statistic
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = L1_1
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_max_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMaxLv
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_exp_number
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_current_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.CurrentExp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentLvMaxExp
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_exp_progress
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.CurrentExp
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentLvMaxExp
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 / L3_2
  L1_2.value = L2_2
end
L0_1._setup_avatar_info = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "_on_status_info_change"
  L3_2(L4_2)
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.StatusDetailInfoPanel
    L8_2 = G
    L8_2 = L8_2.StatusDetailInfoPanelBinderResult
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._avatar_property_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._avatar_data
  L7_2 = L6_2
  L6_2 = L6_2.GetDisplayFormatPropertyByType
  L8_2 = L5_2.PropertyType
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = {}
  L7_2.Num = L6_2
  L8_2 = L5_2.PropertyName
  L7_2.Title = L8_2
  L8_2 = L5_2.IconPath
  L7_2.IconPath = L8_2
  L7_2.AddNum = nil
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.show_reverse_bg
  L10_2 = A2_2 % 2
  L10_2 = L10_2 == 0
  L8_2(L9_2, L10_2)
  return L3_2
end
L0_1._on_status_info_change = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
