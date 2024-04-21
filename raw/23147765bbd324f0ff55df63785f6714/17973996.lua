local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.FoodUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeBuffListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "5020"
L2_1 = "4010"
function L3_1(A0_2)
  local L1_2
  A0_2._is_blocked_by_hud_template = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_btn_buff_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_consumable
  L4_2 = A0_2._on_btn_quick_consume
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshBuff
  L4_2 = L0_1._on_maze_refresh_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowTeamBuffDetailDialog
  L4_2 = A0_2._on_show_team_buff_detail_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEnvBuffDialogExit
  L4_2 = A0_2._on_show_env_buff_add_anim
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureOnBuffCreate
  L4_2 = A0_2._on_buff_create
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._item_buff_can_show_anim = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_blocked_by_hud_template = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L2_2(L3_2)
end
L0_1.set_hud_template = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.get_buff_counts
  L1_2 = L1_2()
  if not (0 < L1_2) then
    L1_2 = G
    L1_2 = L1_2.FoodUtils
    L1_2 = L1_2.open_quick_consumable_switch_count
    L1_2 = L1_2()
  end
  L1_2 = A0_2._is_blocked_by_hud_template
  L1_2 = 0 < L1_2 and L1_2
  L2_2 = A0_2._logic_inactive
  if L2_2 then
    L1_2 = false
  end
  if L1_2 == true then
    L2_2 = A0_2._is_active
    if L2_2 ~= true then
      L3_2 = A0_2
      L2_2 = A0_2._owner_is_top_page
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.safe_set_active
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        A0_2._is_active = L1_2
        L3_2 = A0_2
        L2_2 = A0_2._invoke_tutorial
        L2_2(L3_2)
      end
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_quick_consumable_view
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.get_all_team_buff
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.get_env_buff
  L2_2 = L2_2()
  L1_2 = L1_2 - L2_2
  if 0 < L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._invoke_tutorial = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.IsDisplay
    if L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._item_buff_can_show_anim
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_buff_create = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1._on_show_env_buff_add_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L1_2(L2_2)
end
L0_1._on_maze_refresh_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_buff_click
  L1_2(L2_2)
end
L0_1._on_show_team_buff_detail_dialog = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = "MazeMainPage"
  L3_2 = ""
  L4_2 = "BuffBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Maze.MazeBuff.TeamBuffDetailDialog"
  L1_2(L2_2)
end
L0_1._on_btn_buff_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Maze.MazeBuff.TeamBuffDetailDialog"
  L3_2 = nil
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_quick_consume = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.enable_quick_use_func
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.InventoryModule
  L3_2 = L2_2.QuickConsumableItems
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_quick_consumable_eff
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2 or L6_2
  if L1_2 then
    L6_2 = L3_2.Count
    L6_2 = 0 < L6_2
  end
  L4_2(L5_2, L6_2)
end
L0_1._setup_quick_consumable_view = L3_1
function L3_1(A0_2, A1_2)
  A0_2._logic_inactive = A1_2
end
L0_1.set_panel_inactive = L3_1
return L0_1
