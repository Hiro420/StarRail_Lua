local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueSingleTalkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSingleTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_playing = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._config = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1.setup_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._config
  L1_2 = L1_2.is_aeon_spe_talk
  if L1_2 then
    L1_2 = A0_2._config
    L1_2 = L1_2.is_played
    if L1_2 == false then
      L1_2 = A0_2._binder
      L1_2 = L1_2.content
      L1_2 = L1_2.gameObject
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_title
      L3_2 = A0_2._config
      L3_2 = L3_2.is_played
      L4_2 = A0_2._config
      L4_2 = L4_2.name_id
      L5_2 = A0_2._config
      L5_2 = L5_2.param_text
      L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  else
    L1_2 = A0_2._config
    L1_2 = L1_2.is_played
    if L1_2 == false then
      L2_2 = A0_2
      L1_2 = A0_2._setup_default_content
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_default_title
      L3_2 = A0_2._config
      L3_2 = L3_2.name_id
      L4_2 = A0_2._config
      L4_2 = L4_2.param_text
      L1_2(L2_2, L3_2, L4_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._setup_default_content
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_default_title
      L3_2 = A0_2._config
      L3_2 = L3_2.name_id
      L4_2 = A0_2._config
      L4_2 = L4_2.param_text
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._config
  L1_2 = L1_2.is_aeon_spe_talk
  if L1_2 then
    L1_2 = A0_2._config
    L1_2 = L1_2.is_played
    if L1_2 == false then
      L1_2 = A0_2._binder
      L1_2 = L1_2.content
      L1_2 = L1_2.gameObject
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_title
      L3_2 = A0_2._config
      L3_2 = L3_2.is_played
      L4_2 = A0_2._config
      L4_2 = L4_2.name_id
      L5_2 = A0_2._config
      L5_2 = L5_2.param_text
      L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_default_content
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_default_title
    L3_2 = A0_2._config
    L3_2 = L3_2.name_id
    L4_2 = A0_2._config
    L4_2 = L4_2.param_text
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._try_perform_effect = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil and A1_2 ~= "" then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    if A1_2 ~= L3_2 then
      goto lbl_19
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.title
  L3_2 = L3_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  goto lbl_25
  ::lbl_19::
  L3_2 = A0_2._binder
  L3_2 = L3_2.title
  L3_2 = L3_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  ::lbl_25::
  if A2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueTalkNameColorExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.Color
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_title_bg
  L6_2 = G
  L6_2 = L6_2.UIColorUtils
  L6_2 = L6_2.GetColorInRogueTalkType
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L5_2.color = L6_2
end
L0_1._setup_default_title = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == false then
    L4_2 = A0_2._binder
    L4_2 = L4_2.motion_title
    if L4_2 == nil then
      return
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.motion_title
    L5_2 = L4_2
    L4_2 = L4_2.SetRandomTextIDList
    L7_2 = A0_2
    L6_2 = A0_2._get_perform_text_ids
    L6_2 = L6_2(L7_2)
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.motion_title
    L5_2 = L4_2
    L4_2 = L4_2.TryStartPerform
    L6_2 = A0_2
    L7_2 = A0_2._setup_talk_body
    L8_2 = 10
    L9_2 = 10
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.canvas_cmpt
    L4_2.alpha = 0
    L5_2 = A0_2
    L4_2 = A0_2._set_content_text
    L4_2(L5_2)
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.LayoutRebuilder
    L4_2 = L4_2.ForceRebuildLayoutImmediate
    L5_2 = A0_2._binder
    L5_2 = L5_2.content
    L5_2 = L5_2.transform
    L4_2(L5_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.CoroutineUtils
    L4_2 = L4_2.InvokeNextFrame
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.aeon_bg
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.aeon_bg_rect_tf
      L1_3 = L0_3
      L0_3 = L0_3.SetSizeWithCurrentAnchors
      L2_3 = CS
      L2_3 = L2_3.UnityEngine
      L2_3 = L2_3.RectTransform
      L2_3 = L2_3.Axis
      L2_3 = L2_3.Vertical
      L3_3 = A0_2._binder
      L3_3 = L3_3.content
      L3_3 = L3_3.transform
      L3_3 = L3_3.rect
      L3_3 = L3_3.height
      L0_3(L1_3, L2_3, L3_3)
    end
    L4_2(L5_2)
    return
  end
  if A2_2 ~= nil and A2_2 ~= "" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    if A2_2 ~= L4_2 then
      goto lbl_63
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.title
  L4_2 = L4_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  goto lbl_69
  ::lbl_63::
  L4_2 = A0_2._binder
  L4_2 = L4_2.title
  L4_2 = L4_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  ::lbl_69::
  if A3_2 == nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueTalkNameColorExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L4_2.Color
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_title_bg
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColorInRogueTalkType
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L6_2.color = L7_2
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_content_text
  L1_2(L2_2)
end
L0_1._setup_default_content = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config
  L1_2 = L1_2.is_aeon_spe_talk
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "RogueTalkInfo_FadeIn_Com"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_animation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content
  L2_2 = L2_2.gameObject
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_cmpt
  L2_2.alpha = 1
  L3_2 = A0_2
  L2_2 = A0_2._set_content_text
  L2_2(L3_2)
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_motion_text_with_typer_type
    L4_2 = 1
    L5_2 = A0_2._config
    L5_2 = L5_2.content_id
    L6_2 = A0_2._config
    L6_2 = L6_2.TextSpeed
    L7_2 = A0_2._config
    L7_2 = L7_2.content_param
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._setup_talk_body = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = ipairs
  L3_2 = A0_2._config
  L3_2 = L3_2.title_tb
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L1_2
    L7_2 = L1_2.Add
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1._get_perform_text_ids = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._config
  L1_2 = L1_2.content_param
  if L1_2 == nil then
    L1_2 = A0_2._config
    L1_2 = L1_2.desc_cost_param
    if L1_2 == nil then
      L1_2 = A0_2._config
      L1_2 = L1_2.desc_ratio_param
      if L1_2 == nil then
        L1_2 = A0_2._config
        L1_2 = L1_2.desc_int_param
        if L1_2 == nil then
          L1_2 = A0_2._config
          L1_2 = L1_2.desc_param_2
          if L1_2 == nil then
            L1_2 = A0_2._config
            L1_2 = L1_2.desc_param_3
            if L1_2 == nil then
              L1_2 = A0_2._config
              L1_2 = L1_2.desc_param_4
              if L1_2 == nil then
                L1_2 = A0_2._config
                L1_2 = L1_2.dynamic_display_2
                if L1_2 == nil then
                  L1_2 = A0_2._binder
                  L1_2 = L1_2.content
                  L2_2 = L1_2
                  L1_2 = L1_2.SafeSetTextID
                  L3_2 = A0_2._config
                  L3_2 = L3_2.content_id
                  L1_2(L2_2, L3_2)
              end
            end
          end
        end
      end
    end
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._config
    L3_2 = L3_2.content_id
    L4_2 = A0_2._config
    L4_2 = L4_2.content_param
    L5_2 = A0_2._config
    L5_2 = L5_2.desc_cost_param
    L6_2 = A0_2._config
    L6_2 = L6_2.desc_ratio_param
    L7_2 = A0_2._config
    L7_2 = L7_2.desc_int_param
    L8_2 = A0_2._config
    L8_2 = L8_2.desc_param_2
    L9_2 = A0_2._config
    L9_2 = L9_2.desc_param_3
    L10_2 = A0_2._config
    L10_2 = L10_2.desc_param_4
    L11_2 = A0_2._config
    L11_2 = L11_2.dynamic_display_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._set_content_text = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if 0 < A3_2 then
    A0_2._is_waiting_text_motion = true
    L5_2 = 1 / A3_2
    L5_2 = 1.5 * L5_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.motion_content
    L7_2 = L6_2
    L6_2 = L6_2.ShowTextIDWithMotionWithTyperType
    L8_2 = L5_2
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_motion_play_finish
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.aeon_bg
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1._show_motion_text_with_typer_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.motion_content
  L2_2 = L1_2
  L1_2 = L1_2.ImmediateFinishAllMotions
  L1_2(L2_2)
end
L0_1._immediate_finish_text_motion = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._motion_play_finish_cbk = A2_2
  A0_2._motion_play_finish_cbk_owner = A1_2
end
L0_1.register_fadein_play_finish_cbk = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_playing
  L1_2 = not L1_2
  return L1_2
end
L0_1.is_motion_finished = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_playing = false
  L1_2 = A0_2._config
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._config
  L1_2.is_played = true
  L1_2 = A0_2._motion_play_finish_cbk
  if L1_2 then
    L1_2 = A0_2._motion_play_finish_cbk_owner
    if L1_2 then
      L1_2 = A0_2._motion_play_finish_cbk
      L2_2 = A0_2._motion_play_finish_cbk_owner
      L3_2 = A0_2._config
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_motion_play_finish = L1_1
return L0_1
