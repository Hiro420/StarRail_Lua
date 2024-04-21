local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageSkillInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageSkillInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreBagDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = {}
L2_1.None = 0
L2_1.MainSkill = 1
L2_1.AdditionalSkill = 2
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_skill
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_skill_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_remove
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_replace
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_core_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_belong_info
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._skill_core_data_table = L1_2
  L1_2 = {}
  L2_2 = L2_1.MainSkill
  L1_2.Type = L2_2
  L2_2 = A0_2._skill_core_data
  L1_2.SkillCoreData = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._skill_core_data_table
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_skill
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._skill_core_data_table
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_skill
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_info = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherSpiritSkillCoreEquipPageSkillInfoItem
    L8_2 = G
    L8_2 = L8_2.AetherSpiritSkillCoreEquipPageSkillInfoItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._skill_core_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.SkillCoreData
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_skill_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_belong
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.BelongAetherMonsterAvatarID
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_core_data
  L1_2 = L1_2.BelongAetherMonsterAvatarID
  if L1_2 ~= 0 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetAetherMonsterAvatar
    L3_2 = A0_2._skill_core_data
    L3_2 = L3_2.BelongAetherMonsterAvatarID
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_belong_spirit_icon
    L5_2 = L1_2.Row
    L5_2 = L5_2.SideAvatarHeadIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_belong_info = L3_1
return L0_1
