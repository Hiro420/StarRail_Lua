local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Adventure.MazeDevEntranceDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeDevEntranceDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._LifeTime = 0
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeDevEntranceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventurePlayerRow
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventurePlayerExcelTable
  L2_2 = L2_2.dataDict
  L2_2 = L2_2.Values
  L1_2 = L1_2(L2_2)
  A0_2._team_member_cfgs = L1_2
  L1_2 = A0_2._team_member_cfgs
  L2_2 = L1_2
  L1_2 = L1_2.AddRange
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L3_2 = L3_2.GetQATestPlayers
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneRow
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneExcelTable
  L2_2 = L2_2.dataDict
  L2_2 = L2_2.Values
  L1_2 = L1_2(L2_2)
  A0_2._maze_plane_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._filtered_plane_id_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BattleLineupJsonTable
  L1_2 = L1_2.GetAllCeBattlePresetConfigList
  L1_2 = L1_2()
  A0_2._lineup_preset_cfgs = L1_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.navigation_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dropdown_plane_type_filter
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.dropdown_plane_type_filter
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dropdown_world_id_filter
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.dropdown_world_id_filter
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_plane
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.drop_down_plane
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_floor
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.drop_down_floor
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_team_member1
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.drop_down_team_member1
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_team_member2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.drop_down_team_member2
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_team_member3
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.drop_down_team_member3
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_team_member4
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.drop_down_team_member4
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._init_select_trigger = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.navigation_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.navigation_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_begin
  L4_2 = A0_2._on_btn_begin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_select_trigger
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gender_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_performance_type_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_plane_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_plane_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_floor_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dimension_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_member_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_member_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_skill_tree_points
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_levels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lineup_presets
  L1_2(L2_2)
  L1_2 = A0_2._on_plane_drop_down_val_changed
  if nil ~= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.drop_down_plane
    L1_2 = L1_2.onValueChanged
    L2_2 = L1_2
    L1_2 = L1_2.RemoveListener
    L3_2 = A0_2._on_plane_drop_down_val_changed
    L1_2(L2_2, L3_2)
  end
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_floor_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_dimension_selection
    L1_3(L2_3)
  end
  A0_2._on_plane_drop_down_val_changed = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_plane
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2._on_plane_drop_down_val_changed
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_floor_drop_down_val_changed
  if nil ~= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.drop_down_floor
    L1_2 = L1_2.onValueChanged
    L2_2 = L1_2
    L1_2 = L1_2.RemoveListener
    L3_2 = A0_2._on_floor_drop_down_val_changed
    L1_2(L2_2, L3_2)
  end
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_dimension_selection
    L1_3(L2_3)
  end
  A0_2._on_floor_drop_down_val_changed = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_floor
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2._on_floor_drop_down_val_changed
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.toggle_streaming
  L2_2 = L1_2
  L1_2 = L1_2.SetIsOnWithoutNotify
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.OpenWorld
  L3_2 = L3_2.OpenWorldHelper
  L3_2 = L3_2.StreamingEnable
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.OpenWorld
    L1_3 = L1_3.OpenWorldHelper
    L2_3 = not A0_3
    L1_3.StreamingEnable = L2_3
  end
  A0_2.OnToggleChanged = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.toggle_streaming
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2.OnToggleChanged
  L1_2(L2_2, L3_2)
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_input_story_gender_info
    L1_3(L2_3)
  end
  A0_2._on_input_story_val_changed = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_story
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2._on_input_story_val_changed
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.SystemOpenModule
  L1_2.IsUnlockAllFunc = true
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.toggle_streaming
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnToggleChanged
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_plane_filter
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnPlaneFilterKeyword
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dropdown_plane_type_filter
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnPlaneFilterType
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dropdown_world_id_filter
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnPlaneFilterWorldID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.toggle_plane_show_test
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnPlaneFilterOnlyTest
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_story
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter1
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnMemberFilterKeyword0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter2
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnMemberFilterKeyword1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter3
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnMemberFilterKeyword2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter4
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveListener
  L3_2 = A0_2.OnMemberFilterKeyword3
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "\231\148\183"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "\229\165\179"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_gender
  L3_2 = L2_2
  L2_2 = L2_2.ClearOptions
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_gender
  L3_2 = L2_2
  L2_2 = L2_2.AddOptions
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_gender
  L2_2.value = 0
end
L0_1._setup_gender_selection = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "\230\156\170\231\159\165"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "A"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "C"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "D"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "E"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "Video"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_story_type
  L3_2 = L2_2
  L2_2 = L2_2.ClearOptions
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_story_type
  L3_2 = L2_2
  L2_2 = L2_2.AddOptions
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_story_type
  L2_2.value = 0
