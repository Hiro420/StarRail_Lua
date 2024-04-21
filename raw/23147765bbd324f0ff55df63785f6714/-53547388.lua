local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionEnterPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionEnterPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityTelevisionEnterPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = false
  A0_2._is_save_by_click = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._television_id = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTelevisionData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.data = L2_2
  L2_2 = A0_2.data
  L2_2 = L2_2.LevelRow
  A0_2.level_row = L2_2
  L2_2 = A0_2.data
  L3_2 = L2_2
  L2_2 = L2_2.GetTrialAvatars
  L2_2 = L2_2(L3_2)
  A0_2._trial_avatars = L2_2
  L2_2 = A0_2._television_id
  L3_2 = L1_1.DeathLevelID
  L2_2 = L2_2 == L3_2
  A0_2.is_death_level = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_monster_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_monster_object
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_special_zoom_navigation_target
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_monster_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_monster_list
  L4_2 = A0_2._on_btn_monster_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityTelevisionEnd
  L4_2 = L0_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetTelevisionData
  L3_2 = A0_2._television_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.data = L1_2
  L1_2 = A0_2.data
  L1_2 = L1_2.LevelRow
  A0_2.level_row = L1_2
end
L0_1.init_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityTelevisionQuestRewardTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_btn_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.create_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_activity_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_detail_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_score
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_buff_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_monster_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_monster_buff_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_target_panel
  L1_2(L2_2)
end
L0_1.setup_right_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.data
  L3_2 = L3_2.Row
  L3_2 = L3_2.StageName
  L1_2(L2_2, L3_2)
end
L0_1.setup_detail_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.data
  L1_2 = L1_2.Score
  L2_2 = 0 < L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetScoreRank
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.rank_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L7_2 = not L2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_score = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.is_death_level
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_buff_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2.level_row
  L1_2 = L1_2.MazeBuffID
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2.data
  L5_2 = L5_2.MaxBuffLayer
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2.data
  L4_2 = L4_2.Score
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_buff_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_death_level
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_death_buff_panel
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_common_buff_panel
    L1_2(L2_2)
  end
end
L0_1.setup_monster_buff_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.sync_load_prefab
  L3_2 = "UI/Quest/Television/Widget/TelevisionBuffPanel.prefab"
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_level_buff
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = "TitlePanel/Text"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.SafeSetTextID
  L5_2 = A0_2.level_row
  L5_2 = L5_2.MonsterBuffTips
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.ComponentExtensions
  L3_2 = L3_2.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Text
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  L6_2 = "DescPanel/DescText"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_array
  L5_2 = A0_2.level_row
  L5_2 = L5_2.MonsterParmList
  L4_2 = L4_2(L5_2)
  L6_2 = L3_2
  L5_2 = L3_2.SafeSetTextID
  L7_2 = A0_2.level_row
  L7_2 = L7_2.MonsterBuffShortDesc
  L8_2 = table
  L8_2 = L8_2.unpack
  L9_2 = L4_2
  L8_2, L9_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_common_buff_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.sync_load_prefab
  L3_2 = "UI/Quest/Television/Widget/TelevisionDeathBuffPanel.prefab"
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_level_buff
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = "DescText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2.level_row
  L4_2 = L4_2.MonsterParmList
  L3_2 = L3_2(L4_2)
  L5_2 = L2_2
  L4_2 = L2_2.SafeSetTextID
  L6_2 = A0_2.level_row
  L6_2 = L6_2.MonsterBuffDesc
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = L3_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_buff_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ActivityTelevision_BattleEntrance_End_Title"
  L4_2(L5_2, L6_2)
end
L0_1.setup_death_buff_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.setup_target_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetStageIDByEventID
  L2_2 = A0_2.level_row
  L2_2 = L2_2.EventID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2.level_row
  L4_2 = L4_2.MonsterList
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_monster_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityTelevision.ActivityTelevisionDetailPage"
  L3_2 = A0_2._television_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_start = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityTelevision.Reward.ActivityTelevisionQuestPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_start_challenge = L2_1
return L0_1
