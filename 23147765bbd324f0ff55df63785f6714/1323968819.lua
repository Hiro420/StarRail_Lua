local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = "UI3D_MiniGamesNormal_FadeIn"
L2_1 = "UI3D_MiniGamesHard_FadeIn"
L0_1[1] = L1_1
L0_1[2] = L2_1
L1_1 = "UI3D_MiniGames_FadeOut"
L2_1 = {}
L3_1 = "UI3D_MiniGames_SwitchToNormal"
L4_1 = "UI3D_MiniGames_SwitchToHard"
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "RaidCollectionUI3DPage"
L5_1 = G
L5_1 = L5_1.UI3DController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/MiniGames/Prefabs/UI3D_MiniGames.prefab"
  A0_2._current_index = 0
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._animator = L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.skip_fade_in
    L4_2 = A0_2._current_index
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_active_change = L4_1
function L4_1(A0_2, A1_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._current_index = A1_2
  L2_2 = ipairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 ~= A1_2 then
      L7_2 = A0_2._animator
      L8_2 = L7_2
      L7_2 = L7_2.ResetTrigger
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = ipairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._animator
    L8_2 = L7_2
    L7_2 = L7_2.ResetTrigger
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = L0_1[A1_2]
  L2_2(L3_2, L4_2)
end
L3_1.play_fade_in = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1[A1_2]
  if L2_2 ~= nil then
    L3_2 = A0_2._animator
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L2_2
    L6_2 = 0
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L3_1.skip_fade_in = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._animator
    L7_2 = L6_2
    L6_2 = L6_2.ResetTrigger
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = ipairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._animator
    L7_2 = L6_2
    L6_2 = L6_2.ResetTrigger
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L3_1.play_fade_out = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._current_index = A1_2
  L2_2 = ipairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._animator
    L8_2 = L7_2
    L7_2 = L7_2.ResetTrigger
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = ipairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 ~= A1_2 then
      L7_2 = A0_2._animator
      L8_2 = L7_2
      L7_2 = L7_2.ResetTrigger
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.ResetTrigger
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._animator
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = L2_1[A1_2]
  L2_2(L3_2, L4_2)
end
L3_1.play_switch = L4_1
return L3_1
