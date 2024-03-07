local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.BaseAvatarSelectPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AvatarModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeActAvatarSelectPanel"
L3_1 = G
L3_1 = L3_1.BaseAvatarSelectPanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._init_selection
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_hero_id
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A0_2._row = L3_2
  L3_2 = L1_1.super
  L3_2 = L3_2.init
  L4_2 = A0_2
  L3_2(L4_2)
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._strategy
    L8_2 = L7_2
    L7_2 = L7_2.get_selected_avatars
    L9_2 = A0_2._selected_avatars
    L10_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    A0_2._selected_avatars = L7_2
  end
end
L1_1._init_selection = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L3_2 = L1_2
  L2_2 = L1_2.GetCurrentHeroGender
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GenderType
  L3_2 = L3_2.GENDER_WOMAN
  if L2_2 == L3_2 then
    A0_2._hero_id = 8002
  else
    A0_2._hero_id = 8001
  end
end
L1_1._init_hero_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._row
  L3_2 = L3_2.TrialAvatarList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.AddTrialPlayer
    L8_2 = A0_2._row
    L8_2 = L8_2.TrialAvatarList
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.GetTrialAvatar
    L8_2 = A0_2._row
    L8_2 = L8_2.TrialAvatarList
    L8_2 = L8_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.IsHero
    if L7_2 then
      L7_2 = L6_2.RealID
      L8_2 = A0_2._hero_id
      if L7_2 ~= L8_2 then
        goto lbl_31
      end
    end
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L1_2[L7_2] = L6_2
    ::lbl_31::
  end
  return L1_2
end
L1_1.get_all_avatars = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._strategy
  L2_2 = L2_2.has_been_selected
  L3_2 = A0_2._selected_avatars
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L1_1.is_avatar_selected = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._get_selected_order
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0 < L3_2
  if L4_2 then
    A0_2._last_selected_panel = A1_2
  end
  L6_2 = A1_2
  L5_2 = A1_2.setup_view
  L7_2 = A2_2
  L8_2 = false
  L9_2 = L4_2
  L10_2 = nil
  L11_2 = A0_2._strategy
  L11_2 = L11_2.max_selection
  L11_2 = 1 < L11_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_order
  L7_2 = A0_2._strategy
  L7_2 = L7_2.max_selection
  L7_2 = 1 < L7_2 and L7_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L1_1.setup_icon_view = L2_1
return L1_1
