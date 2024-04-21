local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaTrial.GachaNormalTrialAvatarTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaNormalTrialAvatarTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.avatar_demo_row
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = A0_2.__name
    L4_2 = "GachaTrialTab"
    L5_2 = tostring
    L6_2 = A0_2.avatar_demo_row
    L6_2 = L6_2.StageID
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1.on_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarDemoConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.avatar_demo_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.avatar_demo_row
  L3_2 = L3_2.AvatarID
  L2_2 = L2_2(L3_2)
  A0_2._avatar_row = L2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_unselect
  L4_2 = A0_2.avatar_demo_row
  L4_2 = L4_2.AvatarTabPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2.avatar_demo_row
  L2_2 = L2_2.AvatarTabPath
  L3_2 = ".png"
  L4_2 = "_Selected.png"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_select
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_finish_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "GachaNormalTrialTab"
  L5_2 = A0_2.avatar_demo_row
  L5_2 = L5_2.StageID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.RoleTrialModule
  L4_2 = L3_2
  L3_2 = L3_2.IsRewardTaken
  L5_2 = A0_2.avatar_demo_row
  L5_2 = L5_2.StageID
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.refresh_finish_view = L1_1
return L0_1
