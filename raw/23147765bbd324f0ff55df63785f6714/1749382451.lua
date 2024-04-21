local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardTeamMemberPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.3
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = L0_1._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._member_data = A1_2
  L2_2 = A1_2 ~= nil
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if not L2_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_hp
  L5_2 = A1_2.LeftHPRatio
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar
  L5_2 = A1_2.AvatarData
  L5_2 = L5_2.AvatarSideIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_icon = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L2_2 = A1_2 <= L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_hp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_hp_danger
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_hp_danger
    L3_2.fillAmount = A1_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_hp_danger
    L3_2.bgAmount = A1_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_hp
    L3_2.fillAmount = A1_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_hp
    L3_2.bgAmount = A1_2
  end
end
L0_1._setup_hp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._member_data
  if L1_2 == nil then
    return
  end
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
  L8_2 = A0_2._member_data
  L8_2 = L8_2.AvatarData
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_btn_click = L2_1
return L0_1
