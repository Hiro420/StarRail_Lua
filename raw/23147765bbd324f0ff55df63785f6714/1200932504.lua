local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchEnterItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchEnterItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchEnterPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchEnterPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ActivityMonsterResearchConstExcelTable
L1_1 = L1_1.GetData
L2_1 = "MonsterResearch_ActivityPanel_Goto_MappingInfo"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityMonsterResearchModule
L3_1 = "PocketMonsterEnterPage_FadeIn_02"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonsterResearchEnterPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 == "HideGoto"
  A0_2._hide_goto = L3_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_black_fade_in = L3_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_monster_research
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._locate_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchDataRefresh
  L4_2 = A0_2._on_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to
  L4_2 = A0_2._on_click_go_to
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_monster_research
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_monster_research
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_nearest_changed
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  A0_2._locate_index = 1
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A0_2
  L3_2 = A0_2._get_index_by_id
  L5_2 = A2_2.UserObjectData
  L5_2 = L5_2._research_data
  L5_2 = L5_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormat
  L5_2 = "ActivityMonsterReserarchEnterPage: _on_snap_nearest_changed() Index : "
  L6_2 = L3_2
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
  L4_2 = false
  L5_2 = L2_1.ActivityMonsterResearchRedDotFilter
  L5_2 = L5_2.CommonRedDotIdList
  L6_2 = 1
  L7_2 = A0_2._research_table
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    if L9_2 > L3_2 then
      L10_2 = 0
      L11_2 = L5_2.Count
      L11_2 = L11_2 - 1
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = A0_2._research_table
        L14_2 = L14_2[L9_2]
        L14_2 = L14_2.ID
        L15_2 = L5_2[L13_2]
        if L14_2 == L15_2 then
          L4_2 = true
          break
        end
      end
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_right_reddot
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
end
L0_1._on_snap_nearest_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = -1
  L3_2 = 1
  L4_2 = A0_2._research_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._research_table
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ID
    if A1_2 == L7_2 then
      L2_2 = L6_2
    end
  end
  return L2_2
end
L0_1._get_index_by_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._is_black_fade_in
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_research_progress_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_research_list_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_to_locate_index
  L1_2(L2_2)
end
L0_1._on_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L2_1.ActivityMonsterResearchDisplayList
  L1_2 = L1_2(L2_2)
  A0_2._research_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._research_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L6_2 = L5_2
    L5_2 = L5_2.GetActivityMonsterResearchData
    L7_2 = A0_2._research_table
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.ID
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = A0_2._research_table
      L6_2[L4_2] = L5_2
    end
  end
end
L0_1._generate_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._research_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._research_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.IsRewardTaken
    if not L5_2 then
      L5_2 = A0_2._research_table
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.IsComplete
      if L5_2 then
        A0_2._locate_index = L4_2
        return L4_2
      end
    end
  end
  L1_2 = 1
  L2_2 = A0_2._research_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._research_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ActivityMonsterResearchDataStatus
    L6_2 = L6_2.IsStart
    if L5_2 == L6_2 then
      A0_2._locate_index = L4_2
      return L4_2
    end
  end
  L1_2 = 1
  L2_2 = A0_2._research_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._research_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ActivityMonsterResearchDataStatus
    L6_2 = L6_2.NotStart
    if L5_2 == L6_2 then
      A0_2._locate_index = L4_2
      return L4_2
    end
  end
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._research_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._research_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsComplete
    if L6_2 then
      L1_2 = L5_2
    end
  end
  if L1_2 ~= nil then
    A0_2._locate_index = L1_2
  end
end
L0_1._get_locate_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.CompletedProgress
  L2_2 = L2_1.TotalProgress
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num_txt_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_research_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonsterResearch_Tip_12"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_completed_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L2_1.CompletedProgress
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_total_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L2_1.TotalProgress
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_research_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonsterResearch_Tip_14"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_research_progress_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_monster_research
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCountAndMove
  L3_2 = A0_2._research_table
  L3_2 = #L3_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_monster_research
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_research_list_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_locate_index
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_monster_research
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToByItemIndexAndOffsetPercent
  L3_2 = A0_2._locate_index
  L3_2 = L3_2 - 1
  L4_2 = 0.4
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._move_to_locate_index = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ActivityMonsterResearchEnterItem
    L8_2 = G
    L8_2 = L8_2.ActivityMonsterResearchEnterItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.register_callback
    L7_2 = A0_2._on_click_item_callback
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._research_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_item_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityMonsterResearchDataStatus
  L4_2 = L4_2.NotStart
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "LimitType_LimitTypeDesc_3"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2.Status
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ActivityMonsterResearchDataStatus
    L4_2 = L4_2.IsStart
    if L3_2 == L4_2 then
      L3_2 = A1_2.SelectedQuestionId
      if L3_2 == 0 then
        L3_2 = L2_1
        L4_2 = L3_2
        L3_2 = L3_2.SetMonsterResearchSeen
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
        L3_2 = G
        L3_2 = L3_2.UIManager
        L3_2 = L3_2.load_and_async_show
        L4_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchInfoPage"
        L5_2 = A1_2
        L6_2 = A2_2
        L7_2 = A0_2._hide_goto
        L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    else
      L3_2 = L2_1
      L4_2 = L3_2
      L3_2 = L3_2.SetMonsterResearchSeen
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_async_show
      L4_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchInfoPage"
      L5_2 = A1_2
      L6_2 = A2_2
      L7_2 = A0_2._hide_goto
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1._on_click_item_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapEntryExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.BigMapUtils
    L9_2 = L9_2.IsShowAreaMap
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L1_2.FloorID
      L10_2 = L8_2.FloorID
      if L9_2 == L10_2 then
        L3_2 = L8_2.ID
        break
      end
    end
  end
  if L3_2 == 0 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.GotoManager
  L4_2 = L4_2.GotoByType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GotoType
  L5_2 = L5_2.AreaSwitch
  L5_2 = #L5_2
  L6_2 = {}
  L7_2 = L3_2
  L8_2 = L1_1
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.SDKLuaReportAdapter
  L4_2 = L4_2.ReportUIButtonClick
  L5_2 = A0_2.__name
  L6_2 = ""
  L7_2 = "TeleportBtn"
  L8_2 = A0_2.guid
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_click_go_to = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L4_1
return L0_1
