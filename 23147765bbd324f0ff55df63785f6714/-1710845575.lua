local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueRandomEvtOptionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRandomEvtOptionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.default = 1
L1_1.unlock = 2
L2_1 = 1509
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_deselected
      L0_3(L1_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_default_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_datas
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_contents
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_aeon_icon
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_aeon_effect
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_btn_interaction
  L3_2(L4_2)
  L3_2 = A0_2._is_valid
  if L3_2 then
    L3_2 = A0_2._config
    L3_2 = L3_2.option_status
    L4_2 = L1_1.default
    if L3_2 ~= L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.change_btn_status
      L5_2 = true
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2._change_folded_status
      L5_2 = true
      L3_2(L4_2, L5_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2.change_btn_status
    L5_2 = false
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._change_folded_status
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._config
  L3_2 = L3_2.show_aeon_icon
  if L3_2 then
    L3_2 = A0_2._owner
    L3_2 = L3_2.get_dialogue_type
    if L3_2 then
      L3_2 = A0_2._owner
      L4_2 = L3_2
      L3_2 = L3_2.get_dialogue_type
      L3_2 = L3_2(L4_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.RogueDialogueType
      L4_2 = L4_2.Event
      if L3_2 == L4_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.GlobalVars
        L3_2 = L3_2.s_ModuleManager
        L3_2 = L3_2.TutorialSupportModule
        L4_2 = L3_2
        L3_2 = L3_2.SetNodeDynamicKey
        L5_2 = A0_2._binder
        L5_2 = L5_2.root
        L5_2 = L5_2.gameObject
        L6_2 = L2_1
        L6_2 = L6_2 + A2_2
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2._config
  L4_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ictrl_tip_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_default_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._config = A1_2
  L3_2 = A1_2.index
  A0_2._index = L3_2
  L3_2 = A2_2 - 1
  A0_2._llv_index = L3_2
  L3_2 = A1_2.is_valid
  A0_2._is_valid = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L4_2 = "RogueRandomTalkSelection"
  L5_2 = A2_2
  L4_2 = L4_2 .. L5_2
  L3_2.name = L4_2
end
L0_1._setup_datas = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2._get_talk_display_row
  L4_2 = A1_2.dialogue_event_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2.left_up_icon
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.icon
    L6_2 = A1_2.left_up_icon
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A1_2.IconPath
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.icon
      L6_2 = A1_2.IconPath
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = L2_2.EventDesc
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
  end
  A0_2._desc = L3_2
  L3_2 = A1_2.content_param
  if L3_2 == nil then
    L3_2 = A1_2.desc_cost_param
    if L3_2 == nil then
      L3_2 = A1_2.desc_ratio_param
      if L3_2 == nil then
        L3_2 = A1_2.desc_int_param
        if L3_2 == nil then
          L3_2 = A1_2.desc_param_2
          if L3_2 == nil then
            L3_2 = A1_2.desc_param_3
            if L3_2 == nil then
              L3_2 = A1_2.desc_param_4
              if L3_2 == nil then
                L3_2 = A1_2.dynamic_display_2
                if L3_2 == nil then
                  L3_2 = A0_2._binder
                  L3_2 = L3_2.title
                  L4_2 = L3_2
                  L3_2 = L3_2.SafeSetTextID
                  L5_2 = A1_2.text_id
                  L3_2(L4_2, L5_2)
                  L3_2 = A0_2._binder
                  L3_2 = L3_2.desc
                  L4_2 = L3_2
                  L3_2 = L3_2.SafeSetTextID
                  L5_2 = A0_2._desc
                  L3_2(L4_2, L5_2)
              end
            end
          end
        end
      end
    end
  end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.text_id
    L6_2 = A1_2.param_text
    L7_2 = A1_2.desc_cost_param
    L8_2 = A1_2.desc_ratio_param
    L9_2 = A1_2.desc_int_param
    L10_2 = A1_2.desc_param_2
    L11_2 = A1_2.desc_param_3
    L12_2 = A1_2.desc_param_4
    L13_2 = A1_2.dynamic_display_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2._desc
    L6_2 = A1_2.param_text
    L7_2 = A1_2.desc_cost_param
    L8_2 = A1_2.desc_ratio_param
    L9_2 = A1_2.desc_int_param
    L10_2 = A1_2.desc_param_2
    L11_2 = A1_2.desc_param_3
    L12_2 = A1_2.desc_param_4
    L13_2 = A1_2.dynamic_display_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L3_2 = A0_2._config
  L3_2 = L3_2.option_status
  L4_2 = L1_1.default
  if L3_2 == L4_2 then
    L3_2 = L2_2.EventDetailDesc
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    if L3_2 == L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.detail_desc
      L3_2 = L3_2.transform
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      A0_2._no_detail_desc = true
  end
  else
    L3_2 = A0_2._config
    L3_2 = L3_2.option_status
    L4_2 = L1_1.default
    if L3_2 == L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.detail_desc
      L3_2 = L3_2.transform
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.detail_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.EventDetailDesc
      L3_2(L4_2, L5_2)
      A0_2._no_detail_desc = false
    end
  end
end
L0_1._setup_contents = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_icon_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.show_aeon_icon
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.show_aeon_icon
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_icon
    L5_2 = A1_2.aeon_icon_path
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_effect_icon
    L5_2 = A1_2.aeon_icon_path
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_effect_icon2
    L5_2 = A1_2.aeon_icon_path
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_aeon_icon = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.show_aeon_icon
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_animator
    L3_2 = L2_2
    L2_2 = L2_2.SetInteger
    L4_2 = "FadeInStatus"
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_animator
    L3_2 = L2_2
    L2_2 = L2_2.SetInteger
    L4_2 = "FadeInStatus"
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_aeon_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DialogueEventExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.EventDisplayID
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = 0
  ::lbl_14::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.DialogueEventDisplayExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = {}
    L4_2 = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
    L4_2.EventDesc = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
    L4_2.EventDetailDesc = L5_2
  end
  return L4_2
end
L0_1._get_talk_display_row = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._change_folded_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_valid
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas
    L1_2.alpha = 1
  else
  end
end
L0_1._on_deselected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_nous_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._change_folded_status
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ictrl_tip_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_valid
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas
    L1_2.alpha = 1
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_btn_interaction
  L1_2(L2_2)
end
L0_1._on_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.confirm_btn
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._is_valid
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_ictrl_tip_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._no_detail_desc
  if L2_2 == false then
    L2_2 = A0_2._binder
    L2_2 = L2_2.detail_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_btn_interaction
  L2_2(L3_2)
end
L0_1._change_folded_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TalkChooseOption
  L3_2 = A0_2._config
  L3_2 = L3_2.InfoIndex
  L1_2(L2_2, L3_2)
end
L0_1._send_notify = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._cbk_owner = A1_2
  A0_2._cbk = A2_2
end
L0_1.register_click_cbk = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_valid
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 == true then
    L2_2 = A0_2
    L1_2 = A0_2._on_confirm_btn_clicked
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_nous_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._config
  L1_2 = L1_2.option_status
  L2_2 = L1_1.default
  if L1_2 == L2_2 then
    L1_2 = A0_2._cbk_owner
    if L1_2 then
      L1_2 = A0_2._cbk
      if L1_2 then
        L1_2 = A0_2._cbk
        L2_2 = A0_2._cbk_owner
        L3_2 = A0_2._config
        L4_2 = A0_2._llv_index
        L5_2 = A0_2
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.click_area
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._config
  L1_2 = L1_2.show_aeon_icon
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.aeon_effect_anim_event
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = "TalkSelectionPathHint"
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._owner
      L0_3 = L0_3._button_mutex
      L1_3 = L0_3
      L0_3 = L0_3.Check
      function L2_3()
        local L0_4, L1_4
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4._do_confirm_btn_click
        L0_4(L1_4)
      end
      L0_3(L1_3, L2_3)
    end
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.confirm_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.aeon_effect_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "TalkSelectionPathHint"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_confirm_btn_click
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_confirm_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_valid
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config
  L1_2.is_chosen = true
  L1_2 = A0_2._cbk
  L2_2 = A0_2._cbk_owner
  L3_2 = A0_2._config
  L4_2 = A0_2._llv_index
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._do_confirm_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.click_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_valid
  if L1_2 ~= nil then
    L1_2 = A0_2._is_valid
    if L1_2 == true then
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_canvas
      L1_2.alpha = 1
      L1_2 = A0_2._binder
      L1_2 = L1_2.desc_canvas
      L1_2.alpha = 1
      L1_2 = A0_2._binder
      L1_2 = L1_2.detail_canvas
      L1_2.alpha = 1
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_canvas
  L1_2.alpha = 0.3
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_canvas
  L1_2.alpha = 0.3
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_canvas
  L1_2.alpha = 0.3
end
L0_1._init_btn_interaction = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.change_btn_status = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  return L1_2
end
L0_1.get_root_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 == false then
    L2_2 = A0_2._binder
    L2_2 = L2_2.click_area
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._config
    L3_2 = L1_1.default
    L2_2.option_status = L3_2
    L3_2 = A0_2
    L2_2 = A0_2.setup_view
    L4_2 = A0_2._config
    L5_2 = A0_2._index
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_deselected
    L2_2(L3_2)
  end
end
L0_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._config
  L1_2 = L1_2.is_nous_option
  if L1_2 then
    L1_2 = A0_2._is_valid
    if L1_2 then
      L1_2 = A0_2._config
      L1_2 = L1_2.has_triggered
      if not L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueNousValuePanelSetPreviewDelta
  L3_2 = {}
  L4_2 = A0_2._config
  L4_2 = L4_2.nous_param
  L3_2.delta = L4_2
  L3_2.is_animated = true
  L1_2(L2_2, L3_2)
end
L0_1._try_trigger_nous_effect = L3_1
return L0_1