end
L0_1._setup_performance_type_selection = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._plane_type_name_list = L1_2
  L1_2 = A0_2._plane_type_name_list
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = A0_2._plane_type_name_list
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = "All"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._plane_type_name_list
  L2_2 = L1_2
  L1_2 = L1_2.AddRange
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L3_2 = L3_2.GetEnumTypeNames
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PlaneType
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dropdown_plane_type_filter
  L2_2 = L1_2
  L1_2 = L1_2.AddOptions
  L3_2 = A0_2._plane_type_name_list
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dropdown_plane_type_filter
  L1_2.value = 0
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._world_id_list = L1_2
  L1_2 = A0_2._world_id_list
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._world_id_name_list = L1_2
  L1_2 = A0_2._world_id_name_list
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = A0_2._world_id_name_list
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = "All"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldDataConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = A0_2._world_id_list
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = L1_2.Current
    L4_2 = L4_2.Value
    L4_2 = L4_2.ID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._world_id_name_list
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = L1_2.Current
    L4_2 = L4_2.Value
    L4_2 = L4_2.ID
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L1_2.Current
    L6_2 = L6_2.Value
    L6_2 = L6_2.WorldName
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.dropdown_world_id_filter
  L3_2 = L2_2
  L2_2 = L2_2.AddOptions
  L4_2 = A0_2._world_id_name_list
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dropdown_world_id_filter
  L2_2.value = 0
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_plane_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_floor_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_dimension_selection
    L1_3(L2_3)
  end
  A0_2.OnPlaneFilterKeyword = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_plane_filter
  L2_2 = L2_2.onValueChanged
  L3_2 = L2_2
  L2_2 = L2_2.AddListener
  L4_2 = A0_2.OnPlaneFilterKeyword
  L2_2(L3_2, L4_2)
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_plane_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_floor_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_dimension_selection
    L1_3(L2_3)
  end
  A0_2.OnPlaneFilterType = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.dropdown_plane_type_filter
  L2_2 = L2_2.onValueChanged
  L3_2 = L2_2
  L2_2 = L2_2.AddListener
  L4_2 = A0_2.OnPlaneFilterType
  L2_2(L3_2, L4_2)
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_plane_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_floor_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_dimension_selection
    L1_3(L2_3)
  end
  A0_2.OnPlaneFilterWorldID = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.dropdown_world_id_filter
  L2_2 = L2_2.onValueChanged
  L3_2 = L2_2
  L2_2 = L2_2.AddListener
  L4_2 = A0_2.OnPlaneFilterWorldID
  L2_2(L3_2, L4_2)
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_plane_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_floor_selection
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_dimension_selection
    L1_3(L2_3)
  end
  A0_2.OnPlaneFilterOnlyTest = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.toggle_plane_show_test
  L2_2 = L2_2.onValueChanged
  L3_2 = L2_2
  L2_2 = L2_2.AddListener
  L4_2 = A0_2.OnPlaneFilterOnlyTest
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.toggle_plane_show_test
  L2_2.isOn = false
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.input_plane_filter
    L0_3.text = ""
    L0_3 = A0_2._binder
    L0_3 = L0_3.dropdown_plane_type_filter
    L0_3.value = 0
    L0_3 = A0_2._binder
    L0_3 = L0_3.dropdown_world_id_filter
    L0_3.value = 0
    L0_3 = A0_2._binder
    L0_3 = L0_3.toggle_plane_show_test
    L0_3.isOn = false
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_plane_selection
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_floor_selection
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_dimension_selection
    L0_3(L1_3)
  end
  A0_2.OnResetAllFilter = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reset_filter
  L2_2 = L2_2.onClick
  L3_2 = L2_2
  L2_2 = L2_2.AddListener
  L4_2 = A0_2.OnResetAllFilter
  L2_2(L3_2, L4_2)
end
L0_1._setup_plane_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._all_maze_plane_config
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneRow
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneExcelTable
  L2_2 = L2_2.dataDict
  L2_2 = L2_2.Values
  L1_2 = L1_2(L2_2)
  A0_2._all_maze_plane_config = L1_2
  L1_2 = {}
  A0_2._plane_id_to_filter_name_map = L1_2
  L1_2 = {}
  A0_2._plane_id_to_display_name_map = L1_2
  L1_2 = 0
  L2_2 = A0_2._all_maze_plane_config
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._all_maze_plane_config
    L5_2 = L5_2[L4_2]
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L5_2.PlaneName
    L6_2 = L6_2(L7_2)
    L7_2 = L5_2.PlaneID
    L8_2 = nil
    L9_2 = L5_2.FloorIDList
    L9_2 = L9_2.Length
    if L9_2 == 1 then
      L9_2 = L5_2.FloorIDList
      L9_2 = L9_2[0]
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.AdventureStatic
      L10_2 = L10_2.GetMazeFloorComment
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = G
      L11_2 = L11_2.StrExt
      L11_2 = L11_2.IsNullOrEmpty
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        L11_2 = L9_2
        L12_2 = L10_2
        L8_2 = L11_2 .. L12_2
      end
    end
    if L8_2 == nil then
      L9_2 = L7_2
      L10_2 = L6_2
      L8_2 = L9_2 .. L10_2
    end
    L9_2 = A0_2._plane_id_to_display_name_map
    L9_2[L7_2] = L8_2
    L9_2 = A0_2._plane_id_to_filter_name_map
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.UITextUtils
    L10_2 = L10_2.ConvertChineseCh
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L9_2[L7_2] = L10_2
  end
