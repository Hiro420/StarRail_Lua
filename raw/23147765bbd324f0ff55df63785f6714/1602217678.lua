local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RedDot"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Ui.Component.RedDotNormal"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Component.RedDotNormalBinder"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Component.RedDotNew"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Component.RedDotNewBinder"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Component.RedDotNum"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Component.RedDotNumBinder"
L1_1(L2_1)
L1_1 = {}
L1_1.Invalid = 0
L1_1.Normal = 1
L1_1.Number = 2
L1_1.New = 3
L2_1 = {}
L2_1.Invalid = 1
L2_1.Loading = 2
L2_1.Ready = 3
function L3_1(A0_2)
  local L1_2
  A0_2._key = nil
  A0_2._subkey = nil
  A0_2._reddot_new_panel = nil
  L1_2 = L2_1.Invalid
  A0_2._reddot_new_panel_status = L1_2
  A0_2._reddot_normal_panel = nil
  L1_2 = L2_1.Invalid
  A0_2._reddot_normal_panel_status = L1_2
  A0_2._reddot_num_panel = nil
  L1_2 = L2_1.Invalid
  A0_2._reddot_num_panel_status = L1_2
  A0_2._active = true
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.unbind_reddot
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.on_dispose_reddot
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._reddot_new_panel
  if L1_2 then
    L1_2 = A0_2._reddot_new_panel
    L2_2 = L1_2
    L1_2 = L1_2._exit
    L1_2(L2_2)
  end
  L1_2 = A0_2._reddot_normal_panel
  if L1_2 then
    L1_2 = A0_2._reddot_normal_panel
    L2_2 = L1_2
    L1_2 = L1_2._exit
    L1_2(L2_2)
  end
  L1_2 = A0_2._reddot_num_panel
  if L1_2 then
    L1_2 = A0_2._reddot_num_panel
    L2_2 = L1_2
    L1_2 = L1_2._exit
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  A0_2._active = A1_2
end
L0_1._on_owner_active_change = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._key
  if A1_2 == L3_2 then
    L3_2 = A0_2._subkey
    if A2_2 == L3_2 then
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = L1_1.Invalid
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._key
  if L3_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.unregister_reddot
    L5_2 = A0_2._key
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    A0_2._key = nil
    A0_2._subkey = nil
  end
  if A1_2 == nil or A1_2 == "" then
    return
  end
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.register_reddot
  L5_2 = A1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.need_to_refresh
  L3_2(L4_2)
  A0_2._key = A1_2
  A0_2._subkey = A2_2
end
L0_1.bind_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = L1_1.Invalid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._key
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.unregister_reddot
  L3_2 = A0_2._key
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  A0_2._key = nil
  A0_2._subkey = nil
end
L0_1.unbind_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._active
  if L1_2 ~= true then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_reddot_type
  L3_2 = A0_2._key
  L4_2 = A0_2._subkey
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_1.Invalid
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L4_2 = L1_1.Invalid
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_1.Normal
    if L1_2 == L2_2 then
      L2_2 = A0_2._reddot_normal_panel_status
      L3_2 = L2_1.Invalid
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._create
        L4_2 = L1_1.Normal
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._reddot_normal_panel_status
        L3_2 = L2_1.Loading
        if L2_2 == L3_2 then
          return
        else
          L2_2 = A0_2._reddot_normal_panel_status
          L3_2 = L2_1.Ready
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._refresh
            L4_2 = L1_1.Normal
            L2_2(L3_2, L4_2)
          end
        end
      end
    else
      L2_2 = L1_1.Number
      if L1_2 == L2_2 then
        L2_2 = A0_2._reddot_num_panel_status
        L3_2 = L2_1.Invalid
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._create
          L4_2 = L1_1.Number
          L2_2(L3_2, L4_2)
        else
          L2_2 = A0_2._reddot_num_panel_status
          L3_2 = L2_1.Loading
          if L2_2 == L3_2 then
            return
          else
            L2_2 = A0_2._reddot_num_panel_status
            L3_2 = L2_1.Ready
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2._refresh
              L4_2 = L1_1.Number
              L2_2(L3_2, L4_2)
            end
          end
        end
      else
        L2_2 = L1_1.New
        if L1_2 == L2_2 then
          L2_2 = A0_2._reddot_new_panel_status
          L3_2 = L2_1.Invalid
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._create
            L4_2 = L1_1.New
            L2_2(L3_2, L4_2)
          else
            L2_2 = A0_2._reddot_new_panel_status
            L3_2 = L2_1.Loading
            if L2_2 == L3_2 then
              return
            else
              L2_2 = A0_2._reddot_new_panel_status
              L3_2 = L2_1.Ready
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._refresh
                L4_2 = L1_1.New
                L2_2(L3_2, L4_2)
              end
            end
          end
        end
      end
    end
  end
