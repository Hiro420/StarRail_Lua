local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Miracle.Components.ChessRogueMiracleAvatarIconBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMiracleAvatarIcon"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.avatar_icon
  L5_2 = A1_2.Row
  L5_2 = L5_2.DefaultAvatarHeadIconPath
  L2_2(L3_2, L4_2, L5_2)
  A0_2._data = A1_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.TeamModule
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentTeam
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.RogueTeamInfoProvider
    L4_2 = L1_2
    L5_2 = nil
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.Avatar.AvatarMainPage"
    L5_2 = nil
    L6_2 = nil
    L7_2 = L2_2
    L8_2 = A0_2._data
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._on_root_btn_clicked = L1_1
return L0_1
