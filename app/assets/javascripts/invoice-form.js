var debtorFields = document.querySelector(".debtor-fields");
var debtorSelect = document.querySelector(".debtor-select");

debtorFields.style.display = "none";

debtorSelect.addEventListener("change", function() {
    debtorFields.style.display = debtorSelect.value === "custom" ? "block" : "none"
});