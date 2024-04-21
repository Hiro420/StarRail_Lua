local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MessageUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageItemRaidEntranceExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.RaidID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.RaidModule
  L5_2 = L4_2
  L4_2 = L4_2.IsRaidFinished
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    if A1_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.GlobalVars
      L5_2 = L5_2.s_ModuleManager
      L5_2 = L5_2.RaidModule
      L6_2 = L5_2
      L5_2 = L5_2.GetRaidMinWorldLv
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.RaidConfigExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L3_2
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.ToastPile
      L7_2 = L7_2()
      L7_2.DescTextID = "UIText_PhoneMessage_RaidFinished"
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L9_2 = L6_2.RaidName
      L8_2 = L8_2(L9_2)
      L7_2.TextIDParam = L8_2
      L8_2 = G
      L8_2 = L8_2.NotifyManager
      L8_2 = L8_2.notify
      L9_2 = G
      L9_2 = L9_2.CS
      L9_2 = L9_2.NotifyType
      L9_2 = L9_2.UIPileToastMessageStruct
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    return
  end
  L5_2 = L0_1._get_raid_blocking_missions
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = #L5_2
  L6_2 = L6_2 == 0
  if not L6_2 then
    L7_2 = ipairs
    L8_2 = L5_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.ToastPile
      L12_2 = L12_2()
      L12_2.DescTextID = "UIText_PhoneMessage_RaidNotOpenHint"
      L13_2 = G
      L13_2 = L13_2.TextmapStatic
      L13_2 = L13_2.GetText
      L14_2 = L11_2.Row
      L14_2 = L14_2.Name
      L13_2 = L13_2(L14_2)
      L12_2.TextIDParam = L13_2
      L13_2 = G
      L13_2 = L13_2.NotifyManager
      L13_2 = L13_2.notify
      L14_2 = G
      L14_2 = L14_2.CS
      L14_2 = L14_2.NotifyType
      L14_2 = L14_2.UIPileToastMessageStruct
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
    return
  end
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.RaidModule
  L8_2 = L7_2
  L7_2 = L7_2.StartRaidByMessage
  L9_2 = L3_2
  L10_2 = L2_2.IsSkipUI
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.go_raid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2.InvalidMissionList
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.GlobalVars
    L8_2 = L8_2.s_ModuleManager
    L8_2 = L8_2.MissionModule
    L9_2 = L8_2
    L8_2 = L8_2.TryGetMainMissionData
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.IsStart
      if L9_2 then
        L9_2 = L8_2.IsFinish
        if not L9_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L1_2
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
        end
      end
    end
  end
  return L1_2
end
L0_1._get_raid_blocking_missions = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MessageItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageVideoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.ItemContentID
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MessageModule
  L4_2 = L3_2
  L3_2 = L3_2.IsItemFinished
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Common.Video.CommonVideoPage"
  L6_2 = L2_2.VideoID
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2.LuaTable
  L5_2.end_pause = true
  L5_2 = L4_2.LuaTable
  L5_2.skip_text_id = "UIText_PhoneMessage_Video_Dialog_Desc_Skip"
  return L4_2
end
L0_1.go_video = L1_1
return L0_1
