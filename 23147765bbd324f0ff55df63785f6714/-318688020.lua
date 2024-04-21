local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Phone.AppIconItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ScheduleModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "Community_Activity_FuncEntrance_ID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = 1201
L3_1 = 1203
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "AppIconItemPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_handler
    L3_3 = A0_2._binder
    L3_3 = L3_3.btn
    L3_3 = L3_3.gameObject
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Automatic
  L1_2.mode = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L2_2.navigation = L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._data = A1_2
  A0_2._custom_callback = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.red_dot
  return L1_2
end
L4_1.get_reddot_transform = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L2_2 = L1_2
    L1_2 = L1_2.is_bound
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._data
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = A0_2._data
  L4_2 = L4_2.FuncIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.FuncName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._in_schedule
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._invalid_toast
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.IsEmpty
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.world_txt_name
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.world_txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._data
    L3_2 = L3_2.FirstWorldText
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mask_icon
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AssetLoader
  L2_2 = L2_2.SyncLoadAsset
  L3_2 = A0_2._data
  L3_2 = L3_2.FuncIconPath
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Sprite
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2.sprite = L2_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = A0_2._data
  L3_2 = L3_2.RedDot
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._in_schedule
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._invalid_toast
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.IsEmpty
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.ID
  L2_2 = L1_1
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.OperationModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.record_community_activity_seen
    L1_2(L2_2)
  end
  L1_2 = A0_2._custom_callback
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = A0_2._data
    L2_2 = L2_2.GotoID
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2._data
      L2_2 = L2_2.ID
      L3_2 = L1_1
      if L2_2 == L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.SDKLuaReportAdapter
        L2_2 = L2_2.ReportUIButtonClick
        L3_2 = A0_2._owner
        L3_2 = L3_2.__name
        L4_2 = A0_2.__name
        L5_2 = "CommunityActivityBtn"
        L6_2 = A0_2._owner
        L6_2 = L6_2.guid
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = A0_2._data
        L2_2 = L2_2.ID
        L3_2 = L2_1
        if L2_2 == L3_2 then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.SDKLuaReportAdapter
          L2_2 = L2_2.ReportUIButtonClick
          L3_2 = A0_2._owner
          L3_2 = L3_2.__name
          L4_2 = A0_2.__name
          L5_2 = "OfficialCommunityBtn"
          L6_2 = A0_2._owner
          L6_2 = L6_2.guid
          L2_2(L3_2, L4_2, L5_2, L6_2)
        else
          L2_2 = A0_2._data
          L2_2 = L2_2.ID
          L3_2 = L3_1
          if L2_2 == L3_2 then
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.SDKLuaReportAdapter
            L2_2 = L2_2.ReportUIButtonClick
            L3_2 = A0_2._owner
            L3_2 = L3_2.__name
            L4_2 = A0_2.__name
            L5_2 = "VersionHighlightsBtn"
            L6_2 = A0_2._owner
            L6_2 = L6_2.guid
            L2_2(L3_2, L4_2, L5_2, L6_2)
          end
        end
      end
    end
  else
    L1_2 = A0_2._custom_callback
    L2_2 = A0_2._data
    L2_2 = L2_2.GotoID
    L1_2(L2_2)
  end
end
L4_1._on_clicked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.ID
  L2_2 = L1_1
  if L1_2 ~= L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.OperationModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.in_community_activity_schedule
  return L1_2(L2_2)
end
L4_1._in_schedule = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.NotInScheduleToast
  return L1_2
end
L4_1._invalid_toast = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_handler = A2_2
end
L4_1.register_select_callback = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  return L1_2
end
L4_1.get_first_selected_btn = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  L4_2 = NavigationDirection
  L4_2 = L4_2.Up
  if A1_2 == L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UINavigationDirection
    L3_2 = L4_2.Up
  else
    L4_2 = NavigationDirection
    L4_2 = L4_2.Down
    if A1_2 == L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UINavigationDirection
      L3_2 = L4_2.Down
    else
      L4_2 = NavigationDirection
      L4_2 = L4_2.Left
      if A1_2 == L4_2 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.UINavigationDirection
        L3_2 = L4_2.Left
      else
        L4_2 = NavigationDirection
        L4_2 = L4_2.Right
        if A1_2 == L4_2 then
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.Client
          L4_2 = L4_2.UINavigationDirection
          L3_2 = L4_2.Right
        end
      end
    end
  end
  if L3_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UINavigationUtils
    L4_2 = L4_2.SetAutoNavigationAndOverride
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn
    L6_2 = L3_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L4_1.setup_navigation = L5_1
return L4_1
