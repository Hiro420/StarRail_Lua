local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusCommonSNSUserIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = {}
L2_1.Beginner = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusUserMarkDefault.png"
L2_1.Silver = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusUserMarkSilver.png"
L2_1.Gold = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusUserMarkGold.png"
L3_1 = {}
L3_1.Beginner = ""
L3_1.Silver = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusUserHeadFrameSilver.png"
L3_1.Gold = "SpriteOutput/Quest/Heliobus/HeliobusIcon/HeliobusUserHeadFrameGold.png"
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_lock = A1_2
end
L0_1.set_lock = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    A1_2 = L1_1.PlayerUserID
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusUserExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._user_row = L2_2
  L2_2 = A0_2._user_row
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusCommonSNSUserIconPanel : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = A1_2
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_user_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_auth_info
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_user_icon
  L4_2 = A0_2._user_row
  L4_2 = L4_2.UserIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_user_name
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_user_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._user_row
    L3_2 = L3_2.HeliobusUserName
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_user_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.check_is_auth
  L2_2 = A0_2._user_row
  L2_2 = L2_2.HeliobusUserID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_auth
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_user_icon_auth_outline
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = nil
    L3_2 = nil
    L4_2 = L1_1.PopPhase
    if L4_2 < 3 then
      L2_2 = L2_1.Beginner
      L3_2 = L3_1.Beginner
    else
      L4_2 = L1_1.PopPhase
      if 5 <= L4_2 then
        L2_2 = L2_1.Gold
        L3_2 = L3_1.Gold
      else
        L2_2 = L2_1.Silver
        L3_2 = L3_1.Silver
      end
    end
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_auth_icon
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_user_icon_auth_outline
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L1_1.PopPhase
    L6_2 = 3 <= L6_2
    L4_2(L5_2, L6_2)
    L4_2 = L1_1.PopPhase
    if 3 <= L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_user_icon_auth_outline
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1._setup_auth_info = L4_1
return L0_1