end
L0_1._init_all_maze_plane_config = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2
  L1_2 = A0_2._init_all_maze_plane_config
  L1_2(L2_2)
  L1_2 = A0_2._plane_names
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.System
    L1_2 = L1_2.Collections
    L1_2 = L1_2.Generic
    L1_2 = L1_2.List
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.String
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2()
    A0_2._plane_names = L1_2
  end
  L1_2 = A0_2._plane_names
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = A0_2._plane_names
  L2_2 = A0_2._all_maze_plane_config
  L3_2 = A0_2._filtered_plane_id_list
  L4_2 = L3_2
  L3_2 = L3_2.Clear
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.input_plane_filter
  L3_2 = L3_2.text
  L4_2 = tonumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.StrExt
  L5_2 = L5_2.IsNullOrEmpty
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 and not L4_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.ConvertChineseCh
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2
  end
  L5_2 = 0
  L6_2 = L2_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    L10_2 = L9_2.PlaneType
    L11_2 = L9_2.WorldID
    L12_2 = L9_2.PlaneID
    L13_2 = A0_2._plane_id_to_filter_name_map
    L13_2 = L13_2[L12_2]
    L14_2 = true
    L15_2 = L13_2
    if L3_2 ~= "" then
      if L4_2 then
        L15_2 = L12_2
      end
      L16_2 = CS
      L16_2 = L16_2.RPG
      L16_2 = L16_2.GameCore
      L16_2 = L16_2.AdventureStatic
      L16_2 = L16_2.GetIsTextPassedFilterKeywords
      L17_2 = L15_2
      L18_2 = L3_2
      L16_2 = L16_2(L17_2, L18_2)
      L14_2 = L16_2
    end
    L16_2 = A0_2._binder
    L16_2 = L16_2.dropdown_plane_type_filter
    L16_2 = L16_2.value
    if L16_2 ~= 0 then
      L16_2 = CS
      L16_2 = L16_2.RPG
      L16_2 = L16_2.GameCore
      L16_2 = L16_2.PlaneType
      L16_2 = L16_2.__CastFrom
      L17_2 = A0_2._binder
      L17_2 = L17_2.dropdown_plane_type_filter
      L17_2 = L17_2.value
      L17_2 = L17_2 - 1
      L16_2 = L16_2(L17_2)
      if L10_2 ~= L16_2 then
        L14_2 = false
      end
    end
    L16_2 = A0_2._binder
    L16_2 = L16_2.dropdown_world_id_filter
    L16_2 = L16_2.value
    if L16_2 ~= 0 then
      L16_2 = A0_2._world_id_list
      L17_2 = A0_2._binder
      L17_2 = L17_2.dropdown_world_id_filter
      L17_2 = L17_2.value
      L17_2 = L17_2 - 1
      L16_2 = L16_2[L17_2]
      if L11_2 ~= L16_2 then
        L14_2 = false
      end
    end
    L16_2 = A0_2._binder
    L16_2 = L16_2.toggle_plane_show_test
    L16_2 = L16_2.isOn
    if L16_2 then
      L16_2 = string
      L16_2 = L16_2.sub
      L17_2 = L15_2
      L18_2 = 1
      L19_2 = 1
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      if L16_2 ~= "9" then
        L14_2 = false
      end
    end
    if L14_2 then
      L16_2 = A0_2._filtered_plane_id_list
      L17_2 = L16_2
      L16_2 = L16_2.Add
      L18_2 = L12_2
      L16_2(L17_2, L18_2)
      L17_2 = L1_2
      L16_2 = L1_2.Add
      L18_2 = A0_2._plane_id_to_display_name_map
      L18_2 = L18_2[L12_2]
      L16_2(L17_2, L18_2)
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down_plane
  L6_2 = L5_2
  L5_2 = L5_2.ClearOptions
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down_plane
  L6_2 = L5_2
  L5_2 = L5_2.AddOptions
  L7_2 = L1_2
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down_plane
  L7_2 = A0_2
  L6_2 = A0_2._get_plane_drop_down_value
  L6_2 = L6_2(L7_2)
  L5_2.value = L6_2
