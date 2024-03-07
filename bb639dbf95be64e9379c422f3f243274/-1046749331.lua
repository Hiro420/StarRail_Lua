local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendCommand"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendMaterialItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendMaterialItemSimplePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendMaterialItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_ChallengeActivity_HitCount"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
L3_1 = {}
L4_1 = MatTypes
L4_1 = L4_1.Cups
L5_1 = DrinkMakerBartendCommandType
L5_1 = L5_1.CupSelect
L3_1[L4_1] = L5_1
L4_1 = MatTypes
L4_1 = L4_1.Ice
L5_1 = DrinkMakerBartendCommandType
L5_1 = L5_1.IceSelect
L3_1[L4_1] = L5_1
L4_1 = MatTypes
L4_1 = L4_1.Ingredients
L5_1 = DrinkMakerBartendCommandType
L5_1 = L5_1.IngredientSelect
L3_1[L4_1] = L5_1
L4_1 = MatTypes
L4_1 = L4_1.Decos
L5_1 = DrinkMakerBartendCommandType
L5_1 = L5_1.DecoSelect
L3_1[L4_1] = L5_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L4_2 = MatTypes
  L4_2 = L4_2.Cups
  L5_2 = L0_1._setup_cup_item_view
  L3_2[L4_2] = L5_2
  L4_2 = MatTypes
  L4_2 = L4_2.Ice
  L5_2 = L0_1._setup_ice_item_view
  L3_2[L4_2] = L5_2
  L4_2 = MatTypes
  L4_2 = L4_2.Ingredients
  L5_2 = L0_1._setup_ingredients_item_view
  L3_2[L4_2] = L5_2
  L4_2 = MatTypes
  L4_2 = L4_2.Decos
  L5_2 = L0_1._setup_decos_item_view
  L3_2[L4_2] = L5_2
  A0_2._mat_type_view_callbacks = L3_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._on_select_callback
    if L0_3 then
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2._on_select_callback
        L1_3 = A0_2._on_select_callback_owner
        L0_3(L1_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback = A1_2
  A0_2._on_select_callback_owner = A2_2
end
L0_1.set_on_select_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L5_2 = L4_2
  L4_2 = L4_2.ClearAnimationState
  L4_2(L5_2)
  A0_2._is_show_mat_name = A3_2
  A0_2._data_row = A1_2
  A0_2._mat_type = A2_2
  L4_2 = A0_2._mat_type_view_callbacks
  L4_2 = L4_2[A2_2]
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_checked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._mat_id
  L4_2 = L4_2 == A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A0_2._mat_id
  L4_2 = L4_2 == A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_select_count
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_select_count
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L0_1.update_single_selection = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 0
  if A1_2 ~= nil then
    L3_2 = A0_2._mat_id
    L2_2 = A1_2[L3_2]
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_checked
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil and 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = L2_2 ~= nil and 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_select_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_1
  L6_2 = L2_2 or L6_2
  if not L2_2 then
    L6_2 = 0
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.update_multi_selection = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.CupID
  A0_2._mat_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.CupName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_show_mat_name
  L2_2(L3_2, L4_2)
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
  L5_2 = "Cup."
  L6_2 = tostring
  L7_2 = A1_2.CupID
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_cup_item_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ID
  A0_2._mat_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.IceName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_show_mat_name
  L2_2(L3_2, L4_2)
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
  L5_2 = "Ice."
  L6_2 = tostring
  L7_2 = A1_2.ID
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_ice_item_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2.ID
  A0_2._mat_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.IngredientName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_show_mat_name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tag_list
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A1_2.IncludeTagList
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L2_1
    L10_2 = L9_2
    L9_2 = L9_2.GetTagData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_tag_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_tag_list
    L9_2 = L8_2
    L8_2 = L8_2.get_panel_by_index
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.enable_tutorial
    L11_2 = A0_2._mat_id
    L12_2 = L7_2
    L9_2(L10_2, L11_2, L12_2)
  end
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
  L7_2 = A1_2.ID
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_ingredients_item_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.DecorationID
  A0_2._mat_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.DecorationName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_show_mat_name
  L2_2(L3_2, L4_2)
end
L0_1._setup_decos_item_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  if L1_2 then
    L1_2 = A0_2._owner
    L1_2 = L1_2.receive_command
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.new
      L2_2 = G
      L2_2 = L2_2.DrinkMakerBartendCommand
      L1_2 = L1_2(L2_2)
      L3_2 = L1_2
      L2_2 = L1_2.set_data
      L4_2 = A0_2._mat_type
      L4_2 = L3_1[L4_2]
      L5_2 = A0_2._mat_id
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.receive_command
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root_clicked = L4_1
return L0_1
