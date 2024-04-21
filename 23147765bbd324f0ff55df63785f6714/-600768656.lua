local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffSlotIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryChapterCardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryBuffSlotIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.equip = "FantasticStoryBuffIcon_ON"
L1_1.unequip = "FantasticStoryBuffIcon_OFF"
L1_1.unlock = "FantasticStoryBuffIcon_unlock"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._trigger_click_by_select
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.trigger_click
      L0_3(L1_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._buff_slot_data = A1_2
  L4_2 = A2_2 or L4_2
  if not A2_2 or not A2_2 then
    L4_2 = false
  end
  A0_2._trigger_click_by_select = L4_2
  A0_2._paragraph_id = A3_2
  L4_2 = A1_2.SlotID
  A0_2.slot_id = L4_2
  L4_2 = A1_2.UnlockChapterID
  A0_2.unlock_chapter_id = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.refresh
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2 or L2_2
  if not A1_2 or not A1_2 then
    L2_2 = A0_2._paragraph_id
  end
  A0_2._paragraph_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.FantasticStoryActivityUtils
  L2_2 = L2_2.GetBuffIconRedDotSubKey
  L3_2 = A0_2.slot_id
  L4_2 = A0_2._paragraph_id
  if L4_2 ~= nil then
    L4_2 = A0_2._paragraph_id
    if L4_2 then
      goto lbl_20
    end
  end
  L4_2 = 0
  ::lbl_20::
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "FantasticStorySlot"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.red_dot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_load_buff_icon
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_state
  L3_2(L4_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_call_back = A1_2
  A0_2._on_btn_root_call_back_self = A2_2
end
L0_1.register_btn_root_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root
  L1_2(L2_2)
end
L0_1.trigger_click = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._buff_slot_data
  L1_2 = L1_2.IsUnlock
  return L1_2
end
L0_1.is_unlock = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._paragraph_id
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.FantasticStoryActivityRedDotFilter
    L1_2 = L1_2.ClearNewUnlockBuff
    L2_2 = A0_2._buff_slot_data
    L2_2 = L2_2.SlotID
    L3_2 = A0_2._paragraph_id
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.FantasticStoryActivityRedDotFilter
    L1_2 = L1_2.ClearNewUnlockBuff
    L2_2 = A0_2._buff_slot_data
    L2_2 = L2_2.SlotID
    L1_2(L2_2)
  end
end
L0_1.clear_new_buff_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1.equip
  L1_2(L2_2, L3_2)
end
L0_1.play_equip_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1.unequip
  L1_2(L2_2, L3_2)
end
L0_1.play_unequip_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1.unlock
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSlotEquipBuffID
  L3_2 = A0_2.slot_id
  L4_2 = A0_2._paragraph_id
  if L4_2 ~= nil then
    L4_2 = A0_2._paragraph_id
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = 0
  ::lbl_16::
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._equiped_buff_id = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._buff_slot_data
  L3_2 = L3_2.IsUnlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._buff_slot_data
  L3_2 = L3_2.IsUnlock
  if L3_2 then
    L3_2 = A0_2._equiped_buff_id
    L3_2 = L3_2 == nil
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._buff_slot_data
  L3_2 = L3_2.IsUnlock
  if L3_2 then
    L3_2 = A0_2._equiped_buff_id
    L3_2 = L3_2 ~= nil
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._paragraph_id
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.FantasticStoryActivityModule
    L2_2 = L1_2
    L1_2 = L1_2.GetParagraphData
    L3_2 = A0_2._paragraph_id
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._paragraph_data = L1_2
    L1_2 = false
    L2_2 = 0
    L3_2 = A0_2._paragraph_data
    L3_2 = L3_2.AvailableBuffSlotID
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._paragraph_data
      L6_2 = L6_2.AvailableBuffSlotID
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2.slot_id
      if L6_2 == L7_2 then
        L1_2 = true
        break
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.set_active
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L3_2 = L1_2
  L2_2 = L1_2.GetSlotEquipBuffID
  L4_2 = A0_2.slot_id
  L5_2 = A0_2._paragraph_id
  if L5_2 ~= nil then
    L5_2 = A0_2._paragraph_id
    if L5_2 then
      goto lbl_16
    end
  end
  L5_2 = 0
  ::lbl_16::
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L4_2 = L1_2
    L3_2 = L1_2.GetBuffData
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = G
      L4_2 = L4_2.BuffUtils
      L4_2 = L4_2.GetMazeBuffData
      L5_2 = L3_2.MazebuffID
      L6_2 = 1
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = A0_2
      L5_2 = A0_2._async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_buff_icon
      L8_2 = L4_2.BuffIcon
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L0_1._try_load_buff_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_btn_root_call_back
  if L1_2 then
    L1_2 = A0_2._on_btn_root_call_back
    L2_2 = A0_2._on_btn_root_call_back_self
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root = L2_1
return L0_1
