local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.UI3D.ChallengeUI3DConfigItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.UI3D.UI3DChallengeCrystalPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DChallengeCrystalGroupPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2._owner = A1_2
  L2_2 = {}
  A0_2._crystal_panels = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._challenge_ui3d_config
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.ChallengeUI3DConfigItem
    L2_2 = L2_2(L3_2)
    A0_2._challenge_ui3d_config = L2_2
  end
  L2_2 = A0_2._challenge_ui3d_config
  L3_2 = L2_2
  L2_2 = L2_2.set_config_from_table
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._load_challenge_ui3d_config = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_ui3d_config
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._challenge_ui3d_config
    L1_2(L2_2)
    A0_2._challenge_ui3d_config = nil
  end
end
L0_1._unload_challenge_ui3d_config = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._unload_challenge_ui3d_config
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = A0_2._challenge_ui3d_config
  L3_2 = L3_2.crystal_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._crystal_panels
    L6_2 = L6_2[L5_2]
    if L6_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.UI3DChallengeCrystalPanel
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L7_2
      L7_2 = A0_2._crystal_panels
      L7_2[L5_2] = L6_2
    end
    L8_2 = A0_2
    L7_2 = A0_2.fetch_node
    L9_2 = L6_2
    L10_2 = L5_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = L5_2 <= A1_2
    L9_2 = L6_2
    L8_2 = L6_2.set_crystal_active
    L10_2 = L7_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.prepare_node = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = nil
  L5_2 = A0_2
  L4_2 = A0_2._safe_find
  L6_2 = A0_2._challenge_ui3d_config
  L7_2 = L6_2
  L6_2 = L6_2.get_crystal_nodes_path
  L8_2 = A2_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A0_2
  L5_2 = A0_2._safe_find
  L7_2 = A0_2._challenge_ui3d_config
  L8_2 = L7_2
  L7_2 = L7_2.get_crystal_anchor_path
  L9_2 = A2_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2
  L6_2 = A0_2._safe_find
  L8_2 = A0_2._challenge_ui3d_config
  L9_2 = L8_2
  L8_2 = L8_2.get_crystal_aureole_path
  L10_2 = A2_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if 1 < A2_2 then
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = A0_2._challenge_ui3d_config
    L10_2 = L9_2
    L9_2 = L9_2.get_crystal_connect_line_path
    L11_2 = A2_2 - 1
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L3_2 = L7_2
  end
  L8_2 = A1_2
  L7_2 = A1_2.bind
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.set_crystal_transform
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L0_1.fetch_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_ui3d_config
  L2_2 = L1_2
  L1_2 = L1_2.get_prefab_path
  return L1_2(L2_2)
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._crystal_panels
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.get_anchor
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_crystal_anchor_by_index = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._crystal_panels
  L4_2 = L4_2[A1_2]
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_crystal_active
    L7_2 = A2_2
    L8_2 = A3_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.set_crystal_active_by_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Effect_AbyssCrystalManager
  L4_2 = ""
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.get_effect_manager = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_bind = L1_1
return L0_1
