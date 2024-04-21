local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkFailResultDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "MazeMainPage"
L2_1 = "ActivityClockParkMainPage"
L3_1 = "ActivityClockParkSelectTapePage"
L4_1 = "ClockParkCheckResultLoseDialog_FadeIn"
L5_1 = "UIText_ClockPark_Result_Failure_Tip_1"
L6_1 = "UIText_ClockPark_Result_Failure_Tip_2"
L7_1 = "5317"
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "ActivityClockParkResultDialog"
L10_1 = G
L10_1 = L10_1.UIController
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkFailResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._pause_game = true
end
L8_1.ctor = L9_1
function L9_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L8_1.init = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back_to_hud
  L4_2 = A0_2._on_btn_back_to_hud
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back_to_select
  L4_2 = A0_2._on_btn_back_to_select
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_logo
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_select
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fail_reason
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L4_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TutorialTaskUnlock
    L2_3 = L7_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetClockParkScriptData
  L3_2 = A0_2._data
  L3_2 = L3_2.ScriptID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_script_logo
    L5_2 = L1_2.Row
    L5_2 = L5_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.smooth_mask_logo
    L3_2 = G
    L3_2 = L3_2.AssetLoader
    L3_2 = L3_2.SyncLoadAsset
    L4_2 = L1_2.Row
    L4_2 = L4_2.ScriptResultLogoMaskPath
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Sprite
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.sprite = L3_2
  end
end
L8_1._setup_logo = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_back_to_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_first_script_finish
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._setup_btn_select = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetReachedTrueEndingScriptCount
  L1_2 = L1_2(L2_2)
  L1_2 = 0 < L1_2
  return L1_2
end
L8_1._is_first_script_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsManualQuit
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_fail_reason
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.IsFailInCheck
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_fail_reason
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L5_1
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_fail_reason
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L6_1
      L2_2(L3_2, L4_2)
    end
  end
end
L8_1._setup_fail_reason = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_first_script_finish
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.HasPageInStack
    L3_2 = L1_1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_UIManager
      L2_2 = L1_2
      L1_2 = L1_2.BackToPage
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.invoke_callback
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.HasPageInStack
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.BackToPage
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkMainPage"
    L1_2(L2_2)
  end
end
L8_1._on_btn_back_to_hud = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.HasPageInStack
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.BackToPage
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkSelectTapePage"
    L1_2(L2_2)
  end
end
L8_1._on_btn_back_to_select = L9_1
function L9_1(A0_2)
  local L1_2
end
L8_1._in_control_exit_click = L9_1
return L8_1
