local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkinFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
function L2_1(A0_2)
  local L1_2
  A0_2._native_filter = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetNewAvatarSkin
  L4_2 = L0_1._on_get_new_skin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotAvatarSkin
  L4_2 = L0_1._on_refresh_avatar_skin
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetNewAvatarSkin
  L4_2 = L0_1._on_get_new_skin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotAvatarSkin
  L4_2 = L0_1._on_refresh_avatar_skin
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._native_filter = nil
  end
end
L0_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "AvatarSkin"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllAvatarSkinsEnumurator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Key
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.IsSkinNew
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AvatarSkinExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = G
      L4_2 = L4_2.RedDotModule
      L4_2 = L4_2.Instance
      L5_2 = L4_2
      L4_2 = L4_2.update_reddot
      L6_2 = "AvatarSkin"
      L7_2 = L3_2.AvatarID
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = G
      L4_2 = L4_2.RedDotModule
      L4_2 = L4_2.Instance
      L5_2 = L4_2
      L4_2 = L4_2.update_reddot
      L6_2 = "AvatarSkinNew"
      L7_2 = L3_2.ID
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.need_to_refresh
  L1_2(L2_2)
end
L0_1._on_get_new_skin = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.need_to_refresh
  L1_2(L2_2)
end
L0_1._on_refresh_avatar_skin = L2_1
return L0_1
