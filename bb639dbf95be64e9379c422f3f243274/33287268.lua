local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageSkillInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageSkillInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreEquipPageInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.None = 0
L1_1.MainSkill = 1
L1_1.AdditionalSkill = 2
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replace
  L4_2 = A0_2._on_click_replace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detach
  L4_2 = A0_2._on_click_detach
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn_detach
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_LightConeReplaceUnload_Btn"
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_skill
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_replace = A1_2
  A0_2._callback_replace_self = A2_2
end
L0_1.register_click_replace_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_detach = A1_2
  A0_2._callback_detach_self = A2_2
end
L0_1.register_click_detach_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._skill_core_data = A1_2
  A0_2._skill_slot_data = A2_2
  A0_2._spirit_data = A3_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = false
  end
  A0_2._is_click_slot = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_replace
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_detach
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._skill_core_data
  if L5_2 == nil then
    L5_2 = A0_2._skill_slot_data
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.MonsterAvatarSkillSlotStatus
    L6_2 = L6_2.Equipped
    if L5_2 == L6_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.btn_detach
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._display_btn
  L5_2(L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._skill_core_data_table = L1_2
  L1_2 = {}
  L2_2 = L1_1.MainSkill
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
L0_1._setup_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skill_slot_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonsterAvatarSkillSlotStatus
  L2_2 = L2_2.Equipped
  if L1_2 == L2_2 then
    L1_2 = A0_2._is_click_slot
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_detach
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._check_is_same_spirit_and_slot
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_detach
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_replace
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_btn_replace
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_LightConeReplaceReplace_Btn"
        L1_2(L2_2, L3_2)
      end
    end
  else
    L1_2 = A0_2._skill_slot_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MonsterAvatarSkillSlotStatus
    L2_2 = L2_2.NotEquipped
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_replace
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._skill_core_data
      L1_2 = L1_2.BelongAetherMonsterAvatarID
      if L1_2 ~= 0 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_btn_replace
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_LightConeReplaceReplace_Btn"
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_btn_replace
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_LightConeReplaceEquip_Btn"
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._display_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_core_data
  L1_2 = L1_2.BelongAetherMonsterAvatarID
  L2_2 = A0_2._skill_slot_data
  L2_2 = L2_2.BelongAetherSpiritID
  L1_2 = L1_2 == L2_2
  if L1_2 == false then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._spirit_data
  L3_2 = L2_2
  L2_2 = L2_2.GetSlotIndexBySkillCoreDataID
  L4_2 = A0_2._skill_core_data
  L4_2 = L4_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2.SlotIndex
  L3_2 = L2_2 == L3_2
  return L3_2
end
L0_1._check_is_same_spirit_and_slot = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
L0_1._on_skill_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback_replace
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_replace_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback_replace
      L2_2 = A0_2._callback_replace_self
      L3_2 = A0_2._skill_slot_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_replace = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback_detach
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_detach_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback_detach
      L2_2 = A0_2._callback_detach_self
      L3_2 = A0_2._skill_slot_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_detach = L2_1
return L0_1
