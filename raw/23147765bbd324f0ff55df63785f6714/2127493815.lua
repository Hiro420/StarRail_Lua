local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceEditorPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceSurfaceEditorPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_btn
  L4_2 = A0_2._on_surface_detail_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_clicked
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._surface_data = A1_2
  L4_2 = A0_2._surface_data
  L5_2 = L4_2
  L4_2 = L4_2.UpdateNewStatus
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.detail_btn
  L4_2.interactable = false
  L4_2 = A0_2._binder
  L4_2 = L4_2.detail_btn_click_area
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.recommend_icon_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = false
  end
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_text
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._reset_to_default_status
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.recommend_icon_root
  L6_2 = L6_2.gameObject
  L7_2 = A0_2._surface_data
  L7_2 = L7_2.SurfaceID
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "RogueNousSurfaceNew"
  L7_2 = A0_2._surface_data
  L7_2 = L7_2.SurfaceID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.red_dot_root
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._surface_data
  L4_2 = L4_2.IsFirstTimeUnlock
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2 = L4_2.RogueNousSeenDiceSurfaceRedDot
    L5_2 = L4_2
    L4_2 = L4_2.Add
    L6_2 = A0_2._surface_data
    L6_2 = L6_2.SurfaceID
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_panel_within_corners
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_show_first_unlock_surface_effect
  L2_2(L3_2)
end
L0_1.try_show_first_unlock_surface_effect = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_root_gameObject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.get_sorted_tag_table_by_surface_row
  L3_2 = A0_2._surface_data
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.path = "TxtAct"
    L9_2 = L7_2.TagName
    L8_2.text_id = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.tag_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1.show_tag = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.used_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.black_mask_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.reset_status = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.used_hint_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  A0_2._equipped = A1_2
  if not A1_2 then
    return
  end
  L3_2 = nil
  if A2_2 then
    L3_2 = "UIText_RogueNous_SurfaceEditor_SurfaceUsed"
  else
    L3_2 = "UIText_RogueNous_SurfaceEditor_CurrentUse_Title_1"
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.used_hint_txt
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.set_equipped = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.black_mask_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_black_mask = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._equipped
  return L1_2
end
L0_1.is_equipped = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  return L1_2
end
L0_1.get_root = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_btn
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_btn_click_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._surface_data
  return L1_2
end
L0_1.get_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._surface_data
  L1_2 = L1_2.ExtraDesc
  L1_2 = L1_2.Length
  L1_2 = L1_2 ~= 0
  return L1_2
end
L0_1.has_extra_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.show_extra_info
  L2_2 = A0_2._surface_data
  L2_2 = L2_2.ExtraDesc
  L1_2(L2_2)
end
L0_1.show_extra_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.locked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._should_show_locked_view
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = A0_2._surface_data
  L1_2 = L1_2.Icon
  if L1_2 ~= nil then
    L1_2 = A0_2._surface_data
    L1_2 = L1_2.Icon
    if L1_2 ~= "" then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon
  L4_2 = A0_2._surface_data
  L4_2 = L4_2.Icon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_color_by_surface_rarity
  L4_2 = A0_2._surface_data
  L4_2 = L4_2.Rarity
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_bg
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._surface_data
    L8_2 = L8_2.Rarity
    L8_2 = L4_2 == L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.SurfaceName
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.set_title_color
  L2_2 = A0_2._binder
  L2_2 = L2_2.title
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.Rarity
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.SurfaceDesc
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_array
  L6_2 = A0_2._surface_data
  L6_2 = L6_2.DescParam
  L5_2, L6_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.position
  L3_2 = A1_2[0]
  L3_2 = L3_2.y
  L4_2 = L2_2.y
  L3_2 = L3_2 <= L4_2
  return L3_2
end
L0_1._is_panel_within_corners = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._surface_data
  L1_2 = L1_2.IsUnlocked
  if L1_2 == false then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSeenUnlockSurfaceIDs
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.SurfaceID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.unlock_animtion_cmpt
  L3_2 = "RogueNousDiceEditorRow_Unlock"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSeenUnlockSurfaceIDs
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.SurfaceID
  L1_2(L2_2, L3_2)
end
L0_1._try_show_first_unlock_surface_effect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.unlock_animtion_cmpt
  L3_2 = "RogueNousDiceEditorRow_Unlock"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_animtion_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
end
L0_1._reset_to_default_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._surface_data
  L1_2 = L1_2.IsUnlocked
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSeenUnlockSurfaceIDs
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.SurfaceID
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = not L1_2 or L1_2
  return L1_2
end
L0_1._should_show_locked_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._click_listener
  if L1_2 then
    L1_2 = A0_2._click_callback
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_listener
      L3_2 = A0_2._surface_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_root_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.show_extra_info
  L1_2(L2_2)
end
L0_1._on_surface_detail_btn_clicked = L1_1
return L0_1
