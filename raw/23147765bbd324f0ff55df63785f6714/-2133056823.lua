local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Talk.TalkDebate.DebateStartHintDialogBinder"
L0_1(L1_1)
L0_1 = "DebuteStartHintDialog_FadeIn"
L1_1 = "DebuteStartHintDialog_Fadeout"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "DebateStartHintDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DebateStartHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._text_id = A1_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._fade_in_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._fade_in_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._fade_in_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fadein_end
    L0_3(L1_3)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L0_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_in_timer = L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L3_2 = L1_2
  L2_2 = L1_2.GetCurrentHeroGender
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GenderType
  L3_2 = L3_2.GENDER_WOMAN
  L3_2 = L2_2 == L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_boy
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_girl
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_GamePhaseManager
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentPhase
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.GetPerformanceManager
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L4_2
      L5_2 = L4_2.GetPerformanceManager
      L5_2 = L5_2(L6_2)
      L6_2 = L5_2
      L5_2 = L5_2.GetDebateManager
      L5_2 = L5_2(L6_2)
    end
  end
  if L5_2 ~= nil then
    L6_2 = L5_2.UIType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.DebateUIType
    L7_2 = L7_2.Question
    if L6_2 == L7_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = "UIText_Debute_StartToast1"
      L6_2(L7_2, L8_2)
    else
      L6_2 = L5_2.UIType
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.DebateUIType
      L7_2 = L7_2.Explain
      if L6_2 == L7_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.txt
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetTextID
        L8_2 = "UIText_Debute_StartToast2"
        L6_2(L7_2, L8_2)
      end
    end
  end
  L6_2 = A0_2._fade_in_timer
  L7_2 = L6_2
  L6_2 = L6_2.reset
  L6_2(L7_2)
  L6_2 = A0_2._fade_in_timer
  L7_2 = L6_2
  L6_2 = L6_2.start
  L6_2(L7_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_fadein_end = L3_1
return L2_1
