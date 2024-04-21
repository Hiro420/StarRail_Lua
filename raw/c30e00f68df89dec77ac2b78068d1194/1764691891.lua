local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DTransition"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DManager"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.UILayer
L1_1 = L1_1.Page
L2_1 = "Canvas3D"
function L3_1()
  local L0_2, L1_2
  L0_2 = new
  L1_2 = G
  L1_2 = L1_2.List
  L0_2 = L0_2(L1_2)
  L0_1._ui3d_pages = L0_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_CameraManager
  L0_1._camera_Mgr = L0_2
  L0_1._scene_unloaded = false
  L0_1._scene_streaming_promise = nil
end
L0_1.init = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.clear_ui3d_stack
  L0_2()
  L0_1._ui3d_pages = nil
end
L0_1.dispose = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  repeat
    L0_2 = L0_1._top_ui3d
    L0_2 = L0_2()
    if L0_2 ~= nil then
      L2_2 = L0_2
      L1_2 = L0_2.is_destroyed
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = L0_2
        L1_2 = L0_2.destroy
        L1_2(L2_2)
      end
    end
    L1_2 = L0_1._ui3d_pages
    L2_2 = L1_2
    L1_2 = L1_2.Remove
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = L0_1._ui3d_pages
    L2_2 = L1_2
    L1_2 = L1_2.Count
    L1_2 = L1_2(L2_2)
  until L1_2 == 0
end
L0_1.clear_ui3d_stack = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._top_ui3d
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.GetClass
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 == A0_2 then
      return L1_2
    end
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L3_2(L4_2)
  return L2_2
end
L0_1.get_controller = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1._ui3d_root
  if L0_2 == nil then
    L0_2 = CS
    L0_2 = L0_2.UnityEngine
    L0_2 = L0_2.GameObject
    L0_2 = L0_2.Find
    L1_2 = L2_1
    L0_2 = L0_2(L1_2)
    L0_1._ui3d_root = L0_2
  end
  L0_2 = L0_1._ui3d_root
  L0_2 = L0_2.transform
  return L0_2
end
L0_1.get_ui3d_root = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1._ui3d_pages
  if L0_2 == nil then
    L0_2 = 0
    return L0_2
  end
  L0_2 = L0_1._ui3d_pages
  L1_2 = L0_2
  L0_2 = L0_2.Count
  return L0_2(L1_2)
end
L0_1.get_ui3d_stack_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "handle_show_ui2d"
  L1_2(L2_2)
  if A0_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_ui_layer
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1
    if L1_2 == L2_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = A0_2
  L1_2 = A0_2.get_ui3d_controller
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L0_1._top_ui3d
  L2_2 = L2_2()
  if L2_2 ~= L1_2 then
    L3_2 = new
    L4_2 = G
    L4_2 = L4_2.UI3DTransition
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.execute_show
    L6_2 = L2_2
    L7_2 = L1_2
    L8_2 = L0_1._top_ui2d
    L8_2 = L8_2()
    L9_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L6_2 = L4_2
    L5_2 = L4_2.ThenLuaAction
    function L7_2()
      local L0_3, L1_3
      L0_3 = L1_2
      L1_3 = L0_3
      L0_3 = L0_3.apply_camera
      L0_3(L1_3)
      L0_3 = L1_2
      L1_3 = L0_3
      L0_3 = L0_3.on_view_set
      L0_3(L1_3)
      L0_3 = L0_1._unload_scene_if_need
      L0_3()
      L0_3 = L0_1._on_top_ui3d_change
      L0_3()
    end
    L5_2(L6_2, L7_2)
  end
  L3_2 = L0_1._add_ui2d_linked_ui3d
  L4_2 = A0_2
  L3_2(L4_2)
  L4_2 = L1_2
  L3_2 = L1_2.is_loaded
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.on_after_ui3d_loaded
    L3_2(L4_2)
  else
    L4_2 = L1_2
    L3_2 = L1_2.load_view
    L5_2 = L1_2.config
    L5_2 = L5_2.is_async_load
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.on_after_ui3d_loaded
      L0_3(L1_3)
    end
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.handle_show_ui2d = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_ui_layer
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1
    if L1_2 == L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2.get_ui3d_controller
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L0_1._next_ui3d
  L2_2 = L2_2()
  if L2_2 ~= L1_2 then
    L3_2 = L0_1._need_restore_scene
    L3_2 = L3_2()
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.join_exit
      L5_2 = L0_1._restore_scene
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
    L3_2 = new
    L4_2 = G
    L4_2 = L4_2.UI3DTransition
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.execute_exit
    L6_2 = L1_2
    L7_2 = L0_1._next_ui3d
    L7_2 = L7_2()
    L8_2 = A0_2
    L9_2 = L0_1._next_ui2d
    L9_2 = L9_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    if L2_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.ThenLuaAction
      function L7_2()
        local L0_3, L1_3
        L0_3 = L2_2
        L1_3 = L0_3
        L0_3 = L0_3.apply_camera
        L0_3(L1_3)
      end
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1.handle_exit_ui2d = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  if A0_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_ui_layer
    L1_2 = L1_2(L2_2)
    L2_2 = L1_1
    if L1_2 == L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = L0_1._remove_ui2d_linked_ui3d
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.handle_post_exit_ui2d = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.reload_environment_profile
  L0_2()
  L0_2 = L0_1._update_camera_state
  L0_2()
  L0_2 = L0_1._need_restore_scene
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = L0_1._restore_scene
    L0_2()
  end
