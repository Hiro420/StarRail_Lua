local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideAvatarInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AttackType
L1_1 = L1_1.Ultra
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.ability
  A0_2._ability = L2_2
  L4_2 = L2_2
  L3_2 = L2_2.GetOwnerEntity
  L3_2 = L3_2(L4_2)
  A0_2._entity = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UINumberUtils
  L3_2 = L3_2.GetPropertyNumberUIData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._status_data = L3_2
  L3_2 = A1_2.avatarData
  A0_2._avatar_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_base_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_energy_status
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattleAetherDivideUtils
  L1_2 = L1_2.GetAetherSpiritTypeConfig
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.SpiritType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AetherSpiritTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = #L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.damage_type_icon
    L7_2 = L3_2.IconPath
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_lv
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.Promotion
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.AvatarData
  L6_2 = L6_2.AvatarName
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_skill_icon
  L4_2(L5_2)
end
L0_1._setup_avatar_base_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.AvatarRow
  L2_2 = L1_2.SkillList
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AetherDivideSpiritSkillExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.AttackType
    L9_2 = L1_1
    if L8_2 == L9_2 then
      L9_2 = A0_2
      L8_2 = A0_2._async_load_sprite_to
      L10_2 = A0_2._binder
      L10_2 = L10_2.img_ultra
      L11_2 = L7_2.UltraSkillIcon
      L8_2(L9_2, L10_2, L11_2)
      break
    end
  end
end
L0_1._setup_skill_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sp_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entity
  L1_2(L2_2, L3_2)
end
L0_1._setup_energy_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.hp_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._ability
  L1_2(L2_2, L3_2)
end
L0_1._setup_hp = L2_1
return L0_1
