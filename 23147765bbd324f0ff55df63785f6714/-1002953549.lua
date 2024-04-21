local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.EvolveBuildMixDetailPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildMixPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildMixPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mix_list_view
  L2_2 = L1_2
  L1_2 = L1_2.InitGridView
  L3_2 = 0
  L4_2 = A0_2._on_mix_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.EvolveBuildMixDetailPanel
  L4_2 = G
  L4_2 = L4_2.EvolveBuildMixDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._detail_panel = L1_2
  L1_2 = A0_2._detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EvolveBuildUtils
  L1_2 = L1_2.GetSortedMixData
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._mix_data = L2_2
  L2_2 = {}
  A0_2._mix_list_panels = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mix_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._mix_data
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mix_list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.BattleEvolveBuildMixListPanel
    L8_2 = G
    L8_2 = L8_2.BattleEvolveBuildMixListPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.register_on_btn_root_callback
    L7_2 = A0_2._on_mix_prop_btn_root
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_on_navi_callback
    L7_2 = A0_2._on_navigation
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._mix_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = false
  L9_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._mix_list_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  L5_2 = A0_2._pre_select_index
  if L5_2 then
    L5_2 = A0_2._pre_select_type
    if L5_2 then
      L5_2 = A0_2._pre_select_index
      L6_2 = A2_2 + 1
      if L5_2 == L6_2 then
        L6_2 = L4_2
        L5_2 = L4_2.set_checked
        L7_2 = A0_2._pre_select_type
        L8_2 = true
        L5_2(L6_2, L7_2, L8_2)
      end
  end
  elseif A2_2 == 0 then
    L6_2 = L4_2
    L5_2 = L4_2.trigger_weapon_click
    L5_2(L6_2)
  end
  return L3_2
end
L0_1._on_mix_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._pre_select_index
  if L2_2 then
    L2_2 = A0_2._pre_select_type
    if L2_2 then
      L2_2 = A0_2._mix_list_panels
      L3_2 = A0_2._pre_select_index
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L2_2 = A0_2._mix_list_panels
        L3_2 = A0_2._pre_select_index
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2
        L2_2 = L2_2.set_checked
        L4_2 = A0_2._pre_select_type
        L5_2 = false
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
  L3_2 = A1_2
  L2_2 = A1_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.gear_id
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.index
  A0_2._pre_select_index = L2_2
  L2_2 = A1_2.type
  A0_2._pre_select_type = L2_2
end
L0_1._on_mix_prop_btn_root = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_navigation_target
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._move_and_set_navigation
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mix_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByRowColumn
  L3_2 = 0
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_btn
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if A3_2 then
    return
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Up
  if L5_2 == L6_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.mix_list_view
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = A4_2.index
    L7_2 = L7_2 - 1
    L7_2 = L7_2 - 2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L5_2.UserObjectData
      if L6_2 then
        L6_2 = L5_2.UserObjectData
        L7_2 = L6_2
        L6_2 = L6_2.get_btn
        L8_2 = A4_2.type
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = A0_2
        L7_2 = A0_2._move_and_set_navigation
        L9_2 = L6_2.gameObject
        L7_2(L8_2, L9_2)
      end
    end
  else
    L5_2 = A1_2.moveDir
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.EventSystems
    L6_2 = L6_2.MoveDirection
    L6_2 = L6_2.Down
    if L5_2 == L6_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.mix_list_view
      L6_2 = L5_2
      L5_2 = L5_2.GetShownItemByItemIndex
      L7_2 = A4_2.index
      L7_2 = L7_2 + 1
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 == nil then
        L6_2 = A0_2._binder
        L6_2 = L6_2.mix_list_view
        L7_2 = L6_2
        L6_2 = L6_2.GetShownItemByItemIndex
        L8_2 = A4_2.index
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      end
      if L5_2 then
        L6_2 = L5_2.UserObjectData
        if L6_2 then
          L6_2 = L5_2.UserObjectData
          L7_2 = L6_2
          L6_2 = L6_2.get_btn
          L8_2 = A4_2.type
          L6_2 = L6_2(L7_2, L8_2)
          L8_2 = A0_2
          L7_2 = A0_2._move_and_set_navigation
          L9_2 = L6_2.gameObject
          L7_2(L8_2, L9_2)
        end
      end
    else
      L5_2 = A1_2.moveDir
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.EventSystems
      L6_2 = L6_2.MoveDirection
      L6_2 = L6_2.Right
      if L5_2 == L6_2 then
        L5_2 = A4_2.index
        L5_2 = L5_2 % 2
        if L5_2 == 1 then
          L5_2 = A0_2._binder
          L5_2 = L5_2.mix_list_view
          L6_2 = L5_2
          L5_2 = L5_2.GetShownItemByItemIndex
          L7_2 = A4_2.index
          L5_2 = L5_2(L6_2, L7_2)
          if L5_2 then
            L6_2 = L5_2.UserObjectData
            if L6_2 then
              L6_2 = L5_2.UserObjectData
              L7_2 = L6_2
              L6_2 = L6_2.get_btn
              L8_2 = CS
              L8_2 = L8_2.RPG
              L8_2 = L8_2.GameCore
              L8_2 = L8_2.EvolveGearType
              L8_2 = L8_2.Tool
              L6_2 = L6_2(L7_2, L8_2)
              L8_2 = A0_2
              L7_2 = A0_2._move_and_set_navigation
              L9_2 = L6_2.gameObject
              L7_2(L8_2, L9_2)
            end
          end
      end
      else
        L5_2 = A1_2.moveDir
        L6_2 = CS
        L6_2 = L6_2.UnityEngine
        L6_2 = L6_2.EventSystems
        L6_2 = L6_2.MoveDirection
        L6_2 = L6_2.Left
        if L5_2 == L6_2 then
          L5_2 = A4_2.index
          L5_2 = L5_2 % 2
          if L5_2 == 0 then
            L5_2 = A0_2._binder
            L5_2 = L5_2.mix_list_view
            L6_2 = L5_2
            L5_2 = L5_2.GetShownItemByItemIndex
            L7_2 = A4_2.index
            L7_2 = L7_2 - 2
            L5_2 = L5_2(L6_2, L7_2)
            if L5_2 then
              L6_2 = L5_2.UserObjectData
              if L6_2 then
                L6_2 = L5_2.UserObjectData
                L7_2 = L6_2
                L6_2 = L6_2.get_btn
                L8_2 = CS
                L8_2 = L8_2.RPG
                L8_2 = L8_2.GameCore
                L8_2 = L8_2.EvolveGearType
                L8_2 = L8_2.Forge
                L6_2 = L6_2(L7_2, L8_2)
                L8_2 = A0_2
                L7_2 = A0_2._move_and_set_navigation
                L9_2 = L6_2.gameObject
                L7_2(L8_2, L9_2)
              end
            end
          end
        end
      end
    end
  end
end
L0_1._on_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_list
  L3_2 = L2_2
  L2_2 = L2_2.ScrollToTransform
  L4_2 = A1_2.transform
  L4_2 = L4_2.parent
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._move_and_set_navigation = L1_1
return L0_1
