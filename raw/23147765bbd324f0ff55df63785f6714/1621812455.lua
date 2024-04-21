local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendChallengeModePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendChallengeModePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "DrinkMaker_MissionRequest_IconPath"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.StringValue
L3_1 = "5161"
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.DrinkMakerBartendProcedure
L5_1 = L5_1.Cup
L5_1 = #L5_1
L4_1[L5_1] = "UIText_DrinkMaker_Challenge_StepFailHint1"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.DrinkMakerBartendProcedure
L5_1 = L5_1.Ice
L5_1 = #L5_1
L4_1[L5_1] = "UIText_DrinkMaker_Challenge_StepFailHint2"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.DrinkMakerBartendProcedure
L5_1 = L5_1.Ingredient
L5_1 = #L5_1
L4_1[L5_1] = "UIText_DrinkMaker_Challenge_StepFailHint3"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.DrinkMakerBartendProcedure
L5_1 = L5_1.Deco
L5_1 = #L5_1
L4_1[L5_1] = "UIText_DrinkMaker_Challenge_StepFailHint4"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.is_can_to_special_zoom = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_procedure = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_desc_view
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
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1.get_cur_scroll_rect = L5_1
function L5_1(A0_2, A1_2)
  A0_2._cur_procedure = A1_2
end
L0_1.refresh_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "RequestData"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.TargetDrink
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L5_2 = L2_2
  L4_2 = L2_2.GetCurProcedureMakingStep
  L6_2 = A0_2._cur_procedure
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = #L3_2
  L4_2 = L3_2[L4_2]
  L5_2 = L4_2.IsStepFinished
  if L5_2 then
    L5_2 = L4_2.IsCurSuccess
  end
  L6_2 = A0_2._cur_procedure
  L6_2 = #L6_2
  L6_2 = L4_1[L6_2]
  return L5_2, L6_2
end
L0_1.check_if_current_step_finished = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "RequestData"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.TargetDrink
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar_icon
  L6_2 = L2_1
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_drink_icon
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_drink_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_drink_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_DrinkMaker_Challenge_Desc"
  L3_2(L4_2, L5_2)
end
L0_1._setup_basic_desc_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.DrinkMaker.Challenge.DrinkMakerImageDialog"
  L3_2 = L1_1.CurChallenge
  L3_2 = L3_2.Row
  L3_2 = L3_2.ChallengePic
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_detail_clicked = L5_1
return L0_1
