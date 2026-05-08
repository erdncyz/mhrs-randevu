// ─── State ───────────────────────────────────────────────────────────────────
const state = { hospitals: [], slots: [], autoTimer: null, scanCount: 0, installPrompt: null };
const UI_STATE_KEY = "mhrs.ui.state.v1";

// ─── Element refs ─────────────────────────────────────────────────────────────
const $ = id => document.getElementById(id);
const els = {
  tokenInput:     $("tokenInput"),
  btnImportToken: $("btnImportToken"),
  btnLogout:      $("btnLogout"),
  loginStatus:    $("loginStatus"),
  sessionBadge:   $("sessionBadge"),
  notifyBotToken: $("notifyBotToken"),
  notifyChatId:   $("notifyChatId"),
  notifyEnabled:  $("notifyEnabled"),
  btnNotifySave:  $("btnNotifySave"),
  btnNotifyTest:  $("btnNotifyTest"),
  btnInstallApp:  $("btnInstallApp"),
  notifyStatus:   $("notifyStatus"),
  province:       $("province"),
  district:       $("district"),
  clinic:         $("clinic"),
  hospital:       $("hospital"),
  place:          $("place"),
  doctor:         $("doctor"),
  startDate:      $("startDate"),
  endDate:        $("endDate"),
  includeHours:   $("includeHours"),
  includeHourStart: $("includeHourStart"),
  includeHourEnd: $("includeHourEnd"),
  excludeHours:   $("excludeHours"),
  btnSearch:      $("btnSearch"),
  searchStatus:   $("searchStatus"),
  slotBody:       $("slotBody"),
  autoInterval:   $("autoInterval"),
  btnAutoStart:   $("btnAutoStart"),
  scanStatus:     $("scanStatus"),
  scanStatusText: $("scanStatusText"),
};

let persistedUiState = {};
let shouldResumeAutoScan = false;

// ─── Helpers ──────────────────────────────────────────────────────────────────
function toOptions(selectEl, list, includeAny = false) {
  selectEl.innerHTML = "";
  if (includeAny) {
    const o = document.createElement("option");
    o.value = "-1"; o.textContent = "FARKETMEZ";
    selectEl.appendChild(o);
  }
  list.forEach(item => {
    const rawValue = item.Value ?? item.value ?? item.Id ?? item.id ?? -1;
    const rawText  = item.Text  ?? item.text  ?? item.Adi ?? item.adi ?? String(rawValue);
    const o = document.createElement("option");
    o.value = String(rawValue);
    o.textContent = String(rawText).trim() || String(rawValue);
    selectEl.appendChild(o);
  });
}

function parseHourCsv(raw) {
  if (!raw.trim()) return [];
  return raw.split(",").map(x => Number(x.trim())).filter(x => Number.isInteger(x) && x >= 0 && x <= 23);
}

function readUiState() {
  try {
    const raw = localStorage.getItem(UI_STATE_KEY);
    return raw ? JSON.parse(raw) : {};
  } catch {
    return {};
  }
}

function writeUiState() {
  const next = {
    tokenInput: els.tokenInput?.value || "",
    notifyBotToken: els.notifyBotToken?.value || "",
    notifyChatId: els.notifyChatId?.value || "",
    notifyEnabled: Boolean(els.notifyEnabled?.checked),
    province: els.province?.value || "",
    district: els.district?.value || "",
    clinic: els.clinic?.value || "",
    hospital: els.hospital?.value || "",
    place: els.place?.value || "",
    doctor: els.doctor?.value || "",
    startDate: els.startDate?.value || "",
    endDate: els.endDate?.value || "",
    includeHourStart: els.includeHourStart?.value || "",
    includeHourEnd: els.includeHourEnd?.value || "",
    excludeHours: els.excludeHours?.value || "",
    autoInterval: els.autoInterval?.value || "",
    autoScanActive: Boolean(state.autoTimer),
  };

  persistedUiState = next;
  try {
    localStorage.setItem(UI_STATE_KEY, JSON.stringify(next));
  } catch {
    // localStorage kullanilamiyorsa uygulama normal sekilde devam etsin.
  }
}

