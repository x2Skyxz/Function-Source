-- thx pp021#9092 (708198820995006475) for this code
if KRNL_LOADED then
  getgenv().KRNL_LOADED = nil
  getgenv().KRNL_SAFE_CALL = nil
  getgenv().syn = {}
  syn.request = "1"
  local ainuix
  ainuix = hookfunc(hookfunction, function(f, f1)
      if f == "1" then
          f = http_request
          getgenv().syn = nil
      end
      return ainuix(f, f1)
  end)
end