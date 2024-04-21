local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherTeamMemberSPPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._sp_node = nil
  A0_2._last_data = nil
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_ultra_skill_data
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_ultra
    L5_2 = L1_2.Row
    L5_2 = L5_2.UltraSkillIcon
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sp
  L2_2(L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._sp_node
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    L2_2 = A0_2._last_data
    if L1_2 == L2_2 then
      goto lbl_12
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._load_sp_node
  L3_2 = A0_2._data
  L3_2 = L3_2.MaxSP
  L1_2(L2_2, L3_2)
  ::lbl_12::
  L1_2 = ipairs
  L2_2 = A0_2._sp_progress_node
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._data
    L8_2 = L8_2.CurSP
    L8_2 = L4_2 <= L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_sp = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A1_2 < 2 then
    return
  end
  L2_2 = A0_2._sp_node
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.destroy_object
    L4_2 = A0_2._sp_node
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherSpiritTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.SpiritType
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_2.Color
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._data
  A0_2._last_data = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_loader_sp
  L4_2 = L4_2.MultiPrefabList
  L5_2 = A1_2 - 2
  L4_2 = L4_2[L5_2]
  L6_2 = A0_2
  L5_2 = A0_2.instantiate_object
  L7_2 = L4_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.prefab_loader_sp
  L8_2 = L8_2.transform
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2._sp_node = L5_2
  L5_2 = G
  L5_2 = L5_2.ComponentExtensions
  L5_2 = L5_2.SafeFind
  L6_2 = A0_2._sp_node
  L7_2 = "ProgressPanel"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  A0_2._sp_progress_node = L6_2
  L6_2 = 1
  L7_2 = A1_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = L5_2
    L10_2 = L5_2.GetChild
    L12_2 = L9_2 - 1
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = L10_2
    L11_2 = L10_2.GetComponent
    L13_2 = typeof
    L14_2 = CS
    L14_2 = L14_2.UnityEngine
    L14_2 = L14_2.UI
    L14_2 = L14_2.Image
    L13_2, L14_2 = L13_2(L14_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L11_2.color = L3_2
    L12_2 = A0_2._sp_progress_node
    L13_2 = A0_2._sp_progress_node
    L13_2 = #L13_2
    L13_2 = L13_2 + 1
    L12_2[L13_2] = L10_2
  end
end
L0_1._load_sp_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AetherMonsterAvatarSkillData
  L1_2 = L1_2.SkillDataList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.SkillAttackType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AttackType
    L8_2 = L8_2.Ultra
    if L7_2 == L8_2 then
      L8_2 = L6_2
      L7_2 = L6_2.IsShow
      L7_2 = L7_2(L8_2)
      if L7_2 then
        return L6_2
      end
    end
  end
end
L0_1._get_ultra_skill_data = L1_1
return L0_1
