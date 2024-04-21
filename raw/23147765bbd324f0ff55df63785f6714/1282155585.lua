local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooBreedDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBreedDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = 1
L3_1 = 2
L4_1 = "UIText_ActivitySpaceZoo_ChooseParent_FullToast"
L5_1 = "UIText_ActivitySpaceZoo_ChooseSSRToast"
L6_1 = "9614"
L7_1 = 16
L8_1 = "9619"
L9_1 = "SpaceZoo_Phase2TutorialCats"
L10_1 = "9620"
L11_1 = "SpaceZoo_Phase3TutorialCats"
L12_1 = {}
L13_1 = {}
L14_1 = "SpaceZooTutorial9628"
L15_1 = 3
L13_1[1] = L14_1
L13_1[2] = L15_1
L12_1[10002] = L13_1
L13_1 = {}
L14_1 = "SpaceZooTutorial9629"
L15_1 = 2
L13_1[1] = L14_1
L13_1[2] = L15_1
L12_1[10007] = L13_1
L13_1 = "SpaceZooKillTutorial9629"
L14_1 = "%"
L15_1 = 31
L16_1 = "RuanMadeCakeChooseDialog_FadeIn"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooBreedDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  A0_2._cur_select_cat_data = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L9_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  A0_2._phase_2_cats = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L11_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  A0_2._phase_3_cats = L1_2
end
L0_1.ctor = L17_1
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.SpaceZooData
  A0_2._space_zoo_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooLastBreedCats
  A0_2._breed_cats_pref = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_slot_data
  L1_2(L2_2)
end
L0_1.init = L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L17_1
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L17_1
function L17_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_select_callback
  L3_2 = A0_2._on_item_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_select_checker
  L3_2 = A0_2._is_cat_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_disable_cat_checker
  L3_2 = A0_2._is_cat_disable
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_select_cats
  L3_2 = A0_2._selected_cat
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_callback
  L3_2 = A0_2._on_collection_car_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_btn_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_btn_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = L15_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L16_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_ui_animation_event
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L17_1
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = L13_1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_breed_cats
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooNewCats
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1._on_dispose = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_can_refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_collect_panel_active
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_task_unlock
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_tutorial_custom_string
  L1_2(L2_2)
end
L0_1._setup_view = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._space_zoo_data
  L1_2 = L1_2.Cats
  L1_2 = L1_2.Count
  L2_2 = L7_1
  if L1_2 >= L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_tutorial_cat
  L3_2 = A0_2._phase_2_cats
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L8_1
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_tutorial_cat
  L3_2 = A0_2._phase_3_cats
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L10_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._notify_task_unlock = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooCollectCat
  L1_2 = L12_1[L1_2]
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_collection_reach_count
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2[2]
  if L2_2 >= L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.trigger_custom_string
    L4_2 = L1_2[1]
    L3_2(L4_2)
  end
end
L0_1._notify_tutorial_custom_string = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0
  L2_2 = A0_2._space_zoo_data
  L3_2 = L2_2
  L2_2 = L2_2.GetSpecialEventData
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.SpaceZooCollectCat
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return L1_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.GetSpecialCatTipFeature
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = A0_2._left_slot_cat
    if L9_2 ~= nil then
      L9_2 = A0_2._left_slot_cat
      L9_2 = L9_2.Features
      L10_2 = L9_2
      L9_2 = L9_2.ContainsValue
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L1_2 = L1_2 + 1
    end
    else
      L9_2 = A0_2._right_slot_cat
      if L9_2 ~= nil then
        L9_2 = A0_2._right_slot_cat
        L9_2 = L9_2.Features
        L10_2 = L9_2
        L9_2 = L9_2.ContainsValue
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L1_2 = L1_2 + 1
        end
      end
    end
  end
  return L1_2
end
L0_1._get_collection_reach_count = L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooCollectCat
  if L2_2 == 0 then
    L3_2 = false
    return L3_2
  end
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.IntValue
    if L2_2 == L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._is_tutorial_cat = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._breed_cats_pref
  L2_2 = L2_1
  L2_2 = L2_2 - 1
  L3_2 = A0_2._left_slot_cat
  if L3_2 ~= nil then
    L3_2 = A0_2._left_slot_cat
    L3_2 = L3_2.UniqueID
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = 0
  ::lbl_12::
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._breed_cats_pref
  L2_2 = L3_1
  L2_2 = L2_2 - 1
  L3_2 = A0_2._right_slot_cat
  if L3_2 ~= nil then
    L3_2 = A0_2._right_slot_cat
    L3_2 = L3_2.UniqueID
    if L3_2 then
      goto lbl_24
    end
  end
  L3_2 = 0
  ::lbl_24::
  L1_2[L2_2] = L3_2
end
L0_1._setup_breed_cats = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._selected_cat = L1_2
  L1_2 = A0_2._breed_cats_pref
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = L2_1
  L3_2 = L3_2 - 1
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
  L6_2 = L3_1
  L6_2 = L6_2 - 1
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2._space_zoo_data
  L7_2 = L6_2
  L6_2 = L6_2.GetCatData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2._right_slot_cat = L6_2
  L8_2 = A0_2
  L7_2 = A0_2._init_select_cat
  L7_2(L8_2)
end
L0_1._init_slot_data = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._left_slot_cat
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SpaceZooNewCats
    L2_2 = L1_2
    L1_2 = L1_2.Remove
    L3_2 = A0_2._left_slot_cat
    L3_2 = L3_2.UniqueID
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._right_slot_cat
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SpaceZooNewCats
    L2_2 = L1_2
    L1_2 = L1_2.Remove
    L3_2 = A0_2._right_slot_cat
    L3_2 = L3_2.UniqueID
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._selected_cat
  L2_2 = L2_1
  L3_2 = A0_2._left_slot_cat
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._selected_cat
  L2_2 = L3_1
  L3_2 = A0_2._right_slot_cat
  L1_2[L2_2] = L3_2
end
L0_1._init_select_cat = L17_1
function L17_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L17_1
function L17_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm_click = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_can_refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_ui_animation_event = L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooNewCats
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.UniqueID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_cat_disable
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_remove_cat_from_slot
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_add_cat_to_slot
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
      return
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.select_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_select_cats
  L4_2 = A0_2._selected_cat
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_breed_cats
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.collection_cat_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.collection_cat_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_feature_reached
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._notify_tutorial_custom_string
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooDataRefresh
  L2_2(L3_2)
end
L0_1._on_item_click = L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._left_slot_cat
  if L2_2 == A1_2 then
    A0_2._left_slot_cat = nil
    L2_2 = A0_2._selected_cat
    L3_2 = L2_1
    L4_2 = A0_2._left_slot_cat
    L2_2[L3_2] = L4_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.select_panel
    L3_2 = L2_2
    L2_2 = L2_2.on_select_cat_change
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  else
    L2_2 = A0_2._right_slot_cat
    if L2_2 == A1_2 then
      A0_2._right_slot_cat = nil
      L2_2 = A0_2._selected_cat
      L3_2 = L3_1
      L4_2 = A0_2._right_slot_cat
      L2_2[L3_2] = L4_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.select_panel
      L3_2 = L2_2
      L2_2 = L2_2.on_select_cat_change
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._try_remove_cat_from_slot = L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._left_slot_cat
  if L2_2 == nil then
    A0_2._left_slot_cat = A1_2
    L2_2 = A0_2._selected_cat
    L3_2 = L2_1
    L4_2 = A0_2._left_slot_cat
    L2_2[L3_2] = L4_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.select_panel
    L3_2 = L2_2
    L2_2 = L2_2.on_select_cat_change
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._right_slot_cat
  if L2_2 == nil then
    A0_2._right_slot_cat = A1_2
    L2_2 = A0_2._selected_cat
    L3_2 = L3_1
    L4_2 = A0_2._right_slot_cat
    L2_2[L3_2] = L4_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.select_panel
    L3_2 = L2_2
    L2_2 = L2_2.on_select_cat_change
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._try_add_cat_to_slot = L17_1
function L17_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_resolution
  L1_2(L2_2)
end
L0_1._refresh = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._left_slot_cat
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._right_slot_cat
  L1_2(L2_2, L3_2)
end
L0_1._setup_slot = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooCollectCat
  A0_2._collect_cat_id = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetSpecialEventData
  L3_2 = A0_2._collect_cat_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._special_event_data = L1_2
  L1_2 = A0_2._special_event_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_resolution
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SpaceZooUtils
  L1_2 = L1_2.IsMatchTarget
  L2_2 = A0_2._left_slot_cat
  L3_2 = A0_2._right_slot_cat
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2._special_event_data
    L2_2 = L2_2.Resolution
    if L2_2 then
      goto lbl_37
    end
  end
  L2_2 = 0
  ::lbl_37::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_resolution
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_resolution
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L6_2 = L14_1
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_resolution = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.IsSpecialEventUnlock
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.collection_cat_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.collection_cat_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._set_collect_panel_active = L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._left_slot_cat
  if L2_2 == A1_2 then
    L2_2 = true
    L3_2 = L2_1
    return L2_2, L3_2
  else
    L2_2 = A0_2._right_slot_cat
    if L2_2 == A1_2 then
      L2_2 = true
      L3_2 = L3_1
      return L2_2, L3_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_cat_select = L17_1
function L17_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.IsSpecial
  return L2_2
end
L0_1._is_cat_disable = L17_1
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = L13_1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_resolution
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_task_unlock
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_tutorial_custom_string
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SpaceZooDataRefresh
  L1_2(L2_2)
end
L0_1._on_collection_car_change = L17_1
return L0_1
