local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerMixTagDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendQuantifyTagPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendQuantifyTagPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._last_quantity = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_tag_detail
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_tag_detail
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._tag = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_quantity
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_tag
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_tag_type_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = DrinkMakerTagType2Name
  L7_2 = A1_2.QuantifyType
  L7_2 = #L7_2
  L6_2 = L6_2[L7_2]
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_tag_icon
  L7_2 = A1_2.IconPath
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_color_items
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._enable_tag_detail
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
  L6_2 = L6_2.node_negative_color_item
  L6_2 = L6_2[1]
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.QuantifyType
  L7_2 = #L7_2
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
  L6_2 = L6_2.node_negative_color_item
  L6_2 = L6_2[2]
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.QuantifyType
  L7_2 = #L7_2
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
  L6_2 = L6_2.node_positive_color_item
  L6_2 = L6_2[1]
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.QuantifyType
  L7_2 = #L7_2
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
  L6_2 = L6_2.node_positive_color_item
  L6_2 = L6_2[2]
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.QuantifyType
  L7_2 = #L7_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._enable_slider_anim
  if not L2_2 then
    return
  end
  L2_2 = A0_2._last_quantity
  L3_2 = A0_2._target_quantity
  L4_2 = A0_2._last_quantity
  L3_2 = L3_2 - L4_2
  L3_2 = A1_2 * L3_2
  L2_2 = L2_2 + L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_slider_value
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.play_slider_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._enable_slider_anim = false
  L1_2 = A0_2._target_quantity
  A0_2._last_quantity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._target_quantity
  L1_2(L2_2, L3_2)
end
L0_1.stop_slider_anim = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_quantify_tag_detail
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._tag
  L3_2 = L3_2.QuantifyType
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EventTriggerListener
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_tag_detail
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.OnEnterTrigger = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_tag_detail
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.OnExitTrigger = L2_2
end
L0_1._enable_tag_detail = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    A0_2._target_quantity = A1_2
    L3_2 = A0_2._last_quantity
    if A1_2 ~= L3_2 then
      A0_2._enable_slider_anim = true
    end
  else
    A0_2._target_quantity = A1_2
    A0_2._last_quantity = A1_2
    A0_2._enable_slider_anim = false
    L4_2 = A0_2
    L3_2 = A0_2._set_slider_value
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_color_items = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_fill_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 * 1.0
    L7_2 = A1_2 - L7_2
    if L5_2 < 0 then
      L7_2 = 1 - L7_2
    else
      L7_2 = L7_2 + 1
    end
    L8_2 = math
    L8_2 = L8_2.max
    L9_2 = 0.0
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
    L8_2 = math
    L8_2 = L8_2.min
    L9_2 = L7_2
    L10_2 = 1.0
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
    L6_2.value = L7_2
  end
end
L0_1._set_slider_value = L1_1
return L0_1
