local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BattlePassDisplayPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._lightcone_datas = L1_2
  A0_2._current_data = nil
  L2_2 = A0_2
  L1_2 = A0_2._init_lightcone_datas
  L1_2(L2_2)
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._lightcone_datas = L1_2
  L1_2 = L0_1.DisplayedLightConeIDs
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ItemFactory
    L6_2 = L6_2.CreateEquipmentItemData
    L7_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._lightcone_datas
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._lightcone_datas
  L2_2 = L2_2[1]
  A0_2._current_data = L2_2
end
L1_1._init_lightcone_datas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_lightcones
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 ~= nil then
    A0_2._current_data = A1_2
  end
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = A0_2._lightcone_datas
  end
  A0_2._lightcone_datas = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_list_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_detail_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_type_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_detail_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_view
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._current_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_type
  L5_2 = L1_2.BgPath
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_type_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_container
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_data
  L1_2(L2_2, L3_2)
end
L1_1._setup_detail_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lightcone_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._lightcone_datas
  L3_2 = #L3_2
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._lightcone_datas
  L1_2 = #L1_2
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_lightcones
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._lightcone_datas
    L3_2 = #L3_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_lightcones
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._get_current_index
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 - 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_lightcones
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1._setup_list_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_lightcones
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._refresh_list_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_lightcone_selected
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_auto_trigger_btn
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._lightcone_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ConfigID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = L5_2.ConfigID
  L9_2 = A0_2._current_data
  L9_2 = L9_2.ConfigID
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_optional_click_data
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._lightcone_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ConfigID
    L7_2 = A0_2._current_data
    L7_2 = L7_2.ConfigID
    if L6_2 == L7_2 then
      return L4_2
    end
  end
  L1_2 = nil
  return L1_2
end
L1_1._get_current_index = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._current_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L1_1._on_lightcone_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_index
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 - 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_lightcones
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.UserObjectData
  L5_2 = L3_2
  L4_2 = L3_2.get_btn_object
  return L4_2(L5_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
end
L1_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_detail
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
  end
end
L1_1._on_detail_select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_detail
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
  end
end
L1_1._on_detail_select_next = L2_1
return L1_1
