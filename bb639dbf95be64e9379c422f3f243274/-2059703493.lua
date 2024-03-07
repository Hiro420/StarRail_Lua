local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumTargetRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumNewTargetHint"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._museum_target = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._museum_target = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_staff
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_item
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_fund
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._museum_target
  L1_2 = L1_2.RewardType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumTargetRewardType
  L2_2 = L2_2.Staff
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._museum_target
  L1_2 = L1_2.RewardStaff
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A0_2._museum_target
  L3_2 = L3_2.RewardItemRow
  L3_2 = L3_2.ItemName
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ActivityMuseum_Target_Stuff"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_staff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._museum_target
  L1_2 = L1_2.RewardType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumTargetRewardType
  L2_2 = L2_2.ExhibitItem
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._museum_target
    L1_2 = L1_2.RewardType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MuseumTargetRewardType
    L2_2 = L2_2.Event
    if L1_2 ~= L2_2 then
      return
    end
  end
  L1_2 = A0_2._museum_target
  L1_2 = L1_2.RewardItem
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._museum_target
  L2_2 = L2_2.Row
  L2_2 = L2_2.TypeParameter
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MuseumRandomEventConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EventMuseumItemConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.EventTypeParameter
  L5_2 = L5_2[0]
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.MissionModule
  L6_2 = L5_2
  L5_2 = L5_2.TryGetMainMissionData
  L7_2 = L4_2.MissionID
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = null
  if L5_2 ~= L6_2 then
    L6_2 = L5_2.IsStart
    if not L6_2 then
      L6_2 = L5_2.IsFinish
      if not L6_2 then
        goto lbl_72
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.safe_set_active
  L8_2 = false
  L6_2(L7_2, L8_2)
  do return end
  ::lbl_72::
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_item
  L9_2 = L1_2.ItemRow
  L9_2 = L9_2.ItemIconPath
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = A0_2._museum_target
  L7_2 = L7_2.RewardItemRow
  L7_2 = L7_2.ItemName
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.txt_title
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = "UIText_ActivityMuseum_Target_ItemMission"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end
L0_1._setup_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._museum_target
  L1_2 = L1_2.RewardType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumTargetRewardType
  L2_2 = L2_2.Fund
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.MuseumUtils
  L1_2 = L1_2.get_fund_item_data
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_item
  L5_2 = L1_2.Row
  L5_2 = L5_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityMuseum_Target_Fund"
  L5_2 = A0_2._museum_target
  L5_2 = L5_2.RewardFund
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_fund = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._museum_target
  L1_2 = L1_2.RewardType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumTargetRewardType
  L2_2 = L2_2.Staff
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Museum.Target.MuseumTargetRewardPreviewStaffDialog"
    L4_2 = A0_2._museum_target
    L4_2 = L4_2.RewardStaff
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MuseumTargetRewardType
    L2_2 = L2_2.Event
    if L1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Museum.MuseumCollectionDetailDialog"
      L4_2 = A0_2._museum_target
      L4_2 = L4_2.RewardItem
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.MuseumTargetRewardType
      L2_2 = L2_2.Fund
      if L1_2 == L2_2 then
        L2_2 = G
        L2_2 = L2_2.UIManager
        L2_2 = L2_2.load_and_show
        L3_2 = "Ui.Common.ItemDetailDialog"
        L2_2 = L2_2(L3_2)
        L4_2 = L2_2
        L3_2 = L2_2.setup_view
        L5_2 = L1_1.MuseumCurrencyConfigID
        L3_2(L4_2, L5_2)
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2.MuseumNewTargetHint = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = A0_2.__name
  L5_2 = "TargetRewardDetailBtn"
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_detail = L2_1
return L0_1
