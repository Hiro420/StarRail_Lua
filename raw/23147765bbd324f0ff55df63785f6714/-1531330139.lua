local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooBreedEventDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanelBinder"
L0_1(L1_1)
L0_1 = "SpriteOutput/Quest/SpaceZoo/SpaceZooCakeIcon128/CakeIcon_Bg.png"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.SpaceZooSpicalEventState
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.SpaceZooChannelType
L4_1 = L4_1.BodyDecal
L4_1 = #L4_1
L3_1[L4_1] = 3
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.SpaceZooChannelType
L4_1 = L4_1.BodyColor
L4_1 = #L4_1
L3_1[L4_1] = 2
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.SpaceZooChannelType
L4_1 = L4_1.HatColor
L4_1 = #L4_1
L3_1[L4_1] = 1
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "SpaceZooBreedEventDialog"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooBreedEventDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._event_data = nil
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._event_data = A1_2
  L2_2 = A0_2._event_data
  L2_2 = L2_2.SpecialCatRow
  L2_2 = L2_2.SpecialItem
  A0_2._material_item_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_feature_img
  L2_2(L3_2)
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_target
  L4_2 = A0_2._on_btn_target
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = "ActionGroup_Return"
  L1_2(L2_2, L3_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mask
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._event_data
  L1_2 = L1_2.State
  L2_2 = L2_1.Lock
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_detail
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = ""
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_detail
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._event_data
    L3_2 = L3_2.SpecialEventRow
    L3_2 = L3_2.HintTip
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._event_data
  L1_2 = L1_2.State
  L2_2 = L2_1.Get
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._event_data
    L3_2 = L3_2.SpecialCatRow
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivitySpaceZoo_MuseumSSRPage_LockedName"
    L1_2(L2_2, L3_2)
  end
end
L4_1._setup_text = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cat_feature_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_material_item_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_res_icon
  L1_2(L2_2)
end
L4_1._setup_icon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._event_data
  L1_2 = L1_2.State
  L2_2 = L2_1.Lock
  L1_2 = L1_2 == L2_2
  L2_2 = 1
  L3_2 = A0_2._feature_imgs_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_feature_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A0_2._feature_imgs_list
    L8_2 = L8_2[L5_2]
    L9_2 = L1_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_feature_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_feature_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_reached
    L8_2 = false
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2._feature_imgs_list
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_feature_icon
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_feature_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L4_1._setup_cat_feature_icon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._material_item_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_material
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._setup_material_item_icon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_res
  L4_2 = A0_2._event_data
  L4_2 = L4_2.SpecialCatRow
  L4_2 = L4_2.LargeImagePath
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._setup_res_icon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_material_mask
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_result_mask
  L1_2(L2_2)
end
L4_1._setup_mask = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._event_data
  L1_2 = L1_2.SpecialCatRow
  L1_2 = L1_2.SpecialItem
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
  L4_2 = L4_2.node_mat_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2.IsUnlock
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mat_unlock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2.IsUnlock
  L4_2(L5_2, L6_2)
end
L4_1._setup_material_mask = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._event_data
  L1_2 = L1_2.State
  L2_2 = L2_1.Get
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_res_lock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_res
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetAlpha
    L3_2 = 1.0
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_res_lock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_res
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetAlpha
    L3_2 = 0.333
    L1_2(L2_2, L3_2)
  end
end
L4_1._setup_result_mask = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_target
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L4_2 = A0_2
  L3_2 = A0_2._is_collect_cat
  L5_2 = A0_2._event_data
  L5_2 = L5_2.SpecialCatID
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._setup_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_collect_cat
  L3_2 = A0_2._event_data
  L3_2 = L3_2.SpecialCatID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivitySpaceZoo_MuseumPage_IsPinned"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._event_data
  L2_2 = L2_2.SpecialCatID
  L1_2.SpaceZooCollectCat = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_target
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L4_2 = A0_2
  L3_2 = A0_2._is_collect_cat
  L5_2 = A0_2._event_data
  L5_2 = L5_2.SpecialCatID
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._on_btn_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._event_data
  L3_2 = L2_2
  L2_2 = L2_2.GetSpecialCatTipFeature
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._special_cat_feature_list = L1_2
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
    L8_2 = L3_1[L8_2]
    L7_2[L8_2] = L6_2
  end
end
L4_1._init_feature_img = L5_1
function L5_1(A0_2, A1_2)
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
  L5_2 = L0_1
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = A1_2.ImagePath
  L3_2(L4_2, L5_2)
  return L2_2
end
L4_1._get_display_cat_images = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooCollectCat
  L2_2 = L2_2 == A1_2
  return L2_2
end
L4_1._is_collect_cat = L5_1
return L4_1
