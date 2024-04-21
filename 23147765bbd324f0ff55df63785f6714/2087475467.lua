local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.SpaceZooSpicalEventState
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = "SpaceZooTargetPin_Refresh"
L3_1 = "SpriteOutput/Quest/SpaceZoo/SpaceZooCakeIcon128/CakeIcon_Bg.png"
L4_1 = "UIText_ActivitySpaceZoo_UnlockHint"
L5_1 = {}
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.SpaceZooChannelType
L6_1 = L6_1.BodyDecal
L6_1 = #L6_1
L5_1[L6_1] = 3
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.SpaceZooChannelType
L6_1 = L6_1.BodyColor
L6_1 = #L6_1
L5_1[L6_1] = 2
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.SpaceZooChannelType
L6_1 = L6_1.HatColor
L6_1 = #L6_1
L5_1[L6_1] = 1
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "SpaceZooCollectCatPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._is_show_shrink_text = A3_2
  A0_2._is_show_reached = A4_2
  A0_2._collect_cat_id = nil
  A0_2._callback = nil
  A0_2._callback_handler = nil
  A0_2._is_refreshed = true
  A0_2._is_can_refresh = true
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.Prefs
  L5_2 = L5_2.User
  L5_2 = L5_2.SpaceZooLastBreedCats
  A0_2._breed_cats_pref = L5_2
  L5_2 = L1_1.SpaceZooData
  A0_2._space_zoo_data = L5_2
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_change
  L4_2 = A0_2._on_btn_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._anim_length = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_anim_finish
  L4_2 = A0_2._anim_length
  L5_2 = A0_2._anim_length
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._anim_timer = L1_2
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L6_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_can_refresh
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.SpaceZooUtils
  L1_2 = L1_2.get_first_unlock_ssr_cat
  L2_2 = A0_2._collect_cat_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SpaceZooUtils
    L2_2 = L2_2.get_next_ssr_cat
    L3_2 = A0_2._collect_cat_id
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if L1_2 == nil then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.Log
      L3_2 = "SpaceZoo Activity: No Collectable Cat Exist!!!"
      L2_2(L3_2)
      return
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2.SpaceZooCollectCat = L1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._callback
  L4_2 = A0_2._callback_handler
  L2_2(L3_2, L4_2)
end
L6_1._on_btn_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L6_1._on_ui_animation_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._collect_cat_id
  L3_2 = A0_2
  L2_2 = A0_2._get_target_cat
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_feature_reached
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_material
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_event
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._feature_imgs_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.shrink_panel_icon
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.set_reached
    L7_2 = false
    L8_2 = A0_2._is_show_reached
    L5_2(L6_2, L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_feature_reached
  L1_2(L2_2)
end
L6_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L6_1._on_anim_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_target_cat
  L1_2 = L1_2(L2_2)
  A0_2._collect_cat_id = L1_2
  L1_2 = A0_2._collect_cat_id
  if L1_2 ~= nil then
    L1_2 = A0_2._collect_cat_id
    if L1_2 ~= 0 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = L1_1.SpaceZooData
  L2_2 = L1_2
  L1_2 = L1_2.GetSpecialEventData
  L3_2 = A0_2._collect_cat_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._special_event_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_special_cat_feature_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_feature_img
  L1_2(L2_2)
end
L6_1._setup_special_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_result
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_material
  L1_2(L2_2)
end
L6_1._setup_tip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._special_event_data
  L1_2 = L1_2.State
  L2_2 = L0_1.Lock
  L1_2 = L1_2 == L2_2
  L2_2 = 1
  L3_2 = A0_2._feature_imgs_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.shrink_panel_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A0_2._feature_imgs_list
    L8_2 = L8_2[L5_2]
    L9_2 = L1_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.shrink_panel_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._feature_imgs_list
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.shrink_panel_icon
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.shrink_panel_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L6_1._setup_item_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_result
  L4_2 = A0_2._special_event_data
  L4_2 = L4_2.SpecialCatRow
  L4_2 = L4_2.ImagePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_res_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._special_event_data
  L3_2 = L3_2.State
  L4_2 = L0_1.Get
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
end
L6_1._setup_result = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._special_event_data
  L1_2 = L1_2.State
  L2_2 = L0_1.Lock
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._special_event_data
    L3_2 = L3_2.SpecialEventRow
    L3_2 = L3_2.HintTip
    L1_2(L2_2, L3_2)
  end
end
L6_1._setup_text = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._special_event_data
  L1_2 = L1_2.SpecialCatRow
  L1_2 = L1_2.SpecialItem
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_mutate_tip_material
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_normal_tip_material
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpaceZooMutationMaterialExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1.SpaceZooData
  L4_2 = L3_2
  L3_2 = L3_2.GetFeatureData
  L5_2 = L2_2.ChangeFeatureList
  L5_2 = L5_2[0]
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_mutate_tip_material
  L5_2 = L4_2
  L4_2 = L4_2.set_state
  L6_2 = L3_2.IsUnlock
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_normal_tip_material
  L5_2 = L4_2
  L4_2 = L4_2.set_state
  L6_2 = L3_2.IsUnlock
  L4_2(L5_2, L6_2)
end
L6_1._setup_material = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_shrink_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_shrink_text
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_shrink_formula
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_shrink_text
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_change_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_shrink_text
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_change
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._is_show_shrink_text
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_btn
  L2_2 = A0_2._is_show_shrink_text
  L2_2 = not L2_2
  L1_2.ActionEnabled = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip
  L2_2 = A0_2._is_show_shrink_text
  L2_2 = not L2_2
  L1_2.IsShowTip = L2_2
end
L6_1._setup_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._special_cat_feature_list = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._special_event_data
  L3_2 = L2_2
  L2_2 = L2_2.GetSpecialCatTipFeature
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.SpaceZooFeatureConfigExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._special_cat_feature_list
    L8_2 = L6_2.Channel
    L8_2 = #L8_2
    L8_2 = L5_1[L8_2]
    L9_2 = L1_2[L5_2]
    L7_2[L8_2] = L9_2
  end
end
L6_1._init_special_cat_feature_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._feature_imgs_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._special_cat_feature_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.SpaceZooFeatureConfigExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._special_cat_feature_list
    L6_2 = L6_2[L4_2]
    L5_2 = L5_2(L6_2)
    L7_2 = A0_2
    L6_2 = A0_2._get_display_cat_images
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._feature_imgs_list
    L8_2 = L5_2.Channel
    L8_2 = #L8_2
    L8_2 = L5_1[L8_2]
    L7_2[L8_2] = L6_2
  end
end
L6_1._init_feature_img = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.ImagePath
  if L2_2 ~= nil then
    L2_2 = A1_2.ImagePath
    if L2_2 ~= "" then
      goto lbl_9
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_9::
  L2_2 = {}
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = L3_1
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = A1_2.ImagePath
  L3_2(L4_2, L5_2)
  return L2_2
end
L6_1._get_display_cat_images = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._breed_cats_pref
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = 0
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2._space_zoo_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCatData
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._left_slot_cat = L3_2
  L4_2 = A0_2._breed_cats_pref
  L5_2 = L4_2
  L4_2 = L4_2.TryGetValue
  L6_2 = 1
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2._space_zoo_data
  L7_2 = L6_2
  L6_2 = L6_2.GetCatData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2._right_slot_cat = L6_2
end
L6_1._setup_breeds_cat = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_breeds_cat
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._special_cat_feature_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._left_slot_cat
    if L5_2 ~= nil then
      L5_2 = A0_2._left_slot_cat
      L5_2 = L5_2.Features
      L6_2 = L5_2
      L5_2 = L5_2.ContainsValue
      L7_2 = A0_2._special_cat_feature_list
      L7_2 = L7_2[L4_2]
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.shrink_panel_icon
        L5_2 = L5_2[L4_2]
        L6_2 = L5_2
        L5_2 = L5_2.set_reached
        L7_2 = true
        L8_2 = A0_2._is_show_reached
        L5_2(L6_2, L7_2, L8_2)
    end
    else
      L5_2 = A0_2._right_slot_cat
      if L5_2 ~= nil then
        L5_2 = A0_2._right_slot_cat
        L5_2 = L5_2.Features
        L6_2 = L5_2
        L5_2 = L5_2.ContainsValue
        L7_2 = A0_2._special_cat_feature_list
        L7_2 = L7_2[L4_2]
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 then
          L5_2 = A0_2._binder
          L5_2 = L5_2.shrink_panel_icon
          L5_2 = L5_2[L4_2]
          L6_2 = L5_2
          L5_2 = L5_2.set_reached
          L7_2 = true
          L8_2 = A0_2._is_show_reached
          L5_2(L6_2, L7_2, L8_2)
      end
      else
        L5_2 = A0_2._binder
        L5_2 = L5_2.shrink_panel_icon
        L5_2 = L5_2[L4_2]
        L6_2 = L5_2
        L5_2 = L5_2.set_reached
        L7_2 = false
        L8_2 = A0_2._is_show_reached
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
end
L6_1._set_feature_reached = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._target_collect_cat_id
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SpaceZooCollectCat
  end
  return L1_2
end
L6_1._get_target_cat = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.shrink_panel_icon
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.shrink_panel_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.get_is_reached
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L6_1.get_reach_count = L7_1
function L7_1(A0_2, A1_2)
  A0_2._target_collect_cat_id = A1_2
end
L6_1.set_target_collection_cat = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_refreshed
  if L1_2 then
    A0_2._is_refreshed = false
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._is_show_shrink_text
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
end
L6_1.refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.get_run_time
  L1_2 = L1_2(L2_2)
  if 0 < L1_2 then
    L1_2 = A0_2._anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.get_left_run_time
    L1_2 = L1_2(L2_2)
    if 0.01 < L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._anim_timer
      L2_2 = L1_2
      L1_2 = L1_2.reset
      L1_2(L2_2)
    end
  end
end
L6_1.check_anim_play = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L6_1.stop_anim_timer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_feature_reached
  L1_2(L2_2)
end
L6_1.refresh_feature_reached = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L6_1.register_btn_callback = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._is_refreshed = true
end
L6_1.reset_is_refreshed = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._collect_cat_id
  return L1_2
end
L6_1.get_collect_cat_id = L7_1
function L7_1(A0_2, A1_2)
  A0_2._is_can_refresh = A1_2
end
L6_1.set_is_can_refresh = L7_1
return L6_1
