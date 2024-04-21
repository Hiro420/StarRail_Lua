local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDimensionGroupPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDimensionGroupPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = "UIText_TitleType_Slash"
L3_1 = 6
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._avatar_data = A3_2
  A0_2._cur_selected_avatar = nil
  L5_2 = A0_2
  L4_2 = A0_2.fetch_ui3d
  L4_2 = L4_2(L5_2)
  A0_2._avatar_ui3d = L4_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.on_btn_close_detail
    L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.on_btn_open_detail
      L2_2(L3_2)
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.is_bound
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._custom_refresh
      L2_2(L3_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.set_async_callback
    L4_2 = A0_2
    L5_2 = A0_2._custom_refresh
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
end
L0_1._custom_refresh = L4_1
function L4_1(A0_2, A1_2)
  A0_2._select_dimension_callback = A1_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2)
  A0_2._close_detail_callback = A1_2
end
L0_1.register_close_detail_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.PlayerData
  A0_2._player_data = L1_2
  L1_2 = {}
  A0_2._dimension_data_list = L1_2
  A0_2._selected_dimension_index = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_hero_path_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_close_detail_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = L0_1.on_btn_close_detail
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2.on_btn_close_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_open
  L4_2 = A0_2.on_btn_open_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_hero_path_data
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_avatar_type_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L2_1
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2.BaseTypeText
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.AvatarName
  L2_2(L3_2, L4_2, L5_2, L6_2)
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    A0_2._selected_dimension_index = A0_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_btn_back
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetActive
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh
    L1_3(L2_3)
    L1_3 = A0_2._select_dimension_callback
    if L1_3 ~= nil then
      L1_3 = A0_2._select_dimension_callback
      L1_3()
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.player_hero_path_dimension_group_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.player_hero_path_dimension_group_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._dimension_data_list
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.player_hero_path_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._dimension_data_list
  L6_2 = A0_2._selected_dimension_index
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._dimension_data_list = L1_2
  L1_2 = A0_2._player_data
  L1_2 = L1_2.HeroPathData
  L2_2 = L1_2
  L1_2 = L1_2.GetPlayerHeroPathData
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._dimension_data_list
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._get_hero_path_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_hero_path_played_fade_in
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_open
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._close_detail_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_detail_callback
    L1_2()
  end
end
L0_1.on_btn_close_detail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_hero_path_played_fade_in
  if L1_2 == true then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_open
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._select_dimension_callback
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
    L1_2 = A0_2._select_dimension_callback
    L1_2()
  end
end
L0_1.on_btn_open_detail = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.SkillTree
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._select_dimension_callback = nil
  A0_2._close_detail_callback = nil
end
L0_1._on_dispose = L4_1
return L0_1