function setSelectFromState(selectEl, key) {
  const wanted = persistedUiState[key];
  if (!selectEl || !wanted) return;

  const exists = Array.from(selectEl.options).some(o => o.value === String(wanted));
  if (exists) {
    selectEl.value = String(wanted);
  }
}

function restoreUiState() {
  persistedUiState = readUiState();
  shouldResumeAutoScan = Boolean(persistedUiState.autoScanActive);

  if (els.tokenInput && typeof persistedUiState.tokenInput === "string") {
    els.tokenInput.value = persistedUiState.tokenInput;
  }
  if (els.notifyBotToken && typeof persistedUiState.notifyBotToken === "string") {
    els.notifyBotToken.value = persistedUiState.notifyBotToken;
  }
  if (els.notifyChatId && typeof persistedUiState.notifyChatId === "string") {
    els.notifyChatId.value = persistedUiState.notifyChatId;
  }
  if (els.notifyEnabled) {
    els.notifyEnabled.checked = Boolean(persistedUiState.notifyEnabled);
  }
  if (els.startDate && typeof persistedUiState.startDate === "string") {
    els.startDate.value = persistedUiState.startDate;
  }
  if (els.endDate && typeof persistedUiState.endDate === "string") {
    els.endDate.value = persistedUiState.endDate;
  }
  if (els.includeHourStart && typeof persistedUiState.includeHourStart === "string") {
    els.includeHourStart.value = persistedUiState.includeHourStart;
  }
  if (els.includeHourEnd && typeof persistedUiState.includeHourEnd === "string") {
    els.includeHourEnd.value = persistedUiState.includeHourEnd;
  }
  if (els.excludeHours && typeof persistedUiState.excludeHours === "string") {
    els.excludeHours.value = persistedUiState.excludeHours;
  }
  if (els.autoInterval && typeof persistedUiState.autoInterval === "string") {
    els.autoInterval.value = persistedUiState.autoInterval;
  }
}

function bindUiPersistence() {
  [
    els.tokenInput,
    els.notifyBotToken,
    els.notifyChatId,
    els.notifyEnabled,
    els.province,
    els.district,
    els.clinic,
    els.hospital,
    els.place,
    els.doctor,
    els.startDate,
    els.endDate,
    els.includeHourStart,
    els.includeHourEnd,
    els.excludeHours,
    els.autoInterval,
  ]
    .filter(Boolean)
    .forEach(el => {
      el.addEventListener("input", writeUiState);
      el.addEventListener("change", writeUiState);
    });
}

function setupHourRangeSelectors() {
  if (!els.includeHourStart || !els.includeHourEnd) return;

  const buildOptions = (selectEl, placeholder) => {
    selectEl.innerHTML = "";

    const empty = document.createElement("option");
    empty.value = "";
    empty.textContent = placeholder;
    selectEl.appendChild(empty);

    for (let h = 0; h <= 23; h++) {
      const opt = document.createElement("option");
      opt.value = String(h);
      opt.textContent = `${String(h).padStart(2, "0")}:00`;
      selectEl.appendChild(opt);
    }
  };

  buildOptions(els.includeHourStart, "Başlangıç");
  buildOptions(els.includeHourEnd, "Bitiş");
}

function parseIncludedHours() {
  if (els.includeHourStart && els.includeHourEnd) {
    const rawStart = els.includeHourStart.value;
    const rawEnd = els.includeHourEnd.value;

    if (!rawStart && !rawEnd) {
      return [];
    }

    const start = Number(rawStart || rawEnd);
    const end = Number(rawEnd || rawStart);
    if (!Number.isInteger(start) || !Number.isInteger(end)) {
      return [];
    }

    const from = Math.max(0, Math.min(start, end));
    const to = Math.min(23, Math.max(start, end));
    const hours = [];
    for (let h = from; h <= to; h++) {
      hours.push(h);
    }
    return hours;
  }

  return parseHourCsv(els.includeHours?.value || "");
}

