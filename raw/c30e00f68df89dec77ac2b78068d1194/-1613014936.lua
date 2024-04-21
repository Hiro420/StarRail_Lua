local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.CompanionMissionActivityAvatarTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CompanionMissionActivityAvatarTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2.banner_id = A1_2
  L3_2 = A2_2 or L3_2
  if A2_2 == nil or not A2_2 then
    L3_2 = false
  end
  A0_2._is_finish = L3_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityBannerCompanyMissionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.banner_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.AvatarIDList
  L3_2 = L3_2[0]
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_avatar
    L6_2 = L2_2.AvatarSideIconPath
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_finish
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_reddot
  L3_2(L4_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "CompanionMissionActivityNewBanner"
  L4_2 = A0_2.banner_id
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot_new
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.CompanionMissionActivityNewBannerIDSet
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2.banner_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_2.CompanionMissionActivityNewBannerIDSet
    L3_2 = L2_2
    L2_2 = L2_2.Remove
    L4_2 = A0_2.banner_id
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.ForceSave
    L2_2()
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ActivityForceRefreshRedDot
    L2_2(L3_2)
  end
end
L0_1._on_select = L1_1
return L0_1
