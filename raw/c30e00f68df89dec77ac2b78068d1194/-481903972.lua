local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaCutscene2DPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaCutscene3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaCutscene2DPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "GachaSkipBegin"
L2_1 = "GachaSkipEnd"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.GachaModule
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_binder
  L4_2 = G
  L4_2 = L4_2.GachaCutscene2DPageBinder
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._binder = L2_2
  A0_2._pause_game = true
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.fetch_ui3d
  L4_2 = G
  L4_2 = L4_2.GachaCutscene3DPage
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._cutscene_ui3d = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_1
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueClientExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_1
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.IntValue
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._show_skip
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._show_skip_timer = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._hide_skip
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._hide_skip_timer = L4_2
  A0_2._sound_effect = nil
  A0_2._sound_vo = nil
  A0_2._is_resp_esc = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._gachaItemDatas = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GachaCutsceneDone
  L4_2 = A0_2._on_gacha_cutscene_done
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_gacha_toast
  L1_2(L2_2)
  L1_2 = A0_2._sound_effect
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.StopEvent
    L3_2 = A0_2._sound_effect
    L1_2(L2_2, L3_2)
    A0_2._sound_effect = nil
  end
  L1_2 = A0_2._sound_vo
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.StopEvent
    L3_2 = A0_2._sound_vo
    L1_2(L2_2, L3_2)
    A0_2._sound_vo = nil
  end
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._gachaItemDatas
  if not L1_2 then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._gachaItemDatas
  L2_2 = L2_2.Count
  if L2_2 == 1 then
    L2_2 = A0_2._gachaItemDatas
    L2_2 = L2_2[0]
    L3_2 = G
    L3_2 = L3_2.PopupQueueManager
    L4_2 = L3_2
    L3_2 = L3_2.inqueue_no_skip
    L5_2 = "GachaToast"
    L6_2 = L1_2
    L7_2 = "Ui.Gacha.GachaObtainDialog"
    L8_2 = nil
    L9_2 = L2_2
    L10_2 = nil
    L11_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L2_2 = 0
  L3_2 = A0_2._gachaItemDatas
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._gachaItemDatas
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.ItemID
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.Rarity
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemRarity
    L9_2 = L9_2.SuperRare
    if L8_2 == L9_2 then
      L8_2 = G
      L8_2 = L8_2.PopupQueueManager
      L9_2 = L8_2
      L8_2 = L8_2.inqueue_no_skip
      L10_2 = "GachaToast"
      L11_2 = L1_2
      L12_2 = "Ui.Gacha.GachaObtainDialog"
      L13_2 = nil
      L14_2 = L6_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    else
      L8_2 = A0_2._is_skip
      if not L8_2 then
        L8_2 = G
        L8_2 = L8_2.PopupQueueManager
        L9_2 = L8_2
        L8_2 = L8_2.inqueue
        L10_2 = "GachaToast"
        L11_2 = L1_2
        L12_2 = "Ui.Gacha.GachaObtainDialog"
        L13_2 = nil
        L14_2 = L6_2
        function L15_2()
          local L0_3, L1_3, L2_3
          L0_3 = G
          L0_3 = L0_3.PopupQueueManager
          L1_3 = L0_3
          L0_3 = L0_3.skip_queue
          L2_3 = "GachaToast"
          L0_3(L1_3, L2_3)
        end
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.inqueue_no_skip
  L4_2 = "GachaToast"
  L5_2 = L1_2
  L6_2 = "Ui.Gacha.GachaResultDialog"
  L7_2 = nil
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._invoke_gacha_toast = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_function_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_other_btns
  L1_2(L2_2)
  L1_2 = A0_2._show_skip_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._show_skip_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._hide_skip_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._hide_skip_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = nil
  L2_2 = L3_1.CurrentDrawInfo
  L2_2 = L2_2.MaxRarity
  L2_2 = #L2_2
  if 5 <= L2_2 then
    A0_2._sound_effect = "Ev_sfx_CS_ChapGacha_Gold"
    A0_2._sound_vo = "Ev_vo_pompom_gacha_2"
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.MenuBGMStates
    L3_2 = L2_2
    L2_2 = L2_2.get_Item
    L4_2 = "StateGachaGold"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    A0_2._sound_effect = "Ev_sfx_CS_ChapGacha_Purple"
    A0_2._sound_vo = "Ev_vo_pompom_gacha_1"
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.MenuBGMStates
    L3_2 = L2_2
    L2_2 = L2_2.get_Item
    L4_2 = "StateGachaNormal"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostEvent
  L4_2 = A0_2._sound_effect
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostEvent
  L4_2 = A0_2._sound_vo
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.GetAdventureAudioManager
    L3_2 = L3_2(L4_2)
  end
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.SwitchUIMenuBGM
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_auto
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hide
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_review
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_other_btns = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L1_2.interactable = true
  L1_2 = A0_2._show_skip_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._show_skip = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_function_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L1_2.interactable = false
  L1_2 = A0_2._hide_skip_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._hide_skip = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_skip = A1_2
  L2_2 = L3_1.EnablePerformance
  if L2_2 then
    L2_2 = nil
    L3_2 = L3_1.CurrentDrawInfo
    L3_2 = L3_2.MaxRarity
    L3_2 = #L3_2
    if 5 <= L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L3_2 = L3_2.AudioConfig
      L3_2 = L3_2.MenuBGMStates
      L4_2 = L3_2
      L3_2 = L3_2.get_Item
      L5_2 = "StateGachaResultGold"
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L3_2 = L3_2.AudioConfig
      L3_2 = L3_2.MenuBGMStates
      L4_2 = L3_2
      L3_2 = L3_2.get_Item
      L5_2 = "StateGachaResultNormal"
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_GamePhaseManager
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentPhase
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2 or L4_2
    if L3_2 then
      L5_2 = L3_2
      L4_2 = L3_2.GetAdventureAudioManager
      L4_2 = L4_2(L5_2)
    end
    if L4_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.SwitchUIMenuBGM
      L7_2 = L2_2
      L5_2(L6_2, L7_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_gacha_cutscene_done = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.GachaCutSceneSkip
  L1_2(L2_2)
end
L0_1._on_btn_skip = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_function_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_bg = L4_1
return L0_1
