local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendColor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagRequestPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTagRequestPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_GamePlayPage_MenuStep3_2"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
L3_1 = "OnSubStepFinishAnimKeyFrame"
L4_1 = "OnSubStepCheckAnimKeyFrame"
function L5_1(A0_2, A1_2, A2_2)
  A0_2._can_play_check_anim = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._has_mix_tag = true
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.on_mix_tag_bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_key_frame
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.on_mix_tag_bind = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._has_mix_tag = false
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.on_normal_tag_bind
  L1_2(L2_2)
end
L0_1.on_normal_tag_bind = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._request = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_request_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.RequestDesc
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_finish_state
  L2_2(L3_2)
  L2_2 = A0_2._has_mix_tag
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_mix_tag_detail_view
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_normal_tag_detail_view
    L2_2(L3_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L5_2 = A1_2.ID
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._request
  L1_2 = L1_2.IsSuccess
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_all_finish_state
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._has_mix_tag
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._show_all_finish_state
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_finish_state = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finished
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_request_desc
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = TagRequestColor
    L4_2 = L4_2.FinishColor
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._request
    L2_2 = L2_2.CanPlayFinishEff
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_finished
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L2_2(L3_2)
      L2_2 = A0_2._request
      L2_2.CanPlayFinishEff = false
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_request_desc
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = TagRequestColor
    L4_2 = L4_2.NormalColor
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1._show_all_finish_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_tag_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_tag_finish_state
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_request_desc
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._request
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_mix_tag_detail_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._request
  L1_2 = L1_2.HasHint
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_hint
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._request
    L4_2 = L4_2.HintText
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A0_2._request
    L5_2 = L5_2.HintIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_normal_tag_detail_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_order
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_order
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_order = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._request
  L1_2 = L1_2.MixTag
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2.IncludeTagIDs
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_1
    L9_2 = L8_2
    L8_2 = L8_2.GetTagData
    L10_2 = L2_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = A0_2
    L9_2 = A0_2._async_load_sprite_to
    L11_2 = A0_2._binder
    L11_2 = L11_2.img_tag_icon
    L11_2 = L11_2[L7_2]
    L12_2 = L8_2.IconPath
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_tag_value
    L9_2 = L9_2[L7_2]
    L10_2 = L9_2
    L9_2 = L9_2.SetCustomizedText
    L11_2 = L8_2.Quantity
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_tag_desc
    L9_2 = L9_2[L7_2]
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetTextID
    L11_2 = L8_2.TagName
    L9_2(L10_2, L11_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_tag_desc
  L4_2 = #L4_2
  if L3_2 <= L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_tag_desc
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L1_1
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_sub_tag_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._is_all_success = true
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._request
  L3_2 = L2_2
  L2_2 = L2_2.GetAllSubTagFinishState
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = 1
  L3_2 = 2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_tag_desc
      L7_2 = L7_2[L5_2]
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = TagRequestColor
      L9_2 = L9_2.FinishColor
      L8_2 = L8_2(L9_2)
      L7_2.color = L8_2
    else
      A0_2._is_all_success = false
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_tag_desc
      L7_2 = L7_2[L5_2]
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = TagRequestColor
      L9_2 = L9_2.NormalColor
      L8_2 = L8_2(L9_2)
      L7_2.color = L8_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_sub_tag_state
  L2_2 = L2_2[1]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_all_success
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_sub_tag_state
  L2_2 = L2_2[2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_all_success
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mix_state
  L2_2 = L2_2[1]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._request
  L4_2 = L4_2.IsSuccess
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mix_state
  L2_2 = L2_2[2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._request
  L4_2 = L4_2.IsSuccess
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._request
  L2_2 = L2_2.IsSuccess
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tag_desc
    L2_2 = L2_2[3]
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = TagRequestColor
    L4_2 = L4_2.FinishColor
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    A0_2._is_all_success = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tag_desc
    L2_2 = L2_2[3]
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = TagRequestColor
    L4_2 = L4_2.NormalColor
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
  L2_2 = A0_2._is_all_success
  if not L2_2 then
    A0_2._can_play_check_anim = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_all_finish
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_sub_tag_finish_state = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._is_all_success
    if L2_2 then
      L2_2 = A0_2._can_play_check_anim
      if L2_2 then
        A0_2._can_play_check_anim = false
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_all_finish
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.anim_sub_steps
        L3_2 = L2_2
        L2_2 = L2_2.Play
        L2_2(L3_2)
      end
    end
  else
    L2_2 = L4_1
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._show_all_finish_state
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_anim_key_frame = L5_1
return L0_1