end
L0_1._setup_plane_selection = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._filtered_plane_id_list
  L1_2 = L1_2.Count
  if L1_2 <= 0 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneExcelTable
  L2_2 = L2_2.GetData
  L4_2 = A0_2
  L3_2 = A0_2._get_planeid
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = 0
  L4_2 = L2_2.FloorIDList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.FloorIDList
    L7_2 = L7_2[L6_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AdventureStatic
    L8_2 = L8_2.GetMazeFloorComment
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L10_2 = L1_2
    L9_2 = L1_2.Add
    L11_2 = L7_2
    L12_2 = L8_2
    L11_2 = L11_2 .. L12_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_floor
  L4_2 = L3_2
  L3_2 = L3_2.ClearOptions
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_floor
  L4_2 = L3_2
  L3_2 = L3_2.AddOptions
  L5_2 = L1_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_floor
  L5_2 = A0_2
  L4_2 = A0_2._get_floor_drop_down_value
  L6_2 = L2_2.FloorIDList
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.value = L4_2
end
L0_1._setup_floor_selection = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._filtered_plane_id_list
  L1_2 = L1_2.Count
  if L1_2 <= 0 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._get_planeid
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_floorid
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MapDef
  L4_2 = L4_2.GetFloorCfgPath
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GameCoreConfigLoader
  L5_2 = L5_2.LoadLevelFloorInfo
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.DimensionList
  if L6_2 ~= nil then
    L6_2 = 0
    L7_2 = L5_2.DimensionList
    L7_2 = L7_2.Length
    L7_2 = L7_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L5_2.DimensionList
      L10_2 = L10_2[L9_2]
      L12_2 = L1_2
      L11_2 = L1_2.Add
      L13_2 = L10_2.ID
      L11_2(L12_2, L13_2)
    end
  end
  L6_2 = L1_2.Count
  if L6_2 == 0 then
    L7_2 = L1_2
    L6_2 = L1_2.Add
    L8_2 = tostring
    L9_2 = 0
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.drop_down_dimension
  L7_2 = L6_2
  L6_2 = L6_2.ClearOptions
  L6_2(L7_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.drop_down_dimension
  L7_2 = L6_2
  L6_2 = L6_2.AddOptions
  L8_2 = L1_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.drop_down_dimension
  L6_2.value = 0
  A0_2._dimension_list = L1_2
end
L0_1._setup_dimension_selection = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_team_member_selection
    L3_3 = 0
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  A0_2.OnMemberFilterKeyword0 = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_team_member_selection
    L3_3 = 1
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  A0_2.OnMemberFilterKeyword1 = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_team_member_selection
    L3_3 = 2
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  A0_2.OnMemberFilterKeyword2 = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_team_member_selection
    L3_3 = 3
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  A0_2.OnMemberFilterKeyword3 = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter1
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2.OnMemberFilterKeyword0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter2
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2.OnMemberFilterKeyword1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter3
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2.OnMemberFilterKeyword2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_team_member_filter4
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2.OnMemberFilterKeyword3
  L1_2(L2_2, L3_2)
end
L0_1._setup_team_member_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Int32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  A0_2._member1_filtered_indexs = L2_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Int32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  A0_2._member2_filtered_indexs = L2_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Int32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  A0_2._member3_filtered_indexs = L2_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Int32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  A0_2._member4_filtered_indexs = L2_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  A0_2.memberNames = L2_2
  L2_2 = A0_2.memberNames
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = "Empty"
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = A0_2._team_member_cfgs
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.memberNames
    L7_2 = L6_2
    L6_2 = L6_2.Add
    L8_2 = A0_2._team_member_cfgs
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.AvatarID
    L9_2 = "_"
    L10_2 = G
    L10_2 = L10_2.TextmapStatic
    L10_2 = L10_2.GetText
    L11_2 = A0_2._team_member_cfgs
    L11_2 = L11_2[L5_2]
    L11_2 = L11_2.PlayerName
    L10_2 = L10_2(L11_2)
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2(L7_2, L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_team_member_selection
  L4_2 = 0
  L5_2 = nil
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_team_member_selection
  L4_2 = 1
  L5_2 = nil
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_team_member_selection
  L4_2 = 2
  L5_2 = nil
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_team_member_selection
  L4_2 = 3
  L5_2 = nil
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_team_member_selection = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 1 then
    L2_2 = A0_2._member1_filtered_indexs
    L3_2 = A0_2._binder
    L3_2 = L3_2.drop_down_team_member1
    L3_2 = L3_2.value
    L2_2 = L2_2[L3_2]
    return L2_2
  elseif A1_2 == 2 then
    L2_2 = A0_2._member2_filtered_indexs
    L3_2 = A0_2._binder
    L3_2 = L3_2.drop_down_team_member2
    L3_2 = L3_2.value
    L2_2 = L2_2[L3_2]
    return L2_2
  elseif A1_2 == 3 then
    L2_2 = A0_2._member3_filtered_indexs
    L3_2 = A0_2._binder
    L3_2 = L3_2.drop_down_team_member3
    L3_2 = L3_2.value
    L2_2 = L2_2[L3_2]
    return L2_2
  elseif A1_2 == 4 then
    L2_2 = A0_2._member4_filtered_indexs
    L3_2 = A0_2._binder
    L3_2 = L3_2.drop_down_team_member4
    L3_2 = L3_2.value
    L2_2 = L2_2[L3_2]
    return L2_2
  end
end
L0_1._get_origin_dropindex = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.String
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = A0_2._member1_filtered_indexs
  if A1_2 == 1 then
    L4_2 = A0_2._member2_filtered_indexs
  elseif A1_2 == 2 then
    L4_2 = A0_2._member3_filtered_indexs
  elseif A1_2 == 3 then
    L4_2 = A0_2._member4_filtered_indexs
  end
  L6_2 = L4_2
  L5_2 = L4_2.Clear
  L5_2(L6_2)
  L5_2 = A2_2 == nil or A2_2 == ""
  L6_2 = 0
  L7_2 = A0_2.memberNames
  L7_2 = L7_2.Count
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    if not L5_2 then
      L10_2 = string
      L10_2 = L10_2.match
      L11_2 = A0_2.memberNames
      L11_2 = L11_2[L9_2]
      L12_2 = A2_2
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        goto lbl_54
      end
    end
    L11_2 = L3_2
    L10_2 = L3_2.Add
    L12_2 = A0_2.memberNames
    L12_2 = L12_2[L9_2]
    L10_2(L11_2, L12_2)
    L11_2 = L4_2
    L10_2 = L4_2.Add
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    ::lbl_54::
  end
  if A1_2 == 0 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member1
    L7_2 = L6_2
    L6_2 = L6_2.ClearOptions
    L6_2(L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member1
    L7_2 = L6_2
    L6_2 = L6_2.AddOptions
    L8_2 = L3_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member1
    L6_2.value = 0
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.drop_down_team_member1
      L8_2 = A0_2
      L7_2 = A0_2._get_team_member_drop_down_value
      L9_2 = 0
      L7_2 = L7_2(L8_2, L9_2)
      L6_2.value = L7_2
    end
  elseif A1_2 == 1 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member2
    L7_2 = L6_2
    L6_2 = L6_2.ClearOptions
    L6_2(L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member2
    L7_2 = L6_2
    L6_2 = L6_2.AddOptions
    L8_2 = L3_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member2
    L6_2.value = 0
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.drop_down_team_member2
      L8_2 = A0_2
      L7_2 = A0_2._get_team_member_drop_down_value
      L9_2 = 1
      L7_2 = L7_2(L8_2, L9_2)
      L6_2.value = L7_2
    end
  elseif A1_2 == 2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member3
    L7_2 = L6_2
    L6_2 = L6_2.ClearOptions
    L6_2(L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member3
    L7_2 = L6_2
    L6_2 = L6_2.AddOptions
    L8_2 = L3_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member3
    L6_2.value = 0
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.drop_down_team_member3
      L8_2 = A0_2
      L7_2 = A0_2._get_team_member_drop_down_value
      L9_2 = 2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2.value = L7_2
    end
  elseif A1_2 == 3 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member4
    L7_2 = L6_2
    L6_2 = L6_2.ClearOptions
    L6_2(L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member4
    L7_2 = L6_2
    L6_2 = L6_2.AddOptions
    L8_2 = L3_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.drop_down_team_member4
    L6_2.value = 0
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.drop_down_team_member4
      L8_2 = A0_2
      L7_2 = A0_2._get_team_member_drop_down_value
      L9_2 = 3
      L7_2 = L7_2(L8_2, L9_2)
      L6_2.value = L7_2
    end
  end
end
L0_1._refresh_team_member_selection = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_skilltree1
  L3_2 = A0_2
  L2_2 = A0_2._get_skill_tree_point_value
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_skilltree2
  L3_2 = A0_2
  L2_2 = A0_2._get_skill_tree_point_value
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_skilltree3
  L3_2 = A0_2
  L2_2 = A0_2._get_skill_tree_point_value
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_skilltree4
  L3_2 = A0_2
  L2_2 = A0_2._get_skill_tree_point_value
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
end
L0_1._setup_skill_tree_points = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_level1
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_level_value
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_level2
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_level_value
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_level3
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_level_value
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_avatar_level4
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_level_value
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.text = L2_2
end
L0_1._setup_avatar_levels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = "Empty"
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = A0_2._lineup_preset_cfgs
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.Add
    L8_2 = A0_2._lineup_preset_cfgs
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.Name
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_preset
  L3_2 = L2_2
  L2_2 = L2_2.ClearOptions
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_preset
  L3_2 = L2_2
  L2_2 = L2_2.AddOptions
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_preset
  L2_2.value = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_preset
  L2_2 = L2_2.onValueChanged
  L3_2 = L2_2
  L2_2 = L2_2.AddListener
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_lineup_preset_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._setup_lineup_presets = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_performance_data
  L1_2(L2_2)
  L1_2 = A0_2._performance_path
  if nil ~= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.input_story_gender_info
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.LevelJsonTable
    L2_2 = L2_2.GetLevelGraphPerformanceGenderInfo
    L3_2 = A0_2._performance_path
    L2_2 = L2_2(L3_2)
    L1_2.text = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.input_story_gender_info
    L1_2.text = "\230\151\160\230\128\167\229\136\171\233\153\144\229\136\182"
  end
end
L0_1._setup_input_story_gender_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGApplication
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.RestartGameDev
  L1_2(L2_2)
end
L0_1._on_btn_back = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2._filtered_plane_id_list
  L1_2 = L1_2.Count
  if L1_2 <= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogWarning
    L2_2 = "\231\173\155\233\128\137\231\154\132\232\191\183\229\174\171\229\156\186\230\153\175\228\184\186\231\169\186\239\188\140\230\151\160\230\179\149\232\191\155\229\133\165\232\191\183\229\174\171\239\188\129"
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_performance_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_init_params
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_planeid
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_floorid
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_dimension_id
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_avatar_cfgs
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L9_2 = A0_2
  L8_2 = A0_2._get_herobasictype
  L8_2 = L8_2(L9_2)
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.Dev
  L9_2 = L9_2.VirtualServerLauncher
  L9_2 = L9_2.CreateLaunchConfig
  L10_2 = L2_2
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = L6_2
  L15_2 = L7_2
  L16_2 = L8_2
  L17_2 = CS
  L17_2 = L17_2.RPG
  L17_2 = L17_2.GameCore
  L17_2 = L17_2.GenderType
  L17_2 = L17_2.__CastFrom
  L18_2 = A0_2._binder
  L18_2 = L18_2.drop_down_gender
  L18_2 = L18_2.value
  L18_2 = L18_2 + 1
  L17_2, L18_2 = L17_2(L18_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.Dev
  L10_2 = L10_2.VirtualServerLauncher
  L10_2 = L10_2.LaunchWithConfig
  L11_2 = L9_2
  L10_2(L11_2)
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.GlobalVars
  L10_2 = L10_2.s_GamePhaseManager
  L11_2 = L10_2
  L10_2 = L10_2.SetCurrentPhase
  L12_2 = CS
  L12_2 = L12_2.RPG
  L12_2 = L12_2.Client
  L12_2 = L12_2.GamePhaseType
  L12_2 = L12_2.Adventure
  L13_2 = L1_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.DevDataUtils
  L10_2 = L10_2.RecordMembersInTeam
  L11_2 = L5_2
  L10_2(L11_2)
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.DevDataUtils
  L10_2 = L10_2.RecordTeamMemberSkillTreePoints
  L11_2 = L6_2
  L10_2(L11_2)
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.DevDataUtils
  L10_2 = L10_2.RecordTeamMemberLevels
  L11_2 = L7_2
  L10_2(L11_2)
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.DevDataUtils
  L10_2.PlaneID = L2_2
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.DevDataUtils
  L10_2.FloorID = L3_2
  L11_2 = A0_2
  L10_2 = A0_2.exit
  L10_2(L11_2)
end
L0_1._on_btn_begin = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._performance_id = -1
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ELevelPerformanceType
  L1_2 = L1_2.Unknown
  A0_2._performance_type = L1_2
  A0_2._performance_plane = -1
  A0_2._performance_floor = -1
  A0_2._performance_path = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_story
  L1_2 = L1_2.text
  if L1_2 ~= "" then
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = tonumber
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    A0_2._performance_id = L2_2
  end
  L2_2 = A0_2._performance_id
  if L2_2 < 0 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_story_type
  L2_2 = L2_2.value
  L3_2 = false
  L4_2 = L2_2 == 0
  if L3_2 == false and (L2_2 == 1 or L4_2) then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ELevelPerformanceType
    L5_2 = L5_2.A
    A0_2._performance_type = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.PerformanceAExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._performance_id
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.PlaneID
      A0_2._performance_plane = L6_2
      L6_2 = L5_2.FloorID
      A0_2._performance_floor = L6_2
      L6_2 = L5_2.PerformancePath
      A0_2._performance_path = L6_2
      L3_2 = true
    end
  end
  if L3_2 == false and (L2_2 == 2 or L4_2) then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ELevelPerformanceType
    L5_2 = L5_2.C
    A0_2._performance_type = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.PerformanceCExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._performance_id
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.PlaneID
      A0_2._performance_plane = L6_2
      L6_2 = L5_2.FloorID
      A0_2._performance_floor = L6_2
      L6_2 = L5_2.PerformancePath
      A0_2._performance_path = L6_2
      L3_2 = true
    end
  end
  if L3_2 == false and (L2_2 == 3 or L4_2) then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ELevelPerformanceType
    L5_2 = L5_2.D
    A0_2._performance_type = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.PerformanceDExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._performance_id
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.PlaneID
      A0_2._performance_plane = L6_2
      L6_2 = L5_2.FloorID
      A0_2._performance_floor = L6_2
      L6_2 = L5_2.PerformancePath
      A0_2._performance_path = L6_2
      L3_2 = true
    end
  end
  if L3_2 == false and (L2_2 == 4 or L4_2) then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ELevelPerformanceType
    L5_2 = L5_2.E
    A0_2._performance_type = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.PerformanceEExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._performance_id
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.PlaneID
      A0_2._performance_plane = L6_2
      L6_2 = L5_2.FloorID
      A0_2._performance_floor = L6_2
      L6_2 = L5_2.PerformancePath
      A0_2._performance_path = L6_2
      L3_2 = true
    end
  end
  if L3_2 == false and (L2_2 == 5 or L4_2) then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ELevelPerformanceType
    L5_2 = L5_2.PlayVideo
    A0_2._performance_type = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.PerformanceVideoExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._performance_id
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.PlaneID
      A0_2._performance_plane = L6_2
      L6_2 = L5_2.FloorID
      A0_2._performance_floor = L6_2
      L6_2 = L5_2.PerformancePath
      A0_2._performance_path = L6_2
      L3_2 = true
    end
  end
end
L0_1._get_performance_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AdventurePhaseInitParams
  L1_2 = L1_2()
  L2_2 = NG_HSOD_DEBUG
  if not L2_2 then
    L2_2 = NG_HSOD_PROFILE
    if not L2_2 then
      goto lbl_24
    end
  end
  L2_2 = A0_2._performance_id
  if 0 <= L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.Log
    L3_2 = A0_2._performance_id
    L2_2(L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.SetupEnterMapTriggerStory
    L4_2 = A0_2._performance_id
    L5_2 = A0_2._performance_type
    L2_2(L3_2, L4_2, L5_2)
  end
  ::lbl_24::
  return L1_2
end
L0_1._create_init_params = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._performance_id
  if L1_2 ~= nil then
    L1_2 = A0_2._performance_id
    if 0 < L1_2 then
      L1_2 = A0_2._performance_plane
      L2_2 = L1_2 or L2_2
      if not (L1_2 == nil or 0 < L1_2) or not L1_2 then
        L2_2 = 10000
      end
      return L2_2
    end
  end
  L1_2 = A0_2._filtered_plane_id_list
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_plane
  L2_2 = L2_2.value
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1._get_planeid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._performance_id
  if L1_2 ~= nil then
    L1_2 = A0_2._performance_id
    if 0 < L1_2 then
      L1_2 = A0_2._performance_floor
      L2_2 = L1_2 or L2_2
      if not (L1_2 == nil or 0 < L1_2) or not L1_2 then
        L2_2 = 10000000
      end
      return L2_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePlaneExcelTable
  L1_2 = L1_2.GetData
  L3_2 = A0_2
  L2_2 = A0_2._get_planeid
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.FloorIDList
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_floor
  L3_2 = L3_2.value
  L2_2 = L2_2[L3_2]
  return L2_2
end
L0_1._get_floorid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 0
  L2_2 = A0_2._dimension_list
  if L2_2 ~= nil then
    L2_2 = tonumber
    L3_2 = A0_2._dimension_list
    L4_2 = A0_2._binder
    L4_2 = L4_2.drop_down_dimension
    L4_2 = L4_2.value
    L3_2 = L3_2[L4_2]
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
L0_1._get_dimension_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = nil
  L6_2 = A0_2
  L5_2 = A0_2._get_origin_dropindex
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  if 0 < L5_2 then
    L5_2 = A0_2._team_member_cfgs
    L7_2 = A0_2
    L6_2 = A0_2._get_origin_dropindex
    L8_2 = 1
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2 - 1
    L4_2 = L5_2[L6_2]
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L1_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AvatarData
    L7_2 = L7_2.ConvertRealIDToBase
    L8_2 = L4_2.AvatarID
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_skilltree1
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L3_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_level1
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._get_origin_dropindex
  L7_2 = 2
  L5_2 = L5_2(L6_2, L7_2)
  if 0 < L5_2 then
    L5_2 = A0_2._team_member_cfgs
    L7_2 = A0_2
    L6_2 = A0_2._get_origin_dropindex
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2 - 1
    L4_2 = L5_2[L6_2]
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L1_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AvatarData
    L7_2 = L7_2.ConvertRealIDToBase
    L8_2 = L4_2.AvatarID
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_skilltree2
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L3_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_level2
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._get_origin_dropindex
  L7_2 = 3
  L5_2 = L5_2(L6_2, L7_2)
  if 0 < L5_2 then
    L5_2 = A0_2._team_member_cfgs
    L7_2 = A0_2
    L6_2 = A0_2._get_origin_dropindex
    L8_2 = 3
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2 - 1
    L4_2 = L5_2[L6_2]
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L1_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AvatarData
    L7_2 = L7_2.ConvertRealIDToBase
    L8_2 = L4_2.AvatarID
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_skilltree3
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L3_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_level3
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._get_origin_dropindex
  L7_2 = 4
  L5_2 = L5_2(L6_2, L7_2)
  if 0 < L5_2 then
    L5_2 = A0_2._team_member_cfgs
    L7_2 = A0_2
    L6_2 = A0_2._get_origin_dropindex
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2 - 1
    L4_2 = L5_2[L6_2]
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L1_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AvatarData
    L7_2 = L7_2.ConvertRealIDToBase
    L8_2 = L4_2.AvatarID
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_skilltree4
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L3_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.input_avatar_level4
    L7_2 = L7_2.text
    L5_2(L6_2, L7_2)
  end
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  return L5_2, L6_2, L7_2
end
L0_1._get_avatar_cfgs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_origin_dropindex
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._find_hero_basic_type
    L3_2 = A0_2._team_member_cfgs
    L5_2 = A0_2
    L4_2 = A0_2._get_origin_dropindex
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 - 1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.AvatarID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      return L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_origin_dropindex
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._find_hero_basic_type
    L3_2 = A0_2._team_member_cfgs
    L5_2 = A0_2
    L4_2 = A0_2._get_origin_dropindex
    L6_2 = 2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 - 1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.AvatarID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      return L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_origin_dropindex
  L3_2 = 3
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._find_hero_basic_type
    L3_2 = A0_2._team_member_cfgs
    L5_2 = A0_2
    L4_2 = A0_2._get_origin_dropindex
    L6_2 = 3
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 - 1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.AvatarID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      return L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_origin_dropindex
  L3_2 = 4
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._find_hero_basic_type
    L3_2 = A0_2._team_member_cfgs
    L5_2 = A0_2
    L4_2 = A0_2._get_origin_dropindex
    L6_2 = 4
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 - 1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.AvatarID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      return L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.CMCPNNMDCGC
  L1_2 = L1_2.FIAPOPFBBPD
  return L1_2
end
L0_1._get_herobasictype = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if 8001 <= A1_2 and A1_2 <= 8014 then
    L2_2 = CS
    L2_2 = L2_2.CMCPNNMDCGC
    L2_2 = L2_2.__CastFrom
    L3_2 = A1_2
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1._find_hero_basic_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.TeamMemberIDs
  L2_2 = L2_2.Value
  L3_2 = L2_2.Count
  if A1_2 < L3_2 then
    L3_2 = 0
    L4_2 = A0_2._team_member_cfgs
    L4_2 = L4_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._team_member_cfgs
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.ID
      L8_2 = L2_2[A1_2]
      if L7_2 == L8_2 then
        L7_2 = L6_2 + 1
        return L7_2
      end
    end
  else
    L3_2 = A1_2 + 1
    return L3_2
  end
end
L0_1._get_team_member_drop_down_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.TeamMemberSkillTreePoints
  L2_2 = L2_2.Value
  L3_2 = L2_2.Count
  if A1_2 < L3_2 then
    L3_2 = L2_2[A1_2]
    return L3_2
  end
end
L0_1._get_skill_tree_point_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.TeamMemberLevels
  L2_2 = L2_2.Value
  L3_2 = L2_2.Count
  if A1_2 < L3_2 then
    L3_2 = L2_2[A1_2]
    return L3_2
  end
end
L0_1._get_avatar_level_value = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.DevDataUtils
  L1_2 = L1_2.PlaneID
  L2_2 = 0
  L3_2 = A0_2._filtered_plane_id_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._filtered_plane_id_list
    L6_2 = L6_2[L5_2]
    if L6_2 == L1_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1._get_plane_drop_down_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.FloorID
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 == L2_2 then
      return L6_2
    end
  end
  L3_2 = 0
  return L3_2
end
L0_1._get_floor_drop_down_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 <= 0 then
    return
  end
  L2_2 = A0_2._lineup_preset_cfgs
  L3_2 = A1_2 - 1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.LineupConfigList
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if 1 <= L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.drop_down_team_member1
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_drop_down_index
      L6_2 = A0_2._member1_filtered_indexs
      L7_2 = L2_2[0]
      L7_2 = L7_2.AvatarId
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2.value = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_level1
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_level_text
      L6_2 = L2_2[0]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_skilltree1
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_skill_point_text
      L6_2 = L2_2[0]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
    end
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if 2 <= L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.drop_down_team_member2
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_drop_down_index
      L6_2 = A0_2._member2_filtered_indexs
      L7_2 = L2_2[1]
      L7_2 = L7_2.AvatarId
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2.value = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_level2
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_level_text
      L6_2 = L2_2[1]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_skilltree2
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_skill_point_text
      L6_2 = L2_2[1]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
    end
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if 3 <= L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.drop_down_team_member3
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_drop_down_index
      L6_2 = A0_2._member3_filtered_indexs
      L7_2 = L2_2[2]
      L7_2 = L7_2.AvatarId
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2.value = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_level3
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_level_text
      L6_2 = L2_2[2]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_skilltree3
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_skill_point_text
      L6_2 = L2_2[2]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
    end
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if 4 <= L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.drop_down_team_member4
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_drop_down_index
      L6_2 = A0_2._member4_filtered_indexs
      L7_2 = L2_2[3]
      L7_2 = L7_2.AvatarId
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2.value = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_level4
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_level_text
      L6_2 = L2_2[3]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.input_avatar_skilltree4
      L5_2 = A0_2
      L4_2 = A0_2._get_team_member_skill_point_text
      L6_2 = L2_2[3]
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
    end
  end
end
L0_1._on_lineup_preset_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 1
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._team_member_cfgs
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2 - 1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.AvatarID
    if L7_2 == A2_2 then
      return L6_2
    end
  end
  L3_2 = 0
  return L3_2
end
L0_1._get_team_member_drop_down_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.Level
  L3_2 = ", "
  L4_2 = A1_2.Promotion
  L5_2 = ", "
  L6_2 = A1_2.Rank
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  return L2_2
end
L0_1._get_team_member_level_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.SkillTreePointList
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if 0 < L3_2 then
      L3_2 = {}
      L4_2 = 0
      L5_2 = L2_2.Length
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = #L3_2
        L8_2 = L8_2 + 1
        L9_2 = L2_2[L7_2]
        L9_2 = L9_2.Id
        L10_2 = ":"
        L11_2 = L2_2[L7_2]
        L11_2 = L11_2.Level
        L9_2 = L9_2 .. L10_2 .. L11_2
        L3_2[L8_2] = L9_2
      end
      L4_2 = table
      L4_2 = L4_2.concat
      L5_2 = L3_2
      L6_2 = ","
      return L4_2(L5_2, L6_2)
    end
  end
  L3_2 = ""
  return L3_2
end
L0_1._get_team_member_skill_point_text = L1_1
return L0_1