end
L0_1._on_top_ui3d_change = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._top_ui3d
  L0_2 = L0_2()
  if L0_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UI3DUtilities
    L1_2 = L1_2.ResetEnvironmentProfile
    L1_2()
    L0_1._current_environment_profile_path = nil
    return
  end
  L2_2 = L0_2
  L1_2 = L0_2.get_environment_profile_path
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1._current_environment_profile_path
  if L1_2 == L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UI3DUtilities
  L2_2 = L2_2.ActiveEnvironmentProfile
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L0_1._current_environment_profile_path = L1_2
  end
  L3_2 = L0_2
  L2_2 = L0_2.on_reload_environment
  L2_2(L3_2)
end
L0_1.reload_environment_profile = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L0_1._top_ui3d
  L0_2 = L0_2()
  L1_2 = L0_1._camera_Mgr
  if L0_2 ~= nil then
    L3_2 = L0_2
    L2_2 = L0_2.get_camera
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L2_2 = L0_2.config
      L2_2 = L2_2.use_global_camera
      if L2_2 then
        L3_2 = L1_2
        L2_2 = L1_2.SetActiveCamera
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.GlobalVars
        L4_2 = L4_2.s_UI3DCamera
        L2_2(L3_2, L4_2)
      else
        L3_2 = L1_2
        L2_2 = L1_2.SetActiveCamera
        L5_2 = L0_2
        L4_2 = L0_2.get_camera
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_AudioManager
      L3_2 = L2_2
      L2_2 = L2_2.SetListnerMode
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.AudioListenerMode
      L4_2 = L4_2.Camera
      L2_2(L3_2, L4_2)
  end
  else
    L3_2 = L1_2
    L2_2 = L1_2.SetActiveCamera
    L4_2 = nil
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.StopUI3DCamera
    L2_2(L3_2)
  end
end
L0_1._update_camera_state = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1._scene_unloaded
  if L0_2 then
    return
  end
  L0_2 = L0_1._top_ui3d
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L1_2 = L0_2.config
    L1_2 = L1_2.unload_scene
    if L1_2 then
      L1_2 = L0_1._unload_scene
      L1_2()
    end
  end
end
L0_1._unload_scene_if_need = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.UI3DUtilities
  L0_2 = L0_2.UnloadScene
  L0_2()
  L0_1._scene_unloaded = true
end
L0_1._unload_scene = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.ImportCsToLua
  L0_2 = L0_2.RPG_Client_Promise
  L0_2 = L0_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DUtilities
  L1_2 = L1_2.RestoreScene
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_2.CurState
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.Promises
    L1_3 = L1_3.PromiseState
    L1_3 = L1_3.Pending
    if L0_3 == L1_3 then
      L0_3 = L0_2
      L1_3 = L0_3
      L0_3 = L0_3.Resolve
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
  L0_1._scene_unloaded = false
  return L0_2