function sanitizeServerMessage(message) {
  if (!message) return "Beklenmeyen bir hata olustu.";

  const withoutTags = String(message).replace(/<[^>]*>/g, " ");
  const decoded = withoutTags
    .replace(/&nbsp;/gi, " ")
    .replace(/&amp;/gi, "&")
    .replace(/&lt;/gi, "<")
    .replace(/&gt;/gi, ">")
    .replace(/&quot;/gi, '"')
    .replace(/&#39;/gi, "'");

  return decoded.replace(/\s+/g, " ").trim();
}

function extractErrorCode(message, code) {
  if (code) return String(code).trim().toUpperCase();
  const match = String(message || "").match(/\(([A-Z]{3}\d{4})\)/i);
  return match ? match[1].toUpperCase() : "";
}

function mapKnownErrorMessage(message, code, status = 0) {
  const clean = sanitizeServerMessage(message);
  const errCode = extractErrorCode(clean, code);

  const known = {
    RND4010: "Secilen filtrelerde uygun randevu bulunamadi. Hastane, ilce veya klinigi degistirip tekrar deneyin.",
    GNL2029: "Cok hizli istek gonderildi. Kisa bir sure bekleyip tekrar deneyin.",
    LGN2001: "MHRS oturumu sona ermis. Tokeni yeniden ice aktar.",
    TOKEN_EMPTY: "Token bos veya gecersiz. Authorization Bearer degerini tam yapistir.",
    TOKEN_INVALID: "Token dogrulanamadi. MHRS oturumundan guncel token alip tekrar deneyin."
  };

  if (known[errCode]) {
    return known[errCode];
  }

  if (status === 401) {
    return "Oturum gecersiz veya suresi dolmus. Tokeni yeniden ice aktar.";
  }

  return clean || "Beklenmeyen bir hata olustu.";
}

async function api(path, opts = {}) {
  let res;
  try {
    res = await fetch(path, {
      ...opts,
      headers: { "Content-Type": "application/json", ...(opts.headers || {}) }
    });
  } catch {
    if (window.location.protocol === "file:") {
      throw new Error("Arayuz dogrudan dosya olarak acilmis. Uygulamayi dotnet run ile baslatip tarayicidan localhost adresiyle acin.");
    }

    throw new Error("Sunucuya baglanilamadi (Failed to fetch). Uygulamanin calistigini ve adresin dogru oldugunu kontrol edin.");
  }

  let body = null;
  let rawText = "";

  try {
    rawText = await res.text();
    body = rawText ? JSON.parse(rawText) : null;
  } catch {
    body = null;
  }

  if (!res.ok || !body.Success) {
    if (!body) {
      if (res.status === 404) {
        throw new Error("API endpoint bulunamadi (404). Sunucuyu guncel surumle yeniden baslatin.");
      }

      if (res.status >= 500) {
        throw new Error("Sunucu hatasi olustu. Biraz sonra tekrar deneyin.");
      }

      throw new Error(`Sunucu yaniti okunamadi (HTTP ${res.status}).`);
    }

    throw new Error(mapKnownErrorMessage(body?.Message, body?.Code, res.status));
  }
  return body.Data;
}

async function loadNotificationConfig() {
  try {
    const data = await api("/api/notify/config");
    const cleanValue = value => {
      const text = String(value || "").trim();
      return text.toUpperCase().startsWith("BURAYA_") ? "" : text;
    };

    if (els.notifyEnabled) {
      els.notifyEnabled.checked = Boolean(data?.enabled);
    }
    const serverToken = cleanValue(data?.telegramBotToken);
    const serverChatId = cleanValue(data?.telegramChatId);

    if (els.notifyBotToken && serverToken) {
      els.notifyBotToken.value = serverToken;
    }
    if (els.notifyChatId && serverChatId) {
      els.notifyChatId.value = serverChatId;
    }
    writeUiState();
  } catch {
    // Notification config load failure should not block main flow.
  }
}

async function saveNotificationConfig() {
  await api("/api/notify/config", {
    method: "POST",
    body: JSON.stringify({
      Enabled: Boolean(els.notifyEnabled?.checked),
      TelegramBotToken: (els.notifyBotToken?.value || "").trim(),
      TelegramChatId: (els.notifyChatId?.value || "").trim()
    })
  });
  
  // Sunucuya kayit sonrasi tarayicidaki alanlari da kalici hale getir.
  writeUiState();
}

async function sendNotification(message) {
  try {
    await api("/api/notify/send", {
      method: "POST",
      body: JSON.stringify({ Message: message })
    });
  } catch {
    // Notification send errors should not break search/booking flow.
  }
}

function buildSearchBody() {
  return {
    ProvinceId:    Number(els.province.value),
    DistrictId:    Number(els.district.value),
    ClinicId:      Number(els.clinic.value),
    HospitalId:    Number(els.hospital.value),
    PlaceId:       Number(els.place.value),
    DoctorId:      Number(els.doctor.value),
    StartDate:     els.startDate.value  || null,
    EndDate:       els.endDate.value    || null,
    IncludedHours: parseIncludedHours(),
    ExcludedHours: parseHourCsv(els.excludeHours.value),
  };
}

function formatDateInputValue(date) {
  const y = date.getFullYear();
  const m = String(date.getMonth() + 1).padStart(2, "0");
  const d = String(date.getDate()).padStart(2, "0");
  return `${y}-${m}-${d}`;
}

function applyDateConstraints() {
  const today = formatDateInputValue(new Date());
  
  window.addEventListener("pagehide", writeUiState);
  window.addEventListener("beforeunload", writeUiState);

  els.startDate.min = today;
  if (!els.startDate.value || els.startDate.value < today) {
    els.startDate.value = today;
  }

  els.endDate.min = els.startDate.value;
  if (els.endDate.value && els.endDate.value < els.startDate.value) {
    els.endDate.value = els.startDate.value;
  }
}

function attachDatePickerBehavior(inputEl) {
  if (!inputEl) return;

  const openPicker = () => {
    if (typeof inputEl.showPicker === "function") {
      try {
        inputEl.showPicker();
      } catch {
        // Some browsers block showPicker outside trusted contexts.
      }
    }
  };

  inputEl.addEventListener("focus", openPicker);
  inputEl.addEventListener("click", openPicker);
}

function playBeep() {
  try {
    const ctx = new AudioContext();
    const osc  = ctx.createOscillator();
    const gain = ctx.createGain();
    osc.connect(gain); gain.connect(ctx.destination);
    osc.frequency.value = 880;
    gain.gain.setValueAtTime(0.3, ctx.currentTime);
    gain.gain.exponentialRampToValueAtTime(0.001, ctx.currentTime + 1.2);
    osc.start(ctx.currentTime); osc.stop(ctx.currentTime + 1.2);
  } catch { /* ses izni yoksa sessizce geç */ }
}

function setStatus(el, text, type = "") {
  el.textContent = text;
  el.className = "status-text" + (type ? " " + type : "");
}

function setSessionBadge(active) {
  els.sessionBadge.textContent = active ? "● Oturum Aktif" : "● Oturum Yok";
  els.sessionBadge.className   = active ? "badge badge-active" : "badge badge-inactive";
}

function slotField(slot, pascal, camel = null) {
  if (!slot || typeof slot !== "object") return null;
  const camelName = camel || (pascal.charAt(0).toLowerCase() + pascal.slice(1));
  return slot[pascal] ?? slot[camelName] ?? null;
}

function normalizeSlots(rawSlots) {
  if (!Array.isArray(rawSlots)) return [];

  return rawSlots
    .map(slot => ({
      _raw: slot,
      Id: Number(slotField(slot, "Id")) || 0,
      FkCetvelId: Number(slotField(slot, "FkCetvelId")) || 0,
      MuayeneYeriId: Number(slotField(slot, "MuayeneYeriId")) || 0,
      BaslangicZamani: slotField(slot, "BaslangicZamani"),
      BitisZamani: slotField(slot, "BitisZamani"),
      HekimAdi: slotField(slot, "HekimAdi"),
      MuayeneYeriAdi: slotField(slot, "MuayeneYeriAdi"),
      KurumAdi: slotField(slot, "KurumAdi")
    }))
    .filter(slot => {
      return slot.Id > 0
        && slot.FkCetvelId > 0
        && !!slot.BaslangicZamani
        && !!slot.BitisZamani;
    });
}

// ─── Meta loaders ─────────────────────────────────────────────────────────────
async function loadProvinces() {
  toOptions(els.province, await api("/api/meta/provinces"));
  setSelectFromState(els.province, "province");
}
async function loadDistricts() {
  toOptions(els.district, await api(`/api/meta/districts/${Number(els.province.value)}`), true);
  setSelectFromState(els.district, "district");
}
async function loadClinics() {
  toOptions(els.clinic, await api(`/api/meta/clinics?provinceId=${els.province.value}&districtId=${els.district.value}`));
  setSelectFromState(els.clinic, "clinic");
}
async function loadHospitals() {
  const hospitals = await api(`/api/meta/hospitals?provinceId=${els.province.value}&districtId=${els.district.value}&clinicId=${els.clinic.value}`);
  state.hospitals = hospitals;
  toOptions(els.hospital, hospitals, true);
  setSelectFromState(els.hospital, "hospital");
}
async function loadPlacesAndDoctors() {
  const hId = Number(els.hospital.value);
  if (hId <= 0) {
    toOptions(els.place, [], true);
    toOptions(els.doctor, [], true);
    setSelectFromState(els.place, "place");
    setSelectFromState(els.doctor, "doctor");
    return;
  }
  const anaKurumId = state.hospitals.find(h => (h.Value ?? h.value) === hId)?.Value ?? hId;
  toOptions(els.place,  await api(`/api/meta/places?hospitalId=${hId}&clinicId=${els.clinic.value}`), true);
  toOptions(els.doctor, await api(`/api/meta/doctors?anaKurumId=${anaKurumId}&hospitalId=${hId}&clinicId=${els.clinic.value}`), true);
  setSelectFromState(els.place, "place");
  setSelectFromState(els.doctor, "doctor");
}

// ─── Slot rendering ───────────────────────────────────────────────────────────
function renderSlots(slots) {
  els.slotBody.innerHTML = "";
  if (!slots.length) {
    els.slotBody.innerHTML = `<tr><td colspan="5" class="empty-row">Uygun slot bulunamadı</td></tr>`;
    return;
  }
  slots.forEach(slot => {
    const tr = document.createElement("tr");
    tr.innerHTML = `
      <td data-label="Tarih / Saat">${slot.BaslangicZamani || "-"}</td>
      <td data-label="Doktor">${slot.HekimAdi || "-"}</td>
      <td data-label="Muayene Yeri">${slot.MuayeneYeriAdi || "-"}</td>
      <td data-label="Kurum">${slot.KurumAdi || "-"}</td>
      <td data-label="Randevu"><button class="btn btn-primary" style="padding:6px 14px;font-size:12px;">Al</button></td>
    `;
    tr.querySelector("button").addEventListener("click", () => bookSlot(slot));
    els.slotBody.appendChild(tr);
  });
}

function setupPwaInstall() {
  if (!els.btnInstallApp) return;

  window.addEventListener("beforeinstallprompt", event => {
    event.preventDefault();
    state.installPrompt = event;
    els.btnInstallApp.classList.remove("hidden");
  });

  els.btnInstallApp.addEventListener("click", async () => {
    if (!state.installPrompt) return;

    try {
      await state.installPrompt.prompt();
      await state.installPrompt.userChoice;
    } finally {
      state.installPrompt = null;
      els.btnInstallApp.classList.add("hidden");
    }
  });

  window.addEventListener("appinstalled", () => {
    state.installPrompt = null;
    els.btnInstallApp.classList.add("hidden");
  });
}

function registerServiceWorker() {
  if (!("serviceWorker" in navigator)) return;

  window.addEventListener("load", async () => {
    try {
      await navigator.serviceWorker.register("/sw.js");
    } catch {
      // PWA service worker kaydi basarisiz olursa uygulama normal calismaya devam eder.
    }
  });
}

// ─── Booking ──────────────────────────────────────────────────────────────────
async function bookSlot(slot) {
  try {
    if (!slot?.Id || !slot?.FkCetvelId || !slot?.MuayeneYeriId || !slot?.BaslangicZamani || !slot?.BitisZamani) {
      throw new Error("Slot verisi eksik geldi. Lutfen tekrar ara.");
    }

    await api("/api/appointment/book", {
      method: "POST",
      body: JSON.stringify({
        FkSlotId:             slot.Id,
        FkCetvelId:           slot.FkCetvelId,
        MuayeneYeriId:        slot.MuayeneYeriId,
        BaslangicZamani:      slot.BaslangicZamani,
        BitisZamani:          slot.BitisZamani,
        AllowCancelAndRebook: true,
      })
    });
    playBeep();
    stopAutoScan();
    setStatus(els.searchStatus, `✅ Randevu alındı: ${slot.BaslangicZamani} – ${slot.HekimAdi}`, "success");
    await sendNotification(`Randevu alindi. Tarih: ${slot.BaslangicZamani} Doktor: ${slot.HekimAdi || "Bilinmiyor"} Kurum: ${slot.KurumAdi || "Bilinmiyor"}`);
  } catch (err) {
    setStatus(els.searchStatus, `Randevu alınamadı: ${err.message}`, "error");
    await sendNotification(`Randevu alma denemesi basarisiz oldu: ${err.message}`);
  }
}

// ─── Search ───────────────────────────────────────────────────────────────────
async function doSearch() {
  setStatus(els.searchStatus, "Aranıyor...");
  try {
    const apiData = await api("/api/search/slots", { method: "POST", body: JSON.stringify(buildSearchBody()) });
    const slots = normalizeSlots(apiData);

    state.slots = slots;
    renderSlots(slots);

    if (Array.isArray(apiData) && apiData.length > 0 && slots.length === 0) {
      setStatus(els.searchStatus, "Gelen slot verileri eksik oldugu icin gosterilmedi. Farkli filtre ile tekrar deneyin.", "error");
      return [];
    }

    setStatus(els.searchStatus, slots.length ? `${slots.length} slot bulundu.` : "Uygun slot bulunamadı.");
    return slots;
  } catch (err) {
    setStatus(els.searchStatus, err.message, "error");
    renderSlots([]);
    return [];
  }
}

// ─── Auto scan ────────────────────────────────────────────────────────────────
async function tick() {
  state.scanCount++;
  els.scanStatusText.textContent = `Taranıyor... ${state.scanCount}. deneme`;
  const slots = await doSearch();
  if (slots.length > 0) {
    const first = slots[0];
    await sendNotification(`Uygun slot bulundu. Tarih: ${first.BaslangicZamani} Doktor: ${first.HekimAdi || "Bilinmiyor"} Kurum: ${first.KurumAdi || "Bilinmiyor"}`);
    await bookSlot(slots[0]);
  }
}

function startAutoScan() {
  if (state.autoTimer) return;
  state.scanCount = 0;
  els.autoInterval.disabled = true;
  els.btnAutoStart.textContent = "■ Durdur";
  els.btnAutoStart.classList.add("active");
  els.scanStatus.classList.remove("hidden");
  tick();
  state.autoTimer = setInterval(tick, Number(els.autoInterval.value) * 1000);
  writeUiState();
}

function stopAutoScan() {
  if (state.autoTimer) { clearInterval(state.autoTimer); state.autoTimer = null; }
  els.autoInterval.disabled = false;
  els.btnAutoStart.textContent = "▶ Otomatik Başlat";
  els.btnAutoStart.classList.remove("active");
  els.scanStatus.classList.add("hidden");
  writeUiState();
}

function resumeAutoScanIfNeeded() {
  if (!shouldResumeAutoScan) return;

  shouldResumeAutoScan = false;
  startAutoScan();
}

// ─── Event bindings ───────────────────────────────────────────────────────────
els.btnImportToken.addEventListener("click", async () => {
  try {
    await api("/api/auth/import-token", {
      method: "POST",
      body: JSON.stringify({ Token: els.tokenInput.value.trim() })
    });
    setStatus(els.loginStatus, "Oturum aktif. İl seçiminden başlayabilirsiniz.", "success");
    setSessionBadge(true);
    await loadProvinces();
    writeUiState();
  } catch (err) {
    setStatus(els.loginStatus, err.message, "error");
    setSessionBadge(false);
  }
});

els.btnLogout.addEventListener("click", async () => {
  try {
    await api("/api/auth/logout", { method: "POST" });
    setStatus(els.loginStatus, "Oturum temizlendi.");
    setSessionBadge(false);
    stopAutoScan();
    if (els.tokenInput) {
      els.tokenInput.value = "";
    }
    writeUiState();
  } catch (err) {
    setStatus(els.loginStatus, err.message, "error");
  }
});

els.btnAutoStart.addEventListener("click", () => {
  if (state.autoTimer) stopAutoScan();
  else startAutoScan();
});

els.btnNotifySave?.addEventListener("click", async () => {
  try {
    await saveNotificationConfig();
    setStatus(els.notifyStatus, "Bildirim ayarlari kaydedildi.", "success");
  } catch (err) {
    setStatus(els.notifyStatus, err.message, "error");
  }
});

els.btnNotifyTest?.addEventListener("click", async () => {
  try {
    await saveNotificationConfig();
    await api("/api/notify/test", { method: "POST" });
    setStatus(els.notifyStatus, "Test mesaji gonderildi.", "success");
  } catch (err) {
    setStatus(els.notifyStatus, err.message, "error");
  }
});

els.btnSearch.addEventListener("click", doSearch);

els.province.addEventListener("change", async () => {
  try { await loadDistricts(); await loadClinics(); await loadHospitals(); await loadPlacesAndDoctors(); }
  catch (err) { setStatus(els.searchStatus, err.message, "error"); }
});
els.district.addEventListener("change", async () => {
  try { await loadClinics(); await loadHospitals(); await loadPlacesAndDoctors(); }
  catch (err) { setStatus(els.searchStatus, err.message, "error"); }
});
els.clinic.addEventListener("change", async () => {
  try { await loadHospitals(); await loadPlacesAndDoctors(); }
  catch (err) { setStatus(els.searchStatus, err.message, "error"); }
});
els.hospital.addEventListener("change", async () => {
  try { await loadPlacesAndDoctors(); }
  catch (err) { setStatus(els.searchStatus, err.message, "error"); }
});

els.startDate.addEventListener("change", () => {
  applyDateConstraints();
});

els.endDate.addEventListener("change", () => {
  applyDateConstraints();
});

applyDateConstraints();
attachDatePickerBehavior(els.startDate);
attachDatePickerBehavior(els.endDate);
setupHourRangeSelectors();
restoreUiState();
bindUiPersistence();
loadNotificationConfig();
setupPwaInstall();
registerServiceWorker();
resumeAutoScanIfNeeded();
