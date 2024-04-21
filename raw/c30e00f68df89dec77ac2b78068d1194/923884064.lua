local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritMainDetailPassiveSkillSlotPanelSingleItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._skill_slot_data
    if L0_3 == 0 then
      return
    end
    L0_3 = A0_2._is_enable_trigger_on_select
    if L0_3 then
      L0_3 = true
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._click_action
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    end
    L0_3 = A0_2._is_enable_navigation
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_root
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_event_str_notify
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_play_equip = false
  A0_2._is_enable_navigation = true
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_enable_navigation = A1_2
end
L0_1.set_game_pad_navigation_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._skill_slot_data
    L4_2 = L4_2 ~= 0
  end
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_play_equip = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_skill_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_equip
  L3_2 = "AetherDivideAssembleSkillIconInfo_SkillEdit"
  L1_2(L2_2, L3_2)
end
L0_1.play_equip_anim = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._skill_slot_data = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_enable_trigger_on_select = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._hide_nodes
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_empty_nodes
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_refresh
  L3_2(L4_2)
  L3_2 = 0
  L4_2 = A0_2._skill_slot_data
  if L4_2 ~= 0 then
    L4_2 = A0_2._skill_slot_data
    L3_2 = L4_2.SlotIndex
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._skill_slot_data
  if L1_2 ~= 0 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_lock_info
    L1_2(L2_2)
  else
  end
end
L0_1._on_refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_skill_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_add_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rarity
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_nodes = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_eff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_slot_data
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.UI
    L2_2 = L2_2.Selectable
    L2_2 = L2_2.Transition
    L2_2 = L2_2.None
    L1_2.transition = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.UI
    L2_2 = L2_2.Selectable
    L2_2 = L2_2.Transition
    L2_2 = L2_2.Animation
    L1_2.transition = L2_2
  end
end
L0_1._setup_empty_nodes = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_slot_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonsterAvatarSkillSlotStatus
  L2_2 = L2_2.Locked
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_equip_skill_core_info
    L2_2(L3_2)
  else
  end
end
L0_1._setup_lock_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._skill_slot_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonsterAvatarSkillSlotStatus
  L2_2 = L2_2.NotEquipped
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_add_mark
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_rarity
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._skill_slot_data
    L1_2 = L1_2.SkillCoreData
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_rarity_blue
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2.SkillRarity
    L4_2 = L4_2 == 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_rarity_purple
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2.SkillRarity
    L4_2 = L4_2 ~= 1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_skill_icon
    L5_2 = L1_2.SkillIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_skill_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonsterAvatarSkillSlotStatus
  L4_2 = L4_2.Equipped
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_equip_skill_core_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._click_action
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._skill_slot_data
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._callback
  if L2_2 ~= nil then
    L2_2 = A0_2._callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L4_2 = A0_2._skill_slot_data
      L5_2 = A1_2
      L6_2 = A0_2
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  L2_2 = A0_2._is_enable_navigation
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_root
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  end
end
L0_1._click_action = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_play_equip
  if L2_2 then
    L2_2 = A0_2._skill_slot_data
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.MonsterAvatarSkillSlotStatus
    L3_2 = L3_2.Equipped
    if L2_2 == L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  if A1_2 == "OnSkillCoreShow" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_skill_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  A0_2._is_play_equip = false
end
L0_1._on_animation_event_str_notify = L1_1
return L0_1
