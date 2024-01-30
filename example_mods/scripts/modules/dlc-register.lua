function registerDLC(name, dlcSerial)
if dlcSerial == nil then
    makeLuaText("registerError", "DLC SERIAL WAS INVALID", 512, 0, 0);
    addLuaText("registerError");
    close(true);
end
-- default dlc code kViyjdZRMZujWR8dsfyYB8FXUuCd4tF4cKWy7Z42

return {
    name;
    dlcSerial;
}

end