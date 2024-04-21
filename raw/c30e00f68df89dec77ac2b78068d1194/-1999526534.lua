local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "RaidCollectionUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidCollectionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_RaidCollection_OptionalRewardQuestID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.RewardPreview.OptionAvatarRewardSelectDialog"
  L2_2 = L2_1
  L3_2 = "UIText_RaidCollection_MainPage_Title"
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = L0_2.LuaTable
  L2_2 = L1_2
  L1_2 = L1_2.set_title_icon_path
  L3_2 = "SpriteOutput/TabIcon/Activity/MiniLevelGame.png"
  L1_2(L2_2, L3_2)
end
L0_1.go_select_reward_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
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
  L8_2 = A0_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L4_2(L5_2, L6_2)
end
L0_1.goto_area_switch = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.Prefs
  L0_2 = L0_2.User
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowTimeStamp
  L0_2.RaidCollectionSeenTimeStamp = L1_2
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.notify
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyType
  L1_2 = L1_2.RaidCollectionRefreshActivitySeen
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.notify
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyType
  L1_2 = L1_2.ActivityForceRefreshRedDot
  L0_2(L1_2)
end
L0_1.refresh_activity_daily_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityRaidCollectionModeExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = L3_2.RaidCollectionGroupList
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.index_of_item
    L6_2 = L4_2
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
    if nil ~= L5_2 then
      L1_2 = L3_2.RaidCollectionTabID
      break
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.Dispose
  L3_2(L4_2)
  return L1_2
end
L0_1.get_group_tab_id = L3_1
return L0_1