end
L0_1.update = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._debug_check
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = L1_1.Normal
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RedDotNormal
    L5_2 = G
    L5_2 = L5_2.RedDotNormalBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._reddot_normal_panel = L2_2
    L2_2 = A0_2._reddot_normal_panel
    L3_2 = L2_2
    L2_2 = L2_2.async_bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_root
    L2_2(L3_2, L4_2)
    L2_2 = L2_1.Loading
    A0_2._reddot_normal_panel_status = L2_2
    L2_2 = A0_2._reddot_normal_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_async_callback
    L4_2 = nil
    function L5_2()
      local L0_3, L1_3
      L0_3 = L2_1.Ready
      A0_2._reddot_normal_panel_status = L0_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.update
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L1_1.New
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = G
      L4_2 = L4_2.RedDotNew
      L5_2 = G
      L5_2 = L5_2.RedDotNewBinder
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._reddot_new_panel = L2_2
      L2_2 = A0_2._reddot_new_panel
      L3_2 = L2_2
      L2_2 = L2_2.async_bind
      L4_2 = A0_2._binder
      L4_2 = L4_2.go_root
      L2_2(L3_2, L4_2)
      L2_2 = L2_1.Loading
      A0_2._reddot_new_panel_status = L2_2
      L2_2 = A0_2._reddot_new_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_async_callback
      L4_2 = nil
      function L5_2()
        local L0_3, L1_3
        L0_3 = L2_1.Ready
        A0_2._reddot_new_panel_status = L0_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.update
        L0_3(L1_3)
      end
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = L1_1.Number
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.create_panel
        L4_2 = G
        L4_2 = L4_2.RedDotNum
        L5_2 = G
        L5_2 = L5_2.RedDotNumBinder
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        A0_2._reddot_num_panel = L2_2
        L2_2 = A0_2._reddot_num_panel
        L3_2 = L2_2
        L2_2 = L2_2.async_bind
        L4_2 = A0_2._binder
        L4_2 = L4_2.go_root
        L2_2(L3_2, L4_2)
        L2_2 = L2_1.Loading
        A0_2._reddot_num_panel_status = L2_2
        L2_2 = A0_2._reddot_num_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_async_callback
        L4_2 = nil
        function L5_2()
          local L0_3, L1_3
          L0_3 = L2_1.Ready
          A0_2._reddot_num_panel_status = L0_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.update
          L0_3(L1_3)
        end
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._create = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._debug_check
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = L1_1.Normal
  if A1_2 == L2_2 then
    L2_2 = A0_2._reddot_normal_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._reddot_new_panel_status
    L3_2 = L2_1.Ready
    if L2_2 == L3_2 then
      L2_2 = A0_2._reddot_new_panel
      L3_2 = L2_2
      L2_2 = L2_2.refresh
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._reddot_num_panel_status
    L3_2 = L2_1.Ready
    if L2_2 == L3_2 then
      L2_2 = A0_2._reddot_num_panel
      L3_2 = L2_2
      L2_2 = L2_2.refresh
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = L1_1.New
    if A1_2 == L2_2 then
      L2_2 = A0_2._reddot_new_panel
      L3_2 = L2_2
      L2_2 = L2_2.refresh
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._reddot_normal_panel_status
      L3_2 = L2_1.Ready
      if L2_2 == L3_2 then
        L2_2 = A0_2._reddot_normal_panel
        L3_2 = L2_2
        L2_2 = L2_2.refresh
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
      L2_2 = A0_2._reddot_num_panel_status
      L3_2 = L2_1.Ready
      if L2_2 == L3_2 then
        L2_2 = A0_2._reddot_num_panel
        L3_2 = L2_2
        L2_2 = L2_2.refresh
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = L1_1.Number
      if A1_2 == L2_2 then
        L2_2 = G
        L2_2 = L2_2.RedDotModule
        L2_2 = L2_2.Instance
        L3_2 = L2_2
        L2_2 = L2_2.get_reddot_number
        L4_2 = A0_2._key
        L5_2 = A0_2._subkey
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L3_2 = A0_2._reddot_num_panel
        L4_2 = L3_2
        L3_2 = L3_2.refresh
        L5_2 = true
        L6_2 = L2_2
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = A0_2._reddot_normal_panel_status
        L4_2 = L2_1.Ready
        if L3_2 == L4_2 then
          L3_2 = A0_2._reddot_normal_panel
          L4_2 = L3_2
          L3_2 = L3_2.refresh
          L5_2 = false
          L3_2(L4_2, L5_2)
        end
        L3_2 = A0_2._reddot_new_panel_status
        L4_2 = L2_1.Ready
        if L3_2 == L4_2 then
          L3_2 = A0_2._reddot_new_panel
          L4_2 = L3_2
          L3_2 = L3_2.refresh
          L5_2 = false
          L3_2(L4_2, L5_2)
        end
      else
        L2_2 = L1_1.Invalid
        if A1_2 == L2_2 then
          L2_2 = A0_2._reddot_normal_panel_status
          L3_2 = L2_1.Ready
          if L2_2 == L3_2 then
            L2_2 = A0_2._reddot_normal_panel
            L3_2 = L2_2
            L2_2 = L2_2.refresh
            L4_2 = false
            L2_2(L3_2, L4_2)
          end
          L2_2 = A0_2._reddot_new_panel_status
          L3_2 = L2_1.Ready
          if L2_2 == L3_2 then
            L2_2 = A0_2._reddot_new_panel
            L3_2 = L2_2
            L2_2 = L2_2.refresh
            L4_2 = false
            L2_2(L3_2, L4_2)
          end
          L2_2 = A0_2._reddot_num_panel_status
          L3_2 = L2_1.Ready
          if L2_2 == L3_2 then
            L2_2 = A0_2._reddot_num_panel
            L3_2 = L2_2
            L2_2 = L2_2.refresh
            L4_2 = false
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_10::
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._key
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.unregister_reddot
      L3_2 = A0_2._key
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
      A0_2._key = nil
      A0_2._subkey = nil
    end
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end
L0_1._debug_check = L3_1
return L0_1
