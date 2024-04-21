local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerQuantifyTagDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerMixTagDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTagPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._is_tag_detail_enabled = false
  A0_2._quantify_tag_detail_panel = nil
  A0_2._mix_tag_detail_panel = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
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
    L0_3 = A0_2._is_tag_detail_enabled
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_tag_detail
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._is_tag_detail_enabled
    if L0_3 then
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
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._on_tag_click_callback = A1_2
  A0_2._on_tag_click_callback_owner = A2_2
end
L0_1.register_on_tag_click_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._tag = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._tag
  L4_2 = L4_2.TagName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_special_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._tag
  L4_2 = L4_2.TagName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tag
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._tag
  L4_2 = L4_2.IsMixTag
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_special_tag
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._tag
  L4_2 = L4_2.IsMixTag
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_common
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._tag
  L4_2 = L4_2.IsMixTag
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._tag
  L4_2 = L4_2.IsMixTag
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._on_tag_click_callback
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = true
    L2_2(L3_2, L4_2)
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
  L5_2 = A1_2.TagID
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tag
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBarUtils
  L3_2 = L3_2.lock_name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_common
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_special
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.show_lock = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_tag_detail_enabled = true
  L1_2 = A0_2._tag
  L1_2 = L1_2.QuantifyType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DrinkMakerQuantifyTagType
  L2_2 = L2_2.None
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_quantify_detail_panel
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._tag
    L4_2 = L4_2.QuantifyType
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._tag
    L1_2 = L1_2.IsMixTag
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._get_mix_detail_panel
      L1_2 = L1_2(L2_2)
      L3_2 = L1_2
      L2_2 = L1_2.setup_view
      L4_2 = A0_2._tag
      L2_2(L3_2, L4_2)
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EventTriggerListener
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tag_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.enable_tag_detail = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = A0_2._quantify_tag_detail_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._quantify_tag_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L1_2 = A0_2._quantify_tag_detail_panel
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.prefab_tag_detail
    L2_2 = L2_2.MultiPrefabList
    L2_2 = L2_2[0]
    L4_2 = A0_2
    L3_2 = A0_2.instantiate_object
    L5_2 = L2_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.prefab_tag_detail
    L6_2 = L6_2.transform
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.DrinkMakerQuantifyTagDetailPanel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerQuantifyTagDetailPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2._quantify_tag_detail_panel = L4_2
    L4_2 = A0_2._quantify_tag_detail_panel
    L5_2 = L4_2
    L4_2 = L4_2.bind
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L1_2 = A0_2._quantify_tag_detail_panel
  end
  L2_2 = A0_2._mix_tag_detail_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._mix_tag_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  return L1_2
end
L0_1._get_quantify_detail_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = A0_2._mix_tag_detail_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._mix_tag_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L1_2 = A0_2._mix_tag_detail_panel
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.prefab_tag_detail
    L2_2 = L2_2.MultiPrefabList
    L2_2 = L2_2[1]
    L4_2 = A0_2
    L3_2 = A0_2.instantiate_object
    L5_2 = L2_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.prefab_tag_detail
    L6_2 = L6_2.transform
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.DrinkMakerMixTagDetailPanel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerMixTagDetailPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2._mix_tag_detail_panel = L4_2
    L4_2 = A0_2._mix_tag_detail_panel
    L5_2 = L4_2
    L4_2 = L4_2.bind
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L1_2 = A0_2._mix_tag_detail_panel
  end
  L2_2 = A0_2._quantify_tag_detail_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._quantify_tag_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  return L1_2
end
L0_1._get_mix_detail_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_tag_click_callback
  if L1_2 then
    L1_2 = A0_2._on_tag_click_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_tag_click_callback
      L2_2 = A0_2._on_tag_click_callback_owner
      L3_2 = A0_2._tag_row
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_root_clicked = L1_1
return L0_1
