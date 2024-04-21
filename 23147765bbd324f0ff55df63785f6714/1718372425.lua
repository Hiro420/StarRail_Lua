local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftTransportDialogBinder"
L0_1(L1_1)
L0_1 = "PenaconyGiftSubmitDialog_Loop"
L1_1 = "PenaconyGiftSubmitDialog_FadeOut"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityMonsterResearchModule
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PenaconyGiftTransportDialog"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PenaconyGiftTransportDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._research_id = A1_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetResearchData
  L4_2 = A0_2._research_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._research_data = L2_2
  L2_2 = A0_2._research_data
  L2_2 = L2_2.ResearchRow
  A0_2._research_row = L2_2
  L2_2 = A0_2._research_data
  L2_2 = L2_2.QuestionDataRow
  A0_2._question_row = L2_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L0_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_loop_finish
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_finish
    L2_3 = A0_2._research_id
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_gift_info
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root_event
  L2_2 = L1_2
  L1_2 = L1_2.ClearEvent
  L1_2(L2_2)
end
L3_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L1_1
  return L1_2
end
L3_1.get_custom_fade_out_anim_name = L4_1
function L4_1(A0_2)
  local L1_2
  return
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L3_1._on_loop_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_exit_after_transition
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftItemInfoPage"
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._on_fade_out_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_gift
  L4_2 = A0_2._question_row
  L4_2 = L4_2.ImgPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._question_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L3_1._setup_gift_info = L4_1
return L3_1
