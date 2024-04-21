local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceBranchDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceBranchDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.normal_detail_btn
  L4_2 = A0_2._on_show_detail_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.edit_btn
  L4_2 = A0_2._on_edit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.large_edit_btn
  L4_2 = A0_2._on_edit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_btn
  L4_2 = A0_2._on_show_extra_info_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceIcon"
  L6_2 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceIconBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.surface_node_panel = L1_2
  L1_2 = A0_2.surface_node_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.normal_icon_root
  L3_2 = L3_2.transform
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.fade_anim_event_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "RogueNousDiceCustomInfoPanel_FadeOut"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_finish
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.fade_anim_cmpt
  L3_2 = "RogueNousDiceCustomInfoPanel_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._on_fade_out_finish = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._branch_data
  if L4_2 ~= A1_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayFromBegin
    L5_2 = A0_2._binder
    L5_2 = L5_2.fade_anim_cmpt
    L6_2 = "RogueNousDiceCustomInfoPanel_FadeIn"
    L4_2(L5_2, L6_2)
  end
  A0_2._branch_data = A1_2
  A0_2._is_aeon_selected = A3_2
  A0_2._aeon_id = A2_2
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.IsUnlocked
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_normal_view
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_locked_view
    L4_2(L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_state_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_state_desc_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.UnlockConditionDesc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_branch_txt
  L3_2 = A0_2._binder
  L3_2 = L3_2.lock_title_txt
  L4_2 = A0_2._binder
  L4_2 = L4_2.lock_brief_intro_txt
  L5_2 = A0_2._binder
  L5_2 = L5_2.lock_core_eff_txt
  L6_2 = A0_2._binder
  L6_2 = L6_2.lock_passive_eff_txt
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_locked_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_state_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.normal_branch_icon
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.DiceIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_slot_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_branch_txt
  L3_2 = A0_2._binder
  L3_2 = L3_2.normal_title_txt
  L4_2 = A0_2._binder
  L4_2 = L4_2.normal_brief_intro_txt
  L5_2 = A0_2._binder
  L5_2 = L5_2.normal_core_eff_txt
  L6_2 = A0_2._binder
  L6_2 = L6_2.normal_passive_eff_txt
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_normal_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_aeon_selected
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.edit_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_aeon_selected
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.large_edit_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_aeon_selected
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_btns = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.surface_node_panel
  L2_2 = L1_2
  L1_2 = L1_2.rebind_child_node
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.SlotDataDict
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.SlotDataDict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2.surface_node_panel
  L3_2 = L2_2
  L2_2 = L2_2.rebind_child_node
  L4_2 = #L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.surface_node_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._on_show_detail_btn_clicked
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_slot_panel = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A0_2._is_aeon_selected
  if not L5_2 then
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = A0_2._branch_data
    L6_2 = L6_2.EffectDescParam2
    L8_2 = A0_2
    L7_2 = A0_2._unpack_cs_array_params
    L9_2 = A0_2._branch_data
    L9_2 = L9_2.DescParamValue2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = A0_2._branch_data
    L7_2 = L7_2.EffectDescParam3
    L9_2 = A0_2
    L8_2 = A0_2._unpack_cs_array_params
    L10_2 = A0_2._branch_data
    L10_2 = L10_2.DescParamValue3
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = A3_2
    L7_2 = A3_2.SafeSetTextID
    L9_2 = A0_2._branch_data
    L9_2 = L9_2.EffectDescParam1
    L11_2 = A0_2
    L10_2 = A0_2._unpack_cs_array_params
    L12_2 = A0_2._branch_data
    L12_2 = L12_2.DescParamValue1
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = A4_2
    L7_2 = A4_2.SafeSetTextID
    L9_2 = A0_2._branch_data
    L9_2 = L9_2.PassiveEffectDesc
    L10_2 = L5_2
    L11_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  else
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = A0_2._branch_data
    L6_2 = L6_2.EffectDescParam2
    L8_2 = A0_2
    L7_2 = A0_2._unpack_cs_array_params
    L9_2 = A0_2._branch_data
    L9_2 = L9_2.DescParamValue2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.RogueNousDiceBranchValueExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._branch_data
    L7_2 = L7_2.BranchID
    L8_2 = A0_2._aeon_id
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L6_2.BranchEffectDesc
    L10_2 = A0_2
    L9_2 = A0_2._unpack_cs_array_params
    L11_2 = L6_2.ParamList
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = A3_2
    L8_2 = A3_2.SafeSetTextID
    L10_2 = A0_2._branch_data
    L10_2 = L10_2.EffectDescParam1
    L12_2 = A0_2
    L11_2 = A0_2._unpack_cs_array_params
    L13_2 = A0_2._branch_data
    L13_2 = L13_2.DescParamValue1
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = A4_2
    L8_2 = A4_2.SafeSetTextID
    L10_2 = A0_2._branch_data
    L10_2 = L10_2.PassiveEffectDesc
    L11_2 = L5_2
    L12_2 = L7_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L6_2 = A1_2
  L5_2 = A1_2.SafeSetTextID
  L7_2 = A0_2._branch_data
  L7_2 = L7_2.BranchName
  L5_2(L6_2, L7_2)
  L6_2 = A2_2
  L5_2 = A2_2.SafeSetTextID
  L7_2 = A0_2._branch_data
  L7_2 = L7_2.BriefIntro
  L5_2(L6_2, L7_2)
end
L0_1._setup_branch_txt = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  return L2_2(L3_2, L4_2)
end
L0_1._unpack_cs_array_params = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._edit_click_callback = A1_2
  A0_2._edit_click_owner = A2_2
end
L0_1.register_edit_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._edit_click_callback
  if L1_2 then
    L1_2 = A0_2._edit_click_owner
    if L1_2 then
      L1_2 = A0_2._edit_click_callback
      L2_2 = A0_2._edit_click_owner
      L1_2(L2_2)
    end
  end
end
L0_1._on_edit_btn_clicked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._confirm_click_callback = A1_2
  A0_2._confirm_click_owner = A2_2
end
L0_1.register_confirm_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._confirm_click_callback
  if L1_2 then
    L1_2 = A0_2._confirm_click_owner
    if L1_2 then
      L1_2 = A0_2._confirm_click_callback
      L2_2 = A0_2._confirm_click_owner
      L1_2(L2_2)
    end
  end
end
L0_1._on_confirm_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceEffectDisplayDialog"
  L3_2 = A0_2._branch_data
  L1_2(L2_2, L3_2)
end
L0_1._on_show_detail_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._is_aeon_selected
  if L2_2 then
    L2_2 = A0_2._branch_data
    L3_2 = L2_2
    L2_2 = L2_2.GetEnterModeUnderlineIDs
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._branch_data
    L3_2 = L2_2
    L2_2 = L2_2.GetEditModeUnderLineIDs
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = G
  L2_2 = L2_2.ChessRogueUtils
  L2_2 = L2_2.show_extra_info
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_show_extra_info_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  return L1_2(L2_2)
end
L0_1.can_scroll_move = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._is_aeon_selected
  if L2_2 then
    L2_2 = A0_2._branch_data
    L3_2 = L2_2
    L2_2 = L2_2.GetEnterModeUnderlineIDs
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._branch_data
    L3_2 = L2_2
    L2_2 = L2_2.GetEditModeUnderLineIDs
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = L1_2 ~= nil
  return L2_2
end
L0_1.has_extra_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._branch_data
  L1_2 = L1_2.IsUnlocked
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_show_extra_info_btn_clicked
  L1_2(L2_2)
end
L0_1.show_extra_info = L1_1
return L0_1
