local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonGridInfo3DPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = nil
L2_1 = "UIText_TreasureDungeon_Stage_AvatarPick_Fail"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridType
L3_1 = L3_1.KeyDoor
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.TreasureDungeonGridType
L4_1 = L4_1.FinalDoor
L5_1 = G
L5_1 = L5_1.UIColorUtils
L5_1 = L5_1.GetColor
L6_1 = "#C84A32"
L5_1 = L5_1(L6_1)
L6_1 = G
L6_1 = L6_1.UIColorUtils
L6_1 = L6_1.GetColor
L7_1 = "#FFFFFF"
L6_1 = L6_1(L7_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  if L1_2 == nil then
    L1_2 = {}
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.Key
    L3_2 = L0_1._do_interact
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.KeyDoor
    L3_2 = L0_1._do_interact
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.FinalDoor
    L3_2 = L0_1._do_interact
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.Enemy
    L3_2 = L0_1._do_fight
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.Item
    L3_2 = L0_1._try_get_item
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.ItemRandom
    L3_2 = L0_1._try_get_item
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.TrialAvatar
    L3_2 = L0_1._interact
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.TrialAvatarRandom
    L3_2 = L0_1._interact
    L1_2[L2_2] = L3_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.Avatar
    L3_2 = L0_1._try_select_avatar
    L1_2[L2_2] = L3_2
    L1_1 = L1_2
  end
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._canvas_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Click"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BuffElite"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_elite = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Buff"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Buff/Desc/BG/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._txt_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BuffBuffStronger"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_buff_enhance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_selected = L1_2
  L1_2 = G
  L1_2 = L1_2.UIButtonEventManager
  L1_2 = L1_2.bind
  L2_2 = A0_2._btn
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_root
  L5_2 = nil
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._button_event = L1_2
  L1_2 = A0_2._btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_handler
    L3_3 = A0_2._id
    L4_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._btn
    if L0_3 == nil then
      return
    end
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_handler
    L3_3 = A0_2._id
    L4_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2.onDeselectTrigger = L2_2
  A0_2._is_in_ultra = false
  A0_2._is_selected = false
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._button_event
  if L1_2 ~= nil then
    L1_2 = A0_2._button_event
    L2_2 = L1_2
    L1_2 = L1_2.IsEqualsNull
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._button_event
      L2_2 = L1_2
      L1_2 = L1_2.RemoveAllListeners
      L1_2(L2_2)
    end
  end
end
L0_1._on_dispose = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_handler = A2_2
end
L0_1.register_select_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._canvas_group
  if A1_2 then
    L3_2 = 0.3
    if L3_2 then
      goto lbl_8
    end
  end
  L3_2 = 1
  ::lbl_8::
  L2_2.alpha = L3_2
end
L0_1.set_mask = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_selected = A1_2
  L2_2 = A0_2._node_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._btn
  L4_2 = L4_2.interactable
  if L4_2 then
    L4_2 = A0_2._is_selected
  end
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  if L2_2 == nil or A1_2 == nil then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.IsFlipped
  if not L2_2 then
    L2_2 = A1_2.IsFlipped
    if L2_2 then
      L2_2 = A1_2.IsEmpty
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_AudioManager
        L3_2 = L2_2
        L2_2 = L2_2.PostEvent
        L4_2 = "Ev_sfx_ui_feedback_activity_treasuredungeon_item_drop"
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1.try_play_changed = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._level_data = A1_2
  A0_2._data = A2_2
  L3_2 = A0_2._data
  L3_2 = L3_2.GridIndex
  A0_2._id = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  A0_2._is_in_ultra = A1_2
end
L0_1.set_in_ultra = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.GridType
  L2_2 = L3_1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_key_door = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.GridType
  L2_2 = L4_1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_final_door = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info_view
  L1_2(L2_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsFlipped
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsEmpty
    if not L1_2 then
      goto lbl_11
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_11::
  L1_2 = A0_2._data
  L1_2 = L1_2.GridType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridType
  L2_2 = L2_2.Enemy
  if L1_2 == L2_2 then
    L1_2 = A0_2._level_data
    L1_2 = L1_2.UltraItem
    L1_2 = L1_2.KillLevel
    L2_2 = A0_2._data
    L3_2 = L2_2
    L2_2 = L2_2.CanKill
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    return L2_2
  end
  L1_2 = false
  return L1_2
end
L0_1.is_ultra_interactable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsEmpty
  if L1_2 then
    L1_2 = A0_2._node_elite
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._node_buff
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._node_buff_enhance
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.IsEmpty
  L1_2 = A0_2._data
  L1_2 = L1_2.GridType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridType
  L2_2 = L2_2.Enemy
  L1_2 = A0_2._data
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._node_elite
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.TreasureDungeonUtils
  L2_2 = L2_2.is_grid_enhanced
  L3_2 = A0_2._data
  L4_2 = A0_2._level_data
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._node_buff_enhance
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._node_buff
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.GridBuffs
  if L3_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = A0_2._data
  L4_2 = L4_2.GridBuffs
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._data
    L7_2 = L7_2.GridBuffs
    L7_2 = L7_2[L6_2]
    L8_2 = G
    L8_2 = L8_2.TreasureDungeonUtils
    L8_2 = L8_2.show_buff_count_down
    L9_2 = L7_2.BuffType
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = A0_2._node_buff
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = L7_2.BuffValue
      if 1 < L8_2 then
        L8_2 = L6_1
        if L8_2 then
          goto lbl_87
        end
      end
      L8_2 = L5_1
      ::lbl_87::
      L9_2 = A0_2._txt_buff
      L9_2.color = L8_2
      L9_2 = A0_2._txt_buff
      L10_2 = L9_2
      L9_2 = L9_2.SafeSetText
      L11_2 = L7_2.BuffValue
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._refresh_info_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._btn
  L3_2 = not A1_2
  L2_2.interactable = L3_2
  L2_2 = A0_2._node_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._btn
  L4_2 = L4_2.interactable
  if L4_2 then
    L4_2 = A0_2._is_selected
  end
  L2_2(L3_2, L4_2)
end
L0_1.block_interact = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_in_ultra
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_ultra_interactable
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_16
    end
  end
  L1_2 = A0_2._is_in_ultra
  L1_2 = A0_2._data
  L1_2 = not L1_2 and L1_2
  ::lbl_16::
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._callback
  L4_2 = A0_2._callback_self
  L5_2 = A0_2._data
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_click_interactable
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_click_not_interactable
    L2_2(L3_2)
  end
end
L0_1._on_btn_root = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsEmpty
  if L1_2 then
    return
  end
  L1_2 = A0_2._is_in_ultra
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_TreasureDungeon_Stage_BombTargetTips"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = nil
  L2_2 = A0_2._data
  L2_2 = L2_2.CanInteract
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_key_door
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L1_2 = "UIText_TreasureDungeon_Hint_KeyDoor_Lock"
    else
      L3_2 = A0_2
      L2_2 = A0_2.is_final_door
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L1_2 = "UIText_TreasureDungeon_Hint_FinalDoor_Lock"
      else
        L2_2 = A0_2._data
        L2_2 = L2_2.IsLocked
        if L2_2 then
          L1_2 = "UIText_TreasureDungeon_Hint_Grid_Lock"
        else
          L1_2 = "UIText_TreasureDungeon_Hint_Grid_Gap"
        end
      end
    end
  end
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_click_not_interactable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_in_ultra
  if L1_2 then
    L1_2 = A0_2._level_data
    L2_2 = L1_2
    L1_2 = L1_2.TryUseUltra
    L3_2 = A0_2._id
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.IsFlipped
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.GridType
    L1_2 = L1_1[L1_2]
    if L1_2 ~= nil then
      L2_2 = L1_2
      L3_2 = A0_2
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._do_with_avatar_dead_check
    L3_2 = true
    L4_2 = A0_2._do_flip
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._on_click_interactable = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = false
  if A1_2 then
    L5_2 = A0_2._level_data
    L6_2 = L5_2
    L5_2 = L5_2.WillAvatarDead
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = A0_2._level_data
    L6_2 = L5_2
    L5_2 = L5_2.WillAvatarDeadByMonster
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  if L4_2 then
    L5_2 = "UIText_TreasureDungeon_Hint_AvatarDeadConfirm_Attacked"
    if A1_2 then
      L6_2 = A0_2._level_data
      L7_2 = L6_2
      L6_2 = L6_2.WillAvatarDeadByMonster
      L6_2 = L6_2(L7_2)
      L7_2 = A0_2._level_data
      L8_2 = L7_2
      L7_2 = L7_2.WillAvatarDeadByExplore
      L7_2 = L7_2(L8_2)
      if L7_2 and not L6_2 then
        L8_2 = "UIText_TreasureDungeon_Hint_AvatarDeadConfirm"
        if L8_2 then
          goto lbl_32
          L5_2 = L8_2 or L5_2
        end
      end
      L5_2 = "UIText_TreasureDungeon_Hint_AvatarDeadConfirm_Attacked"
    end
    ::lbl_32::
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ConfirmDialogUtil
    L6_2 = L6_2.ShowOkCancelHint
    L7_2 = L5_2
    L8_2 = "Common_ConfirmDialog_Title"
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 then
        L1_3 = G
        L1_3 = L1_3.Utils
        L1_3 = L1_3.invoke_callback
        L2_3 = A2_2
        L3_3 = A3_2
        L1_3(L2_3, L3_3)
      end
    end
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L6_2.TextIDOK = "Common_SysBtn_Yes"
    L6_2.TextIDCancel = "Common_SysBtn_No"
  else
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.invoke_callback
    L6_2 = A2_2
    L7_2 = A3_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._do_with_avatar_dead_check = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._do_with_avatar_dead_check
  L3_2 = false
  L4_2 = A0_2._do_interact
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._interact = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.GridType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridType
  L2_2 = L2_2.Item
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.GridType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.ItemRandom
    if L1_2 ~= L2_2 then
      goto lbl_42
    end
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.ItemRow
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.StrExt
    L1_2 = L1_2.IsNullOrEmpty
    L2_2 = A0_2._data
    L2_2 = L2_2.ItemRow
    L2_2 = L2_2.AudioEventName
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.PostEvent
      L3_2 = A0_2._data
      L3_2 = L3_2.ItemRow
      L3_2 = L3_2.AudioEventName
      L1_2(L2_2, L3_2)
    end
  end
  ::lbl_42::
  L1_2 = A0_2._level_data
  L2_2 = L1_2
  L1_2 = L1_2.TryInteract
  L3_2 = A0_2._id
  L1_2(L2_2, L3_2)
end
L0_1._do_interact = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsBuff
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_get_buff
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._interact
    L1_2(L2_2)
  end
end
L0_1._try_get_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._level_data
  L1_2 = L1_2.CurrentFloorBuff
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    L1_2 = L1_2.ItemRow
    L1_2 = L1_2.ParamInt
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TreasureDungeonBuff
    L2_2 = L2_2.CreateTempBuff
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.New
    L4_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffSelectPage"
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.init
    L6_2 = L2_2
    L7_2 = A0_2._level_data
    L7_2 = L7_2.CurrentFloorBuff
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = L3_2
    L4_2 = L3_2.register_confirm_callback
    L6_2 = A0_2._interact
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.show
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._interact
    L1_2(L2_2)
  end
end
L0_1._try_get_buff = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonStartFightPage"
  L3_2 = A0_2._level_data
  L4_2 = A0_2._id
  L5_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._do_fight = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_click_activity_treasuredungeon_grid_normal"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._level_data
  L2_2 = L1_2
  L1_2 = L1_2.TryFlipGrid
  L3_2 = A0_2._id
  L1_2(L2_2, L3_2)
end
L0_1._do_flip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._level_data
  L1_2 = L1_2.TeamData
  L2_2 = L1_2
  L1_2 = L1_2.GetCanSelectAvatarList
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Count
  if L2_2 == 0 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._do_with_avatar_dead_check
  L4_2 = false
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_async_show
    L1_3 = "Ui.Activity.TreasureDungeon.TreasureDungeonJoinAvatarPage"
    L2_3 = A0_2._level_data
    L3_3 = A0_2._data
    L4_3 = A0_2._do_select_avatar
    L5_3 = A0_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._try_select_avatar = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._level_data
  L3_2 = L2_2
  L2_2 = L2_2.TryInteract
  L4_2 = A0_2._id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._do_select_avatar = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn
  return L1_2
end
L0_1.get_first_selected_btn = L7_1
return L0_1
