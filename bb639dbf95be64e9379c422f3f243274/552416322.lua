local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialNormalPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.ClockBoyInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialNormalPanel"
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
L2_1 = L2_1.GameCore
L2_1 = L2_1.HeartDialEmoType
L3_1 = "5114"
L4_1 = "UIText_HeartDial_confirmbutton"
L5_1 = "UIText_HeartDial_titledesc13"
L6_1 = "UIText_HeartDial_titledesc14"
L7_1 = "UIText_HeartDial_TryAgain"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ClockBoyInfoPanel
  L4_2 = G
  L4_2 = L4_2.ClockBoyInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._clock_boy_panel = L1_2
  L1_2 = A0_2._clock_boy_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_clockboy_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_left_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_right_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_disable
  L4_2 = A0_2._on_btn_disable
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Common.PageNumPanel"
  L6_2 = "Ui.Common.PageNumPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._page_num_list = L1_2
  L1_2 = A0_2._page_num_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_page_num
  L1_2(L2_2, L3_2)
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
  L2_2 = L2_2.GetHeartDialEmoByRuntimeID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._currentEmoType = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetHeartDialEmoBlackListByRuntimeID
  L4_2 = A0_2._dialogueNpcRuntimeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._emo_black_list = L2_2
  L2_2 = A0_2._currentEmoType
  A0_2._selectEmoType = L2_2
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
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._dialogue_entity
  if L2_2 ~= nil then
    L2_2 = A0_2._dialogue_entity
    L3_2 = L2_2
    L2_2 = L2_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.NPCComponent
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.GetNPCName
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_npc_name
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  L2_2 = A0_2._clock_boy_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.HeartDialStepType
  L4_2 = L4_2.Normal
  L5_2 = A0_2._selectEmoType
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeartDialEmoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._selectEmoType
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_mood
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.EmoName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = A0_2._selectEmoType
  L6_2 = A0_2._currentEmoType
  L5_2 = L5_2 ~= L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_disable
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._selectEmoType
  L6_2 = A0_2._currentEmoType
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._selectEmoType
  L4_2 = A0_2._currentEmoType
  if L3_2 == L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_btn_confirm
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_btn_confirm
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L4_1
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._emo_black_list
  if L3_2 ~= nil then
    L3_2 = A0_2._emo_black_list
    L4_2 = L3_2
    L3_2 = L3_2.Contains
    L5_2 = A0_2._selectEmoType
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_disable
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_confirm
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetInteractable
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = {}
  L4_2 = 0
  L5_2 = L2_1.Count
  L5_2 = #L5_2
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = A0_2._selectEmoType
    L10_2 = #L10_2
    L10_2 = L7_2 == L10_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2._page_num_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._selectEmoType
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetPreEmoType
  L4_2 = A0_2._dialogueNpcRuntimeID
  L5_2 = A0_2._selectEmoType
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._selectEmoType = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_left_btn_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._selectEmoType
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNextEmoType
  L4_2 = A0_2._dialogueNpcRuntimeID
  L5_2 = A0_2._selectEmoType
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._selectEmoType = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_right_btn_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendChangeScriptEmotionCsReq
  L3_2 = A0_2._dialogueNpcRuntimeID
  L4_2 = A0_2._selectEmoType
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_confirm = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selectEmoType
  L2_2 = A0_2._currentEmoType
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._emo_black_list
    if L1_2 ~= nil then
      L1_2 = A0_2._emo_black_list
      L2_2 = L1_2
      L1_2 = L1_2.Contains
      L3_2 = A0_2._selectEmoType
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = G
        L1_2 = L1_2.NotifyManager
        L1_2 = L1_2.notify
        L2_2 = G
        L2_2 = L2_2.CS
        L2_2 = L2_2.NotifyType
        L2_2 = L2_2.UIPileToastMessageTextID
        L3_2 = L7_1
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._on_btn_disable = L8_1
return L0_1
