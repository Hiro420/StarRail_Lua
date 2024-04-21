local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicInfoDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Equipment.StatusDetailInfoPanelBinderResult"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicInfoDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPropertyType
  L2_2 = L2_2.MaxHP
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarPropertyType
  L3_2 = L3_2.Attack
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarPropertyType
  L4_2 = L4_2.Defence
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2._simple_properties = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_status_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.simple_status_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_simple_status_info_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._avatar_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_simple_info
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A1_2
  A0_2._callback = A2_2
end
L0_1.set_toggle_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_property_data
  L3_2 = A0_2._simple_properties
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._simple_info_datas = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.simple_status_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._simple_info_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_simple_info = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._avatar_data
    L10_2 = L9_2
    L9_2 = L9_2.GetPropertyUIData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if A2_2 then
      L10_2 = A0_2._avatar_data
      L11_2 = L10_2
      L10_2 = L10_2.GetDisplayFormatPropertyByType
      L12_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2.Num = L10_2
      L9_2.AddNum = nil
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = #L3_2
    L12_2 = L12_2 + 1
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  return L3_2
end
L0_1._get_property_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._simple_info_datas
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.show_reverse_bg
  L7_2 = A2_2 % 2
  L7_2 = L7_2 == 0
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_simple_status_info_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.AvatarStatisticDialog"
  L3_2 = A0_2._avatar_data
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_detail = L1_1
return L0_1
