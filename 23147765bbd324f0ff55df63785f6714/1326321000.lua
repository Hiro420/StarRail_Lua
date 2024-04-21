local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Tutorial.TutorialEvolveTalkDialogBinder"
L0_1(L1_1)
L0_1 = 0.05
L1_1 = 0.5
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TutorialEvolveTalkDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TutorialEvolveTalkDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = false
  A0_2._is_resp_esc = false
  A0_2._is_special_above_dialog = true
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._config = A1_2
  A0_2._cur_talk_index = 0
  L3_2 = A0_2
  L2_2 = A0_2.set_exit_callback
  function L4_2(A0_3)
    local L1_3
    L1_3 = A0_3._config
    L1_3 = L1_3.OnFinish
    L1_3()
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2._protect_seconds = 0
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_tickable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._protect_seconds
  L2_2 = L2_2 - A1_2
  A0_2._protect_seconds = L2_2
  L2_2 = A0_2._protect_seconds
  if L2_2 <= 0 then
    A0_2._protect_seconds = 0
    L3_2 = A0_2
    L2_2 = A0_2._set_tickable
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L2_1._on_tick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_talk
  L3_2 = A0_2._config
  L3_2 = L3_2.TalkIDs
  L3_2 = L3_2[0]
  L1_2(L2_2, L3_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._protect_seconds
  if 0 < L1_2 then
    return
  end
  L1_2 = A0_2._is_playing_text_motion
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.talk_text
    L2_2 = L1_2
    L1_2 = L1_2.ImmediateFinishAllMotions
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._cur_talk_index
  L1_2 = L1_2 + 1
  A0_2._cur_talk_index = L1_2
  L1_2 = A0_2._cur_talk_index
  L2_2 = A0_2._config
  L2_2 = L2_2.TalkIDs
  L2_2 = L2_2.Length
  if L1_2 >= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_talk
  L3_2 = A0_2._config
  L3_2 = L3_2.TalkIDs
  L4_2 = A0_2._cur_talk_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
end
L2_1._on_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TutorialGuideTalkDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.TalkDataText
  L4_2 = L2_2.AvatarHeadIcon
  L5_2 = A0_2._binder
  L5_2 = L5_2.wait_icon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.next_icon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  A0_2._is_playing_text_motion = true
  L5_2 = L1_1
  A0_2._protect_seconds = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._set_tickable
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.avatar_img
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.talk_text
  L6_2 = L5_2
  L5_2 = L5_2.ShowTextIDWithMotion
  L7_2 = L0_1
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.wait_icon
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.next_icon
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_tickable
    L2_3 = false
    L0_3(L1_3, L2_3)
    A0_2._protect_seconds = 0
    A0_2._is_playing_text_motion = false
  end
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L2_1._show_talk = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._in_control_exit_click = L3_1
return L2_1
