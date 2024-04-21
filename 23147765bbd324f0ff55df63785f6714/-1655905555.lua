local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.SpaceZooActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityConditionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MissionModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ActivityModule
L1_1 = L1_1.ActivityType
L1_1 = L1_1.SpaceZooActivity
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "SpaceZoo_GotoMapID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "SpaceZoo_MessageSubmissionID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.IntValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ActivityStateEnum
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ResidentSpaceZooActivityPanel"
L7_1 = G
L7_1 = L7_1.TabItem
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  A0_2._pre_mission_list = nil
  A0_2._guide_mission_list = nil
  A0_2._is_guide_complete = nil
  A0_2._is_message_sub_mission_finish = nil
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L5_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_custom_bind
  if not L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2._get_panel_prefab_path_by_activity_data
    L3_2 = A0_2._activity_data
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L2_2 = A0_2
  L1_2 = A0_2._custom_on_load
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L5_1._on_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limited_reward
  L4_2 = A0_2._on_btn_limit_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_point_reward
  L4_2 = A0_2._on_btn_point_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.ConditionConfig
  L3_2 = A0_2
  L2_2 = A0_2._create_lua_table_from_condition_param
  L4_2 = L1_2.PreConditions
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._pre_mission_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_lua_table_from_condition_param
  L4_2 = L1_2.GuideConditions
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._guide_mission_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityConditionPanel
  L5_2 = G
  L5_2 = L5_2.ActivityConditionPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._condition_panel = L2_2
  L2_2 = A0_2._condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_condition_panel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._condition_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._pre_mission_list
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_pre_mission
  L2_2(L3_2)
end
L5_1._custom_on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._on_unselect = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L5_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
    L2_2 = A0_2._is_can_to_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 31
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 1
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 31
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L5_1._on_enter_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._condition_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._condition_panel
      L3_2 = L2_2
      L2_2 = L2_2._is_can_to_zoom
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
end
L5_1._is_can_to_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L5_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionDataWithPromise
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 then
      L1_3 = A0_3.IsFinish
      if L1_3 then
        L1_3 = A0_2._is_guide_complete
        if not L1_3 then
          L1_3 = 1
          L2_3 = A0_2._guide_mission_list
          L2_3 = #L2_3
          L3_3 = 1
          for L4_3 = L1_3, L2_3, L3_3 do
            L5_3 = L0_1
            L6_3 = L5_3
            L5_3 = L5_3.TryGetMainMissionData
            L7_3 = A0_2._guide_mission_list
            L7_3 = L7_3[L4_3]
            L5_3 = L5_3(L6_3, L7_3)
            L6_3 = L5_3.IsFinish
            if not L6_3 then
              L6_3 = G
              L6_3 = L6_3.MissionUtils
              L6_3 = L6_3.common_jump_to_mission_by_main_mission
              L7_3 = L5_3
              L6_3(L7_3)
              return
            end
          end
          L1_3 = G
          L1_3 = L1_3.SuperDebug
          L1_3 = L1_3.LogWarningFormat
          L2_3 = "SpaceZooActivityPanel : \229\188\149\229\175\188\228\187\187\229\138\161\230\156\170\229\133\168\233\131\168\229\174\140\230\136\144\239\188\140\228\189\134\230\152\175\228\184\141\229\173\152\229\156\168\230\156\170\229\174\140\230\136\144\231\154\132\229\188\149\229\175\188\228\187\187\229\138\161"
          L1_3(L2_3)
          return
        end
        L1_3 = G
        L1_3 = L1_3.GotoManager
        L1_3 = L1_3.Goto
        L2_3 = L2_1
        L1_3(L2_3)
      else
        L1_3 = tonumber
        L2_3 = CS
        L2_3 = L2_3.RPG
        L2_3 = L2_3.GameCore
        L2_3 = L2_3.ConstValueClientExcelTable
        L2_3 = L2_3.GetData
        L3_3 = "SpaceZoo_MessageGroupID"
        L2_3 = L2_3(L3_3)
        L2_3 = L2_3.Value
        L2_3 = L2_3.IntValue
        L1_3 = L1_3(L2_3)
        L2_3 = G
        L2_3 = L2_3.GotoManager
        L2_3 = L2_3.Goto
        L3_3 = 4000
        L4_3 = {}
        L5_3 = L1_3
        L4_3[1] = L5_3
        L2_3(L3_3, L4_3)
        return
      end
    else
      L1_3 = G
      L1_3 = L1_3.SuperDebug
      L1_3 = L1_3.LogErrorFormat
      L2_3 = "SpaceZooActivityPanel: \230\137\190\228\184\141\229\136\176\231\159\173\228\191\161\229\188\149\229\175\188\229\173\144\228\187\187\229\138\161ID: "
      L3_3 = L3_1
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      A0_2._is_message_sub_mission_finish = nil
    end
  end
  L1_2(L2_2, L3_2)
end
L5_1._on_btn_go_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L5_1._on_btn_explain_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooQuestRewardPage"
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L5_1._on_btn_limit_reward_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.SpaceZoo.SpaceZooRewardListDialog"
  L1_2(L2_2)
end
L5_1._on_btn_point_reward = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = false
  L5_2(L6_2, L7_2)
  return L3_2
end
L5_1._on_item_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L5_1._setup_tab_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TagDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L5_1._setup_text = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L5_1._setup_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_point_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_warning_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_limited_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L4_2 = L3_2
  L3_2 = L3_2.IsFinishConditionsCompleted
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._setup_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreMissionComplete
  A0_2._is_unlock = L1_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  A0_2._is_guide_complete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_panel_reddot
  L1_2(L2_2)
end
L5_1._check_pre_mission = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L7_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ConditionType
    L9_2 = L9_2.FinishMainMission
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = tonumber
      L11_2 = L7_2.Param
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return L2_2
end
L5_1._create_lua_table_from_condition_param = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ActivityQuest"
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.PanelID
    L1_2(L2_2, L3_2, L4_2)
  end
end
L5_1._bind_reddot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._is_unlock
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "SpaceZooPointReward"
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_point_reward_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L5_1._bind_panel_reddot = L6_1
return L5_1