end
L0_1._restore_scene = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1._scene_unloaded
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L0_1._next_ui3d
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end
L0_1._need_restore_scene = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_ui3d_controller
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L0_1._find_ui3d_index
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 < 0 then
    return
  end
  L3_2 = L0_1._ui3d_pages
  L4_2 = L3_2
  L3_2 = L3_2.RemoveAt
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.unlink_ui2d
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.linked_ui2d_count
  L3_2 = L3_2(L4_2)
  if L3_2 == 0 then
    L4_2 = L1_2
    L3_2 = L1_2.destroy
    L3_2(L4_2)
    L3_2 = L0_1._top_ui3d
    L3_2 = L3_2()
    if L3_2 == L1_2 then
      return
    end
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.set_active
      L6_2 = true
      L4_2(L5_2, L6_2)
      L5_2 = L3_2
      L4_2 = L3_2.apply_camera
      L4_2(L5_2)
    end
    L4_2 = L0_1._on_top_ui3d_change
    L4_2()
  end
end
L0_1._remove_ui2d_linked_ui3d = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_ui3d_controller
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.link_ui2d
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1._ui3d_pages
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._add_ui2d_linked_ui3d = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.get_ui3d_controller
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.linked_ui_idx
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == -1 then
    L3_2 = -1
    return L3_2
  end
  L3_2 = -1
  L4_2 = 0
  L5_2 = L0_1._ui3d_pages
  L6_2 = L5_2
  L5_2 = L5_2.Count
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L0_1._ui3d_pages
    L9_2 = L8_2
    L8_2 = L8_2.Get
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 == L1_2 then
      L3_2 = L3_2 + 1
      if L3_2 == L2_2 then
        return L7_2
      end
    end
  end
  L4_2 = -1
  return L4_2
end
L0_1._find_ui3d_index = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._ui3d_pages
  if L0_2 ~= nil then
    L0_2 = L0_1._ui3d_pages
    L1_2 = L0_2
    L0_2 = L0_2.Count
    L0_2 = L0_2(L1_2)
    if L0_2 ~= 0 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = L0_1._ui3d_pages
  L1_2 = L0_2
  L0_2 = L0_2.RemoveAt
  L2_2 = L0_1._ui3d_pages
  L3_2 = L2_2
  L2_2 = L2_2.Count
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  L0_2(L1_2, L2_2)
end
L0_1._remove_top = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._ui3d_pages
  if L0_2 ~= nil then
    L0_2 = L0_1._ui3d_pages
    L1_2 = L0_2
    L0_2 = L0_2.Count
    L0_2 = L0_2(L1_2)
    if L0_2 ~= 0 then
      goto lbl_11
    end
  end
  L0_2 = nil
  do return L0_2 end
  ::lbl_11::
  L0_2 = L0_1._ui3d_pages
  L1_2 = L0_2
  L0_2 = L0_2.Get
  L2_2 = L0_1._ui3d_pages
  L3_2 = L2_2
  L2_2 = L2_2.Count
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  return L0_2(L1_2, L2_2)
end
L0_1._top_ui3d = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1._ui3d_pages
  if L0_2 ~= nil then
    L0_2 = L0_1._ui3d_pages
    L1_2 = L0_2
    L0_2 = L0_2.Count
    L0_2 = L0_2(L1_2)
    if not (L0_2 < 2) then
      goto lbl_11
    end
  end
  L0_2 = nil
  do return L0_2 end
  ::lbl_11::
  L0_2 = L0_1._ui3d_pages
  L1_2 = L0_2
  L0_2 = L0_2.Get
  L2_2 = L0_1._ui3d_pages
  L3_2 = L2_2
  L2_2 = L2_2.Count
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 2
  return L0_2(L1_2, L2_2)
end
L0_1._next_ui3d = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_UIManager
  L1_2 = L0_2
  L0_2 = L0_2.TopPage
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.GetType
    L1_2 = L1_2(L2_2)
    L2_2 = typeof
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.LuaUIController
    L2_2 = L2_2(L3_2)
    if L1_2 == L2_2 then
      goto lbl_22
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_22::
  L1_2 = L0_2.LuaTable
  return L1_2
end
L0_1._top_ui2d = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_UIManager
  L1_2 = L0_2
  L0_2 = L0_2.NextPage
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.GetType
    L1_2 = L1_2(L2_2)
    L2_2 = typeof
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.LuaUIController
    L2_2 = L2_2(L3_2)
    if L1_2 == L2_2 then
      goto lbl_22
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_22::
  L1_2 = L0_2.LuaTable
  return L1_2
end
L0_1._next_ui2d = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_ui3d_controller
  return L1_2(L2_2)
end
L0_1._get_ui3d_from_ui2d = L3_1
return L0_1
