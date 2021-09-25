//----------------------------------------------------------------------------\\
//---------------------------------- DokusCore -------------------------------\\
//----------------------------------------------------------------------------\\
var BankMoney = 0
var Money = 0
var CharIDValue = 0
var ServerIDValue = 0
$("document").ready(function() {
  window.addEventListener("message", function(event) {
    var type = event.data
    if (type.Action == "ShowHud") { $(".HudContainer").show(); };
    if (type.Action == "HideHud") { $(".HudContainer").hide(); };
    if (event.data.Action == "UpdateHud") {
      if (event.data.Money != undefined) { Money = event.data.Money }
      if (event.data.BankMoney != undefined) { BankMoney = event.data.BankMoney }
      if (event.data.CharID != undefined) { CharIDValue = event.data.CharID }
      if (event.data.ServerID != undefined) { ServerIDValue = event.data.ServerID }
      document.getElementById("MoneyValue").innerHTML = Money;
      document.getElementById("BankValue").innerHTML = BankMoney;
      document.getElementById("CharIDValue").innerHTML = CharIDValue;
      document.getElementById("ServerIDValue").innerHTML = ServerIDValue;
    }
  })
})
//----------------------------------------------------------------------------\\
//----------------------------------------------------------------------------\\
