local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkRaidBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.RaidLevelStarItem"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
L2_1 = "UIText_ClockPark_Raid_Lock_Toast"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ClockParkRaidBtnPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = {}
  A0_2._panel_stars = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_stars
    L7_2 = L7_2.Prefab
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_stars
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RaidLevelStarItem
    L9_2 = G
    L9_2 = L9_2.RaidLevelStarItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._panel_stars
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L3_1.get_btn = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._clock_park_raid_row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2._clock_park_raid_row
  L2_2 = L2_2.RaidUnlockProgress
  L2_2 = L2_2 / 100
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_percent
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L5_2 = "%"
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_percent_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L5_2 = "%"
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._clock_park_raid_row
  L2_2 = L2_2.RaidUnlockProgress
  L3_2 = L0_1.Progress
  L2_2 = L2_2 <= L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_unlock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_unlock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_stars
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_percent_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._clock_park_raid_row
  L4_2 = L4_2.RaidID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_raid_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.RaidName
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_star_view
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "ClockParkRaidNew"
  L7_2 = A0_2._clock_park_raid_row
  L7_2 = L7_2.RaidID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureChallengeStatus
  L3_2 = A0_2._clock_park_raid_row
  L3_2 = L3_2.RaidID
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.FinishedCount
  A0_2._target_finish_count = L2_2
  L2_2 = L1_2.TotalCount
  A0_2._target_ttl_count = L2_2
  L2_2 = A0_2._target_ttl_count
  if L2_2 == nil then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._target_ttl_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._panel_stars
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_active
    L8_2 = A0_2._target_finish_count
    L8_2 = L5_2 <= L8_2
    L6_2(L7_2, L8_2)
  end
end
L3_1._setup_star_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._clock_park_raid_row
  L1_2 = L1_2.RaidUnlockProgress
  L2_2 = L0_1.Progress
  L1_2 = L1_2 <= L2_2
  if L1_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.SetRaidUnlock
    L4_2 = A0_2._clock_park_raid_row
    L4_2 = L4_2.RaidID
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GotoMapParam
    L2_2 = L2_2()
    L3_2 = A0_2._clock_park_raid_row
    L3_2 = L3_2.RaidMapinfo
    L2_2.MappingInfoID = L3_2
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.GotoMap
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.SDKLuaReportAdapter
    L3_2 = L3_2.ReportUIButtonClick
    L4_2 = A0_2._owner
    L4_2 = L4_2.__name
    L5_2 = A0_2.__name
    L6_2 = "GotoRaid"
    L7_2 = L2_2.MappingInfoID
    L6_2 = L6_2 .. L7_2
    L7_2 = A0_2._owner
    L7_2 = L7_2.guid
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L3_1._on_btn_root = L4_1
return L3_1
