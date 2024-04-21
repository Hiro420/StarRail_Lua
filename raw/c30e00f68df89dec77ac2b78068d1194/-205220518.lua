local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardDialog"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.LevelDifficulty
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FightActivityModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FightActivityRewardDialog"
L4_1 = G
L4_1 = L4_1.BaseDialog
L2_1 = L2_1(L3_1, L4_1)
L3_1 = "UIText_ActivityFight_DisplayReward"
L4_1 = "UIText_ActivityFight_Tips"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FightActivityRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  A0_2._group_row = A1_2
  L2_2 = A0_2._group_row
  L2_2 = L2_2.ActivityFightGroupID
  A0_2._group_id = L2_2
  A0_2._group_info = nil
  A0_2._reward_items = nil
end
L2_1.init = L5_1
function L5_1(A0_2, A1_2)
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
L2_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L2_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L2_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FightActivityDataUpdated
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FightActivityGetReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._group_row = nil
  A0_2._group_info = nil
  A0_2._reward_items = nil
end
L2_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFightConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._group_id
  L4_2 = L0_1.Easy
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFightConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._group_id
  L4_2 = L0_1.Normal
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFightConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._group_id
  L4_2 = L0_1.Hard
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.QuestDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2[3]
  L3_2 = L3_2.RewardQuest
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateDisplayItemDataFromReward
  L5_2 = L1_2[1]
  L5_2 = L5_2.RewardID
  L4_2 = L4_2(L5_2)
  L3_2[1] = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateDisplayItemDataFromReward
  L5_2 = L1_2[2]
  L5_2 = L5_2.RewardID
  L4_2 = L4_2(L5_2)
  L3_2[2] = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateDisplayItemDataFromReward
  L5_2 = L1_2[3]
  L5_2 = L5_2.RewardID
  L4_2 = L4_2(L5_2)
  L3_2[3] = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateDisplayItemDataFromReward
  L5_2 = L2_2.RewardID
  L4_2 = L4_2(L5_2)
  L3_2[4] = L4_2
  A0_2._reward_items = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetFightActivityGroupInfo
  L5_2 = A0_2._group_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._group_info = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view
  L4_2 = L3_2
  L3_2 = L3_2.InitListView
  L5_2 = A0_2._reward_items
  L5_2 = #L5_2
  L6_2 = A0_2._on_item_change
  L7_2 = nil
  L8_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L3_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.tip_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L4_1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L2_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFightActivityGroupInfo
  L3_2 = A0_2._group_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._group_info = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._refresh = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.FightActivityRewardPanel
  L8_2 = G
  L8_2 = L8_2.FightActivityRewardPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_reward_btn
  L7_2 = A0_2._on_btn_reward_item
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._group_info
  L8_2 = A2_2 + 1
  L9_2 = A0_2._reward_items
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L2_1._on_item_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_close = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2.__name
  L4_2 = ""
  L5_2 = A0_2._group_id
  L5_2 = L5_2 * 10
  L5_2 = L5_2 + A1_2
  L6_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SendTakeRewardCsReq
  L4_2 = A0_2._group_id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_btn_reward_item = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = G
  L3_2 = L3_2.RewardDialog
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L2_1._on_get_reward = L5_1
return L2_1
