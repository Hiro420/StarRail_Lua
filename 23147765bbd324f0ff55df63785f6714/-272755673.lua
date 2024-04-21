local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Toast.Components.ChessRogueBossBuffItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Toast.Components.ChessRogueBossBuffItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Toast.ChessRogueBossBuffDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Toast.RogueNousBossBuffDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBossBuffDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._buff_table = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChessRogueModule
  L3_2 = L2_2
  L2_2 = L2_2.GetCurSubMode
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueSubMode
  L3_2 = L3_2.ChessRogueNous
  if L2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._create_binder
    L5_2 = G
    L5_2 = L5_2.RogueNousBossBuffDialogBinder
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._binder = L3_2
  else
    L4_2 = A0_2
    L3_2 = A0_2._create_binder
    L5_2 = G
    L5_2 = L5_2.ChessRogueBossBuffDialogBinder
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._binder = L3_2
  end
  A0_2._cell_data_item = A1_2
  L4_2 = A1_2
  L3_2 = A1_2.GetExtraDecayData
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.DecayIDList
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._buff_table = L4_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_buff_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
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
    L7_2 = L7_2.ChessRogueBossBuffItemPanel
    L8_2 = G
    L8_2 = L8_2.ChessRogueBossBuffItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._buff_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L3_2
end
L0_1._on_buff_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_view
  L1_2(L2_2)
  L1_2 = A0_2._buff_table
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueDLC_LastBoss_GroupID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  L2_2 = A0_2._cell_data_item
  L3_2 = L2_2
  L2_2 = L2_2.GetExtraBossSelectData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.IsSelected
    if L3_2 then
      L1_2 = L2_2.SelectedMonsterID
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueStatic
  L3_2 = L3_2.GetDisplayMonsterDataByRogueMonsterGroupID
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_monster_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.Row
    L6_2 = L6_2.MonsterName
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_monster
    L7_2 = L3_2.TemplateRow
    L7_2 = L7_2.ImagePath
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AdventureNpcMonsterWeaknessHelp
    L4_2 = L4_2.GetWeaknessForBattleMonster
    L5_2 = L3_2.MonsterID
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.weak_point_list
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.create_lua_table_from_cs_array
    L8_2 = L4_2
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_boss_level
  L6_2 = A0_2._cell_data_item
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_monster_level
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_monster_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetMonsterLevelByChessRogueCell
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._get_boss_level = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_confirm_click = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemNearestItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
