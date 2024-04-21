local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.SkillDetailInfoDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = "BattleUI_SkillInfo_FadeIn"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SkillDetailInfoDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "BattleUIText_SkillDetailInfoDialog_BPNeed"
L3_1 = "BattleUIText_SkillDetailInfoDialog_SPNeed"
L4_1 = "BattleUIText_SkillDetailInfoDialog_SkillNeed"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SkillDetailInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
  A0_2._not_show_level = false
end
L1_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2
  A0_2._skill_row_data = A1_2
  L6_2 = A1_2.Row
  A0_2._skill_row = L6_2
  A0_2._position = A2_2
  A0_2._offset = A3_2
  if A5_2 then
    A0_2._not_show_level = A5_2
  end
  if A4_2 == nil then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.AvatarSpecialUltraType
    L6_2 = L6_2.Normal
    if L6_2 then
      goto lbl_19
    end
  end
  L6_2 = A4_2
  ::lbl_19::
  A0_2._ultra_skill_type = L6_2
end
L1_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._btn_back_onclick
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICloseBattleSkillInfoDialog
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICloseBattleSkillInfoDialog
  L4_2 = A0_2._on_skill_info_close
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._skill_row
  L1_2 = L1_2.Level
  if L1_2 then
    L1_2 = A0_2._skill_row
    L1_2 = L1_2.Level
    if 0 < L1_2 then
      L1_2 = A0_2._not_show_level
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_skill_level
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetText
        L3_2 = A0_2._skill_row
        L3_2 = L3_2.Level
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.go_skill_level
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
    end
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_skill_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.skill_extra_desc_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_extra_desc_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._skill_row
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_row
  L3_2 = L3_2.SkillName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.GameCoreUIConfig
  L1_2 = L1_2.SkillTypeColor
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = A0_2._skill_row
  L3_2 = L3_2.SkillTypeDesc
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_skill_type_bg
    L4_2.color = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = A0_2._skill_row
    L4_2 = L4_2.SkillTypeDesc
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "GameCoreUISetting.json\228\184\173\230\178\161\230\156\137\233\133\141\231\189\174\230\138\128\232\131\189\231\177\187\229\158\139%s\231\154\132\233\162\156\232\137\178"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skill_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._skill_row
  L5_2 = L5_2.SkillTypeDesc
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skill_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._skill_row
  L5_2 = L5_2.SkillTag
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skill_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._skill_row_data
  L5_2 = L5_2.SimpleSkillDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = A0_2._skill_row
  L7_2 = L7_2.SimpleParamList
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_skill_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._position
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_root
    L4_2 = A0_2._position
    L3_2.position = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_root
    L3_2 = L3_2.transform
    L3_2 = L3_2.anchoredPosition
    L4_2 = L3_2.x
    L5_2 = A0_2._offset
    L5_2 = L5_2.x
    L4_2 = L4_2 + L5_2
    L3_2.x = L4_2
    L4_2 = L3_2.y
    L5_2 = A0_2._offset
    L5_2 = L5_2.y
    L4_2 = L4_2 + L5_2
    L3_2.y = L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_root
    L4_2 = L4_2.transform
    L4_2.anchoredPosition = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_up_extra_desc_offset
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L0_1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_cost_detail
  L3_2(L4_2)
end
L1_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._skill_row
  L1_2 = L1_2.SimpleExtraEffectIDList
  if L1_2 then
    L1_2 = A0_2._skill_row
    L1_2 = L1_2.SimpleExtraEffectIDList
    L1_2 = L1_2.Length
    if 0 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_extra_desc
      L2_2 = L1_2
      L1_2 = L1_2.LuaGetWorldCorners
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.root
      L3_2 = L2_2
      L2_2 = L2_2.LuaGetLocalCorners
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.root
      L4_2 = L3_2
      L3_2 = L3_2.InverseTransformPoint
      L5_2 = L1_2[0]
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L2_2[0]
      L5_2 = L3_2.x
      L6_2 = L4_2.x
      if L5_2 < L6_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_root
        L5_2 = L5_2.transform
        L5_2 = L5_2.anchoredPosition
        L6_2 = L5_2.x
        L7_2 = L4_2.x
        L6_2 = L6_2 + L7_2
        L7_2 = L3_2.x
        L6_2 = L6_2 - L7_2
        L5_2.x = L6_2
        L6_2 = A0_2._binder
        L6_2 = L6_2.node_root
        L6_2 = L6_2.transform
        L6_2.anchoredPosition = L5_2
      end
    end
  end
end
L1_1._set_up_extra_desc_offset = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = A0_2._skill_row
  L2_2 = L2_2.SPNeed
  L3_2 = L2_2
  L2_2 = L2_2.ToFloat
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A0_2._skill_row
  L3_2 = L3_2.BPNeed
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_cost_detail
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cost_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  if 0 < L1_2 then
    L3_2 = A0_2._ultra_skill_type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AvatarSpecialUltraType
    L4_2 = L4_2.Normal
    if L3_2 == L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_cost_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetText
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_cost_title
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L3_1
      L3_2(L4_2, L5_2)
  end
  elseif 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cost_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cost_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_bp_point
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_bp_point
      L10_2 = L10_2.transform
      L7_2(L8_2, L9_2, L10_2)
    end
  else
    L3_2 = A0_2._skill_row
    L3_2 = L3_2.SkillNeed
    if L3_2 ~= nil then
      L3_2 = A0_2._skill_row
      L3_2 = L3_2.SkillNeed
      L4_2 = L3_2
      L3_2 = L3_2.IsEmpty
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_cost_desc
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = A0_2._skill_row
        L5_2 = L5_2.SkillNeed
        L6_2 = G
        L6_2 = L6_2.UITextUtils
        L6_2 = L6_2.GetSkillParams
        L7_2 = A0_2._skill_row
        L7_2 = L7_2.ParamList
        L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_cost_title
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = L4_1
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_cost_detail
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1._setup_cost_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._btn_back_onclick = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L1_1._on_skill_info_close = L5_1
return L1_1
