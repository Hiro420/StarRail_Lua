local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialMissingPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialMissingPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeartDialModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.HeartDialEmoType
L4_1 = "UIText_HeartDial_ItemNotEnough"
L5_1 = "ClockBoyMoodChange_Unlock"
L6_1 = "ClockBoyMoodBrokenInfo_Unlock"
L7_1 = "ClockBoyMoodBrokenInfo_Lock"
L8_1 = "5115"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item
  L4_2 = A0_2._on_btn_item
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._dialogue_entity = A1_2
  L2_2 = A0_2._dialogue_entity
  L2_2 = L2_2.RuntimeID
  A0_2._dialogueNpcRuntimeID = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNpcScriptID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._scriptID = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetMissingItemDataByNpcID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._submit_item_data = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetHeartDialMissingEmoByRuntimeID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._missing_emo = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = L8_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_clockboy
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L7_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_disable
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_trigger_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_clockboy
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A2_2
  A0_2._exit_callback_owner = A1_2
end
L0_1.register_exit_callback = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "Unlock" then
    L2_2 = A0_2._missing_emo
    L3_2 = L3_1.Happy
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_unlock_happy
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._missing_emo
      L3_2 = L3_1.Anger
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_unlock_anger
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._missing_emo
        L3_2 = L3_1.Sad
        if L2_2 == L3_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.node_unlock_sad
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetActive
          L4_2 = true
          L2_2(L3_2, L4_2)
        else
          L2_2 = A0_2._missing_emo
          L3_2 = L3_1.Peace
          if L2_2 == L3_2 then
            L2_2 = A0_2._binder
            L2_2 = L2_2.node_unlock_peace
            L3_2 = L2_2
            L2_2 = L2_2.SafeSetActive
            L4_2 = true
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  elseif A1_2 == "End" then
    L3_2 = A0_2
    L2_2 = A0_2._remove_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIAnimationEvent
    L5_2 = A0_2._on_anim_trigger_refresh
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._exit_callback
    if L2_2 ~= nil then
      L2_2 = A0_2._exit_callback
      L3_2 = A0_2._exit_callback_owner
      L2_2(L3_2)
    end
  end
end
L0_1._on_anim_trigger_refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._submit_item_data
  L1_2 = L1_2[0]
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2.ItemID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._missing_item_enough = false
  if L2_2 < 1 then
    A0_2._missing_item_enough = false
  else
    A0_2._missing_item_enough = true
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2.ItemID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_warning_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._missing_item_enough
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_confirm
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._missing_item_enough
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_disable
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._missing_item_enough
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L3_2.ItemName
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_warning_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_1
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  if L3_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogErrorFormat
    L6_2 = "Item not exists, config id: "
    L7_2 = tostring
    L8_2 = L1_2.ItemID
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_item_icon
  L8_2 = L3_2.ItemIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = 1
  L6_2 = A0_2._missing_item_enough
  if not L6_2 then
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "<color=\"#C84A32\">%s</color>"
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_item_count
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_item_total
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_item_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L3_2.ItemName
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._dialogue_entity
  if L6_2 ~= nil then
    L6_2 = A0_2._dialogue_entity
    L7_2 = L6_2
    L6_2 = L6_2.GetComponent
    L8_2 = typeof
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.NPCComponent
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.GetNPCName
      L7_2 = L7_2(L8_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_npc_name
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_lock_happy
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Happy
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_unlock_happy
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Happy
  L8_2 = L8_2 ~= L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_lock_anger
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Anger
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_unlock_anger
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Anger
  L8_2 = L8_2 ~= L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_lock_sad
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Sad
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_unlock_sad
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Sad
  L8_2 = L8_2 ~= L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_lock_peace
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Peace
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_unlock_peace
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._missing_emo
  L9_2 = L3_1.Peace
  L8_2 = L8_2 ~= L9_2
  L6_2(L7_2, L8_2)
end
L0_1._refresh_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._submit_item_data
  L4_2 = L4_2[0]
  L4_2 = L4_2.ItemID
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_item = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendSubmitEmotionItemCsReq
  L3_2 = A0_2._scriptID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm = L9_1
return L0_1
