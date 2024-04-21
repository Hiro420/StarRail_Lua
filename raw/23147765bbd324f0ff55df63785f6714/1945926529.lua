local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Raid.Entrance.RaidEntrancePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmTeamEditPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidEntrancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RaidEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._raid_id = 0
  A0_2._raid_config_row = nil
  L1_2 = {}
  A0_2._limit_ids = L1_2
  A0_2._will_enter = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._entity_id = A1_2
  A0_2._raid_id = A2_2
  A0_2._raid_level = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A2_2
  L5_2 = A0_2._raid_level
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._raid_config_row = L3_2
  L3_2 = {}
  A0_2._limit_ids = L3_2
  L3_2 = 0
  L4_2 = A0_2._raid_config_row
  L4_2 = L4_2.LimitIDList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._limit_ids
    L9_2 = A0_2._raid_config_row
    L9_2 = L9_2.LimitIDList
    L9_2 = L9_2[L6_2]
    L7_2(L8_2, L9_2)
  end
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockPlayerControl
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._will_enter
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.Notify
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.CancelEnterRaid
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockPlayerControl
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._raid_config_row
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L3_2 = A0_2._raid_config_row
  L3_2 = L3_2.RaidName
  L4_2 = A0_2._raid_config_row
  L4_2 = L4_2.RaidDesc
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_enemy_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_limit_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_layout
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_info_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_raid
  L3_2 = A0_2._raid_config_row
  L4_2 = L1_1.PlayerData
  L4_2 = L4_2.WorldLevel
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_enemy_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team_limit
  L3_2 = L2_2
  L2_2 = L2_2.setup_limit
  L4_2 = A0_2._limit_ids
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team_limit
  L3_2 = L2_2
  L2_2 = L2_2.switch_team
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_limit_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._raid_config_row
  L1_2 = L1_2.EntrancePageBGImagePath
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_bg
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_bg_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_team_limit
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._raid_config_row
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L2_2 = L1_2
  L1_2 = L1_2.CheckRaidBanWithHint
  L3_2 = A0_2._raid_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_generate_recommend_attribute
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.FarmEnemy.FarmTeamEditPage"
  L3_2 = A0_2._enter_raid
  L4_2 = A0_2
  L5_2 = A0_2._limit_ids
  L6_2 = false
  L7_2 = false
  L8_2 = A0_2._recommend_attributes
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_btn_confirm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._will_enter = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L2_2 = L1_2
  L1_2 = L1_2.StartRaid
  L3_2 = A0_2._entity_id
  L4_2 = A0_2._raid_id
  L5_2 = A0_2._raid_level
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._enter_raid = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._raid_config_row
  L1_2 = L1_2.AutoObtainDamageType
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._try_read_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_cal_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  end
end
L0_1._try_generate_recommend_attribute = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._raid_config_row
  L2_2 = L2_2.DamageType
  return L1_2(L2_2)
end
L0_1._try_read_recommend_attribute = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RaidUtils
  L1_2 = L1_2.get_all_monster_ids_by_raid
  L2_2 = A0_2._raid_config_row
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.auto_construct_recommend_attributes
  L3_2 = L1_2
  L4_2 = true
  return L2_2(L3_2, L4_2)
end
L0_1._try_cal_recommend_attribute = L2_1
return L0_1
