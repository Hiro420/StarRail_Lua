local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.RogueMiracleDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMiracleDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_AvatarMazeSkill_Topaz_GainRougeAward"
L2_1 = "UIText_Rogue_Miracle_Title_New_Get"
L3_1 = "UIText_Rogue_Miracle_Detail"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueMiracleDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._need_enabled_bg_canvas_group = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._rogue_miracle_data = A1_2
  if A3_2 then
    L5_2 = L1_1
    if L5_2 then
      goto lbl_8
    end
  end
  L5_2 = L2_1
  ::lbl_8::
  A0_2._title_text_id = L5_2
  if A2_2 == true then
    L5_2 = G
    L5_2 = L5_2.ImportCsToLua
    L5_2 = L5_2.CS_RPG_Client_UILayer_AboveDialog
    A0_2._ui_layer = L5_2
    A0_2._is_special_above_dialog = true
    L5_2 = G
    L5_2 = L5_2.RogueUtils
    L5_2 = L5_2.add_mission_performance_lock
    L6_2 = A0_2
    L5_2(L6_2)
  end
  if A4_2 == true then
    A0_2._need_enabled_bg_canvas_group = true
  end
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._execute_exit_callback
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.remove_mission_performance_lock
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._execute_exit_callback = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L3_1
  A0_2._title_text_id = L1_2
end
L0_1.set_detail_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_bg
  L2_2 = A0_2._need_enabled_bg_canvas_group
  L1_2.enabled = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._is_special_above_dialog
  if L1_2 == true then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root
      if L1_2 ~= nil then
        L1_2 = A0_2._binder
        L1_2 = L1_2.root
        L2_2 = L1_2
        L1_2 = L1_2.SetSiblingIndex
        L3_2 = 0
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_dialog_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title_text_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_left_num
  L3_2 = A0_2._rogue_miracle_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_img_color
  L3_2 = A0_2._rogue_miracle_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._rogue_miracle_data
  L1_2 = L1_2.RogueMiracleRow
  if L1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueMiracleDisplayByMiracleRow
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_miracle
  L6_2 = L2_2.MiracleFigureIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.MiracleName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.MiracleDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = L2_2.DescParamList
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_story_desc
  L5_2 = L2_2.MiracleBGDesc
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_tag
  L5_2 = L2_2.MiracleTag
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_endless_mark
  L4_2 = L3_2
  L3_2 = L3_2.setup_miracle_view
  L5_2 = L2_2.MiracleDisplayID
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._check_and_trigger_tutorial
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.IsEmpty
  L2_2 = L2_2(L3_2)
  L2_2 = A1_2 ~= nil and L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_tag
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_tag = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.IsEmpty
  L2_2 = L2_2(L3_2)
  L2_2 = A1_2 ~= nil and L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc_story
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc_story
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_story_desc = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.TotalCount
  L2_2 = 0 < L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_left_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A1_2.TotalCount
    L6_2 = A1_2.UseCount
    L5_2 = L5_2 - L6_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_left_num = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.TotalCount
  L2_2 = 0 < L2_2
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_miracle
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#6F6F6F79"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_miracle
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#FFFFFFFF"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
end
L0_1._setup_img_color = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_and_trigger_rogue_endless_tutorial
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._check_and_trigger_tutorial = L4_1
L4_1 = "RogueEndless_MiracleSelect_1"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RogueEndlessUtils
    L2_2 = L2_2.is_specific_miracle
    L3_2 = A1_2.MiracleDisplayID
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.Log
      L3_2 = "[RogueEndless] trigger miracle select task unlock"
      L2_2(L3_2)
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.TutorialTaskUnlock
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.Log
    L3_2 = "[RogueEndless] not trigger miracle select task unlock"
    L2_2(L3_2)
  end
end
L0_1._check_and_trigger_rogue_endless_tutorial = L5_1
return L0_1
