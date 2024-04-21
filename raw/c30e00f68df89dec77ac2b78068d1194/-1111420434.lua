local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialLockPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialLockPanel"
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
L3_1 = "UIText_HeartDial_ItemNotEnough"
L4_1 = "UIText_HeartDial_titledesc3"
L5_1 = "5116"
L6_1 = "ClockBoyMoodLocked_Unlock"
L7_1 = "ClockBoyMoodLocked_UnlockLoop"
function L8_1(A0_2)
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
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
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
  L2_2 = L2_2.GetHeartDialStepByRuntimeID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._currentScriptStepType = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLockItemDataByNpcID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._submit_item_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock_anim = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock_anim_loop = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._submit_item_data
  L1_2 = L1_2[0]
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2.ItemID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._currentScriptStepType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.HeartDialStepType
  L4_2 = L4_2.Lock
  if L3_2 == L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_control_panel
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    A0_2._missing_item_enough = false
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L1_2.ItemID
    L3_2 = L3_2(L4_2)
    if L2_2 < 1 then
      A0_2._missing_item_enough = false
    else
      A0_2._missing_item_enough = true
    end
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
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_item
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetInteractable
    L6_2 = true
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
    L7_2 = L3_1
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
    L6_2 = L6_2.mono_in_control_btn
    L6_2.ActionEnabled = true
  else
    L3_2 = A0_2._currentScriptStepType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.HeartDialStepType
    L4_2 = L4_2.UnLock
    if L3_2 == L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_item
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetInteractable
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_disable
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.mono_in_control_btn
      L3_2.ActionEnabled = false
    end
  end
  L3_2 = A0_2._dialogue_entity
  if L3_2 ~= nil then
    L3_2 = A0_2._dialogue_entity
    L4_2 = L3_2
    L3_2 = L3_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.NPCComponent
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.GetNPCName
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_npc_name
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.TextmapStatic
      L5_2 = L5_2.GetText
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_item_tips
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L4_1
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1._refresh_view = L8_1
function L8_1(A0_2)
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
L0_1._on_btn_item = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendSubmitEmotionItemCsReq
  L3_2 = A0_2._scriptID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm = L8_1
return L0_1
