local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendQuantifyTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagDisplayPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTagDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.DrinkMakerQuantifyTagType
L2_1 = L2_1.Sweetness
L1_1[1] = L2_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.DrinkMakerQuantifyTagType
L2_1 = L2_1.Acidity
L1_1[2] = L2_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.DrinkMakerQuantifyTagType
L2_1 = L2_1.Texture
L1_1[3] = L2_1
function L2_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._quantify_tag_btns = L1_2
  L1_2 = {}
  A0_2._mix_tag_btns = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_tip_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_quantify_tag_list
  L1_2 = L1_2[1]
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._drink_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_quantify_tags_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_mix_tags_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_btn_navi
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  A0_2._quantify_tag_btns = L2_2
  L2_2 = 1
  L3_2 = L1_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_quantify_tag_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._drink_data
    L10_2 = L9_2
    L9_2 = L9_2.GetQuantifyTagByType
    L11_2 = L1_1[L5_2]
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A0_2._drink_data
    L11_2 = L10_2
    L10_2 = L10_2.GetQuantityByType
    L12_2 = L1_1[L5_2]
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = A1_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = A0_2._quantify_tag_btns
    L9_2 = L6_2
    L8_2 = L6_2.get_root_btn
    L8_2 = L8_2(L9_2)
    L7_2[L5_2] = L8_2
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.value_anim
    L2_2.StartValue = 0
    L2_2 = A0_2._binder
    L2_2 = L2_2.value_anim
    L2_2.EndValue = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.value_anim
    L3_2 = L2_2
    L2_2 = L2_2.SetValueChangeCallback
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_value_ratio_change
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.value_anim
    L3_2 = L2_2
    L2_2 = L2_2.SetFinishCallback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_value_ratio_change_finish
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.value_anim
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
  end
end
L0_1._setup_quantify_tags_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._drink_data
  L3_2 = L2_2
  L2_2 = L2_2.GetAllMixTags
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._mix_tags = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_mix_tag
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._mix_tags
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mix_tags
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._mix_tags
    L1_2 = L1_2[1]
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_mix_tag
    L4_2 = L2_2
    L3_2 = L2_2.safe_set_active
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.enable_tag_detail
    L3_2(L4_2)
    L3_2 = A0_2._mix_tag_btns
    L5_2 = L2_2
    L4_2 = L2_2.get_root_btn
    L4_2 = L4_2(L5_2)
    L3_2[1] = L4_2
  end
end
L0_1._setup_mix_tags_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._quantify_tag_btns
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._mix_tag_btns
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mix_tag_btns
  L1_2 = L1_2[1]
  L2_2 = A0_2._quantify_tag_btns
  L3_2 = A0_2._quantify_tag_btns
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  if L1_2 ~= nil and L2_2 ~= nil then
    L3_2 = nil
    L3_2 = L2_2.navigation
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.Navigation
    L4_2 = L4_2.Mode
    L4_2 = L4_2.Explicit
    L3_2.mode = L4_2
    L3_2.selectOnDown = L1_2
    L2_2.navigation = L3_2
    L3_2 = L1_2.navigation
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.Navigation
    L4_2 = L4_2.Mode
    L4_2 = L4_2.Explicit
    L3_2.mode = L4_2
    L3_2.selectOnUp = L2_2
    L1_2.navigation = L3_2
  end
end
L0_1._setup_btn_navi = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = L1_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_quantify_tag_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.play_slider_anim
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_value_ratio_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = L1_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_quantify_tag_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.stop_slider_anim
    L6_2(L7_2)
  end
end
L0_1._on_value_ratio_change_finish = L2_1
return L0_1
