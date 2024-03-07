local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerQuantifyTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerRankIngredientPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerRankIngredientPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerIngredientHandbookTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_HandBook_MaterialTitle"
L2_1 = "UIText_DrinkMaker_HandBook_SubTitle_2"
L3_1 = "DrinkMakerHandBookDialog_InfoPanel_Hint"
L4_1 = 1
L5_1 = 33
L6_1 = 1
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.GlobalVars
L7_1 = L7_1.s_ModuleManager
L7_1 = L7_1.DrinkMakerModule
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.Prefs
L8_1 = L8_1.User
function L9_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.DrinkMakerBarUtils
  L1_2 = L1_2.get_unlock_submission_list
  L1_2 = L1_2()
  A0_2._unlock_submission_list = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tags
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_tag_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_ingredients
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_ingredients_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ingredient_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._cur_ingredient = nil
end
L0_1._on_unselect = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_ingredients
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L4_2 = L2_2
      L3_2 = L2_2.get_first_selected_object
      return L3_2(L4_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = L2_1
  return L1_2
end
L0_1.get_title = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
end
L0_1._on_added = L9_1
function L9_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_ingredients
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L1_2 = A0_2._ingredient_groups
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_ingredient_click
  L4_2 = A0_2._ingredient_groups
  L5_2 = L4_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.Ingredients
  L5_2 = L4_1
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_dict
  L2_2 = L7_1.DrinkMakerBarIngredients
  L1_2 = L1_2(L2_2)
  A0_2._all_ingredient = L1_2
  L1_2 = A0_2._all_ingredient
  A0_2._filtered_ingredients = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_ingredient_group_data
  L3_2 = A0_2._filtered_ingredients
  L1_2(L2_2, L3_2)
end
L0_1._init_ingredient_data = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  A0_2._ingredient_groups = L2_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    L9_2 = L8_2.UnlockParam
    L9_2 = L9_2[0]
    L11_2 = L7_2
    L10_2 = L7_2.IsUnlock
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = L8_2.UnlockType
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.DrinkMakerUnlockType
      L11_2 = L11_2.SubMission
      if L10_2 == L11_2 then
        goto lbl_24
      end
    end
    L9_2 = 0
    ::lbl_24::
    L10_2 = L2_2[L9_2]
    if L10_2 == nil then
      L10_2 = {}
      L2_2[L9_2] = L10_2
      L10_2 = L2_2[L9_2]
      L11_2 = {}
      L10_2.Ingredients = L11_2
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2[L9_2]
    L11_2 = L11_2.Ingredients
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = L2_2[0]
  if L3_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._ingredient_groups
    L5_2 = L2_2[0]
    L3_2(L4_2, L5_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._unlock_submission_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = L2_2[L7_2]
      L9_2 = G
      L9_2 = L9_2.DrinkMakerBarUtils
      L9_2 = L9_2.get_unlock_title
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L8_2.Title = L9_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._ingredient_groups
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._create_ingredient_group_data = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_ingredients
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._ingredient_groups
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_ingredients
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_ingredients = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_select_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_unselect_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerRankIngredientPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerRankIngredientPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._ingredient_groups
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2._on_ingredient_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.Ingredients
  L9_2 = L5_2.Title
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_ingredient
  L6_2(L7_2, L8_2)
  L7_2 = L3_2
  L6_2 = L3_2.SetSubList
  L9_2 = L4_2
  L8_2 = L4_2.get_static_list
  L8_2, L9_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_get_ingredients_item = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerQuantifyTagPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerQuantifyTagPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._tag_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L7_1
  L7_2 = L6_2
  L6_2 = L6_2.GetTagData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_tag_changed = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_ingredient
  if L2_2 == A1_2 then
    return
  end
  A0_2._cur_ingredient = A1_2
  L2_2 = L8_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDrinkMakerNewIngredients
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A0_2._cur_ingredient
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_ingredient
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_select_state
  L2_2(L3_2)
end
L0_1._on_ingredient_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._ingredient_groups
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_ingredients
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.set_selected
      L9_2 = A0_2._cur_ingredient
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._setup_select_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_ingredient
  L2_2 = L1_2
  L1_2 = L1_2.IsUnlock
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_ingredient_info
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_ingredient_lock_view
    L2_2(L3_2)
  end
end
L0_1._setup_cur_ingredient = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_ingredient
  L1_2 = L1_2.Row
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lock_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBarUtils
  L4_2 = L4_2.lock_name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_ingredient_lock
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mask_ingredient_lock
  L3_2 = G
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.SyncLoadAsset
  L4_2 = L1_2.IconPath
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Sprite
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.sprite = L3_2
  L2_2 = L1_2.UnlockType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DrinkMakerUnlockType
  L3_2 = L3_2.SubMission
  if L2_2 == L3_2 then
    L2_2 = L1_2.UnlockParam
    L2_2 = L2_2[0]
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = G
    L5_2 = L5_2.DrinkMakerBarUtils
    L5_2 = L5_2.get_unlock_title
    L6_2 = L2_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L6_1
  L2_2(L3_2, L4_2)
end
L0_1._setup_ingredient_lock_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_content
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_ingredient
  L1_2 = L1_2.Row
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.IngredientName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.IngredientDesc
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_ingredient
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tag
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L5_1
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_desc
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_ingredient_info = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._cur_ingredient
  L2_2 = L2_2.Row
  L2_2 = L2_2.IncludeTagList
  L1_2 = L1_2(L2_2)
  A0_2._tag_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tags
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._tag_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tags
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_tag = L9_1
return L0_1
