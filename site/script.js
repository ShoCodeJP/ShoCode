// ShoCode — Language Toggle (EN ↔ JP)
(function () {
  "use strict";

  var STORAGE_KEY = "shocode-lang";
  var btnEn = document.getElementById("lang-en");
  var btnJa = document.getElementById("lang-ja");

  function setLang(lang) {
    if (lang === "ja") {
      document.body.classList.add("ja");
      document.documentElement.lang = "ja";
      btnJa.classList.add("active");
      btnEn.classList.remove("active");
    } else {
      document.body.classList.remove("ja");
      document.documentElement.lang = "en";
      btnEn.classList.add("active");
      btnJa.classList.remove("active");
    }
    try {
      localStorage.setItem(STORAGE_KEY, lang);
    } catch (e) {
      // Storage unavailable — silent fail
    }
  }

  btnEn.addEventListener("click", function () {
    setLang("en");
  });

  btnJa.addEventListener("click", function () {
    setLang("ja");
  });

  // Restore preference or detect browser language
  var saved;
  try {
    saved = localStorage.getItem(STORAGE_KEY);
  } catch (e) {
    saved = null;
  }

  if (saved === "ja" || saved === "en") {
    setLang(saved);
  } else if (navigator.language && navigator.language.startsWith("ja")) {
    setLang("ja");
  } else {
    setLang("en");
  }
})();
