local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.PhotoGraphFreeStyleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraOptions.PhotoGraphFreeStyleItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = "PhotoGraph_Title_FreeStyle"
L2_1 = "SpriteOutput/CameraIcon/CrameraTab/TabAct.png"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PhotoGraphIdleShowPanel"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._idle_show_datas = L3_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._idle_show_datas = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_fs_data
  L1_2(L2_2)
end
L3_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_fs_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_fs_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_title_icon
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_in_idle_show_state
  L1_2 = L1_2(L2_2)
  A0_2._is_in_idle_show = L1_2
  L1_2 = A0_2._is_in_idle_show
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._register_idle_show_finish_callback
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_fs_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_root
      L3_2 = L2_2
      L2_2 = L2_2.SetChecked
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L3_1.get_cur_fs_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = L0_1.FreeStyleConfig
  L1_2 = L1_2(L2_2)
  A0_2._idle_show_datas = L1_2
end
L3_1._load_fs_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.CurFreeStyleKey
  A0_2._cur_idle_show_key = L1_2
  L1_2 = A0_2._state
  L2_2 = L3_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_idle_show_list
    L1_2(L2_2)
    L1_2 = A0_2._is_in_idle_show
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_btn_idle_show_state
      L1_2(L2_2)
    end
  end
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_entity
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.PhotoGraphUtils
    L2_2 = L2_2.is_in_idle_show
    L3_2 = L1_2
    return L2_2(L3_2)
  end
end
L3_1._check_in_idle_show_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_fs_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._idle_show_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_fs_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._setup_idle_show_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L3_2.UserObjectData = nil
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PhotoGraphFreeStyleItemPanel
    L8_2 = G
    L8_2 = L8_2.PhotoGraphFreeStyleItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._idle_show_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.set_data
  L8_2 = L5_2
  L9_2 = A2_2 + 1
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_title
  L8_2 = L5_2.Name
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_icon
  L8_2 = L5_2.SpritePath
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_handler
  L8_2 = A0_2._on_idle_show_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._is_enable_idle_show
  L6_2 = L6_2(L7_2)
  L6_2 = not L6_2
  L7_2 = L5_2 or L7_2
  if L5_2 then
    L7_2 = A0_2._cur_idle_show_key
    if L7_2 then
      L7_2 = A0_2._cur_idle_show_key
      L8_2 = L5_2.Key
      L7_2 = L7_2 == L8_2
    end
  end
  if L7_2 then
    A0_2._cur_idle_show_panel = L4_2
    L9_2 = L4_2
    L8_2 = L4_2.set_state
    L10_2 = L6_2
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
  else
    L9_2 = L4_2
    L8_2 = L4_2.set_state
    L10_2 = L6_2 or L10_2
    if not L6_2 then
      L10_2 = A0_2._is_in_idle_show
    end
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
  end
  return L3_2
end
L3_1._on_fs_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_entity
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.PhotoGraphUtils
    L2_2 = L2_2.is_allow_idle_show
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.PhotoGraphCheckCanIdleShowResult
    L3_2 = L3_2.OK
    L2_2 = L2_2 == L3_2
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L3_1._is_enable_idle_show = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._get_entity
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.PhotoGraphUtils
    L5_2 = L5_2.is_in_idle_show
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = G
      L5_2 = L5_2.NotifyManager
      L5_2 = L5_2.notify
      L6_2 = G
      L6_2 = L6_2.CS
      L6_2 = L6_2.NotifyType
      L6_2 = L6_2.UIPileToastMessageTextID
      L7_2 = "UIText_PhotoGraph_Forbid_Change_Idleshow"
      L5_2(L6_2, L7_2)
      return
    end
    L5_2 = G
    L5_2 = L5_2.PhotoGraphUtils
    L5_2 = L5_2.update_allow_idle_show
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = G
    L5_2 = L5_2.PhotoGraphUtils
    L5_2 = L5_2.is_allow_idle_show
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.PhotoGraphCheckCanIdleShowResult
    L6_2 = L6_2.OK
    if L5_2 == L6_2 then
      L6_2 = G
      L6_2 = L6_2.PhotoGraphUtils
      L6_2 = L6_2.trigger_idleshow
      L7_2 = L4_2
      L8_2 = A2_2
      L6_2(L7_2, L8_2)
      L7_2 = A0_2
      L6_2 = A0_2._register_idle_show_finish_callback
      L6_2(L7_2)
      L6_2 = A1_2.Key
      L0_1.CurFreeStyleKey = L6_2
      A0_2._is_in_idle_show = true
      L7_2 = A0_2
      L6_2 = A0_2._refresh
      L6_2(L7_2)
    else
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.PhotoGraphCheckCanIdleShowResult
      L6_2 = L6_2.AnimatorParamDisable
      if L5_2 == L6_2 then
        L6_2 = G
        L6_2 = L6_2.NotifyManager
        L6_2 = L6_2.notify
        L7_2 = G
        L7_2 = L7_2.CS
        L7_2 = L7_2.NotifyType
        L7_2 = L7_2.UIPileToastMessageTextID
        L8_2 = "UIText_PhotoGraph_Forbid_Idleshow"
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L3_1._on_idle_show_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_entity
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.PhotoGraphUtils
    L2_2 = L2_2.register_idleshow_end_callback
    L3_2 = L1_2
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_idle_show_finish
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  end
end
L3_1._register_idle_show_finish_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._is_in_idle_show = false
  L1_2 = A0_2._state
  L2_2 = L3_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
end
L3_1._on_idle_show_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = "SpriteOutput/CameraIcon/CrameraTab/TabAct.png"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon_unselect
  L4_2 = "SpriteOutput/CameraIcon/CrameraTab/TabAct.png"
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_tab_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CurrentPlayingTeamMember
    return L2_2
  end
end
L3_1._get_entity = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_idle_show_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_idle_show_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_state
    L3_2 = false
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1._show_btn_idle_show_state = L4_1
return L3_1
