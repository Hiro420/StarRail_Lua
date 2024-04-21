local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialEmoChangeDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.HeartDialEmoType
L1_1 = "UIText_HeartDial_titledesc8"
L2_1 = "Ev_sfx_ui_feedback_miniGames_clockBoy_happy_fadeIn"
L3_1 = "Ev_sfx_ui_feedback_miniGames_clockBoy_cry_fadeIn"
L4_1 = "Ev_sfx_ui_feedback_miniGames_clockBoy_angry_fadeIn"
L5_1 = "Ev_sfx_ui_feedback_miniGames_clockBoy_silent_fadeIn"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "HeartDialEmoChangeDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeartDialEmoChangeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._dialogue_entity = A1_2
  A0_2._emo_type = A2_2
  A0_2._before_emo_type = A3_2
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
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
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.GetNPCName
      L3_2 = L3_2(L4_2)
      L1_2 = L3_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._play_audio
  L2_2(L3_2)
  L2_2 = A0_2._clock_boy_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.HeartDialStepType
  L4_2 = L4_2.Normal
  L5_2 = A0_2._emo_type
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeartDialEmoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._emo_type
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L2_2.EmoName
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_emo
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L1_1
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._emo_type
  L2_2 = L0_1.Happy
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.PostEvent
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._emo_type
    L2_2 = L0_1.Anger
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AudioManager
      L2_2 = L1_2
      L1_2 = L1_2.PostEvent
      L3_2 = L4_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._emo_type
      L2_2 = L0_1.Sad
      if L1_2 == L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.GlobalVars
        L1_2 = L1_2.s_AudioManager
        L2_2 = L1_2
        L1_2 = L1_2.PostEvent
        L3_2 = L3_1
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._emo_type
        L2_2 = L0_1.Peace
        if L1_2 == L2_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.GlobalVars
          L1_2 = L1_2.s_AudioManager
          L2_2 = L1_2
          L1_2 = L1_2.PostEvent
          L3_2 = L5_1
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L6_1._play_audio = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A2_2
  A0_2._exit_callback_owner = A1_2
end
L6_1.register_exit_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L6_1._on_btn_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._exit_callback
    L2_2 = A0_2._exit_callback_owner
    L1_2(L2_2)
  end
  A0_2._exit_callback = nil
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L6_1._in_control_exit_click = L7_1
return L6_1
