<%@ page contentType="text/css;charset=UTF-8" %>
<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>
<%@ taglib uri="http://www.idempiere.org/dsp/web/util" prefix="u" %>
<%-- ============================================================
     TEMA ANDESTI - paleta OFICIAL ATLAS (Ossian Tech) + Nunito
     Turquesa #595959 (primario) · Azul #595959 · Dark blue #404040
     Naranja #595959 (acento) · Pale blue #f5f5f5 · Gris #7f7f7f
     ============================================================ --%>

.desktop-content, .desktop-center, .z-window, .z-panel-children { color: #404040; }

<%-- ============================================================
     TOP BAR: gradiente turquesa->azul (look Atlas)
     ============================================================ --%>
.desktop-header {
	background: linear-gradient(90deg, #595959 0%, #404040 100%) !important;
	box-shadow: 0 2px 6px var(--at-header-shadow) !important;
	border-bottom: none !important;
}
.desktop-header-font, .desktop-header-username,
.desktop-user-panel a, .desktop-header .z-label, .desktop-header .link {
	color: #ffffff !important;
}
.desktop-header [class*="z-icon-"] { color: #ffffff !important; }
<%-- (logo del topbar: el cliente sube un PNG ya en blanco) --%>
<%-- hover de enlaces de la topbar: overlay translucido (no cuadro blanco) --%>
.desktop-header .z-toolbarbutton:hover, .desktop-header .link:hover,
.desktop-user-panel a:hover, .desktop-header-username:hover {
	background-color: rgba(255,255,255,0.18) !important;
	color: #ffffff !important; border-radius: 4px; text-decoration: none !important;
}
.desktop-header .z-toolbarbutton:hover [class*="z-icon-"] { color: #ffffff !important; }

<%-- 1. ETIQUETAS de campo --%>
.form-label .z-label, .form-label .idempiere-label,
.z-row .z-label, .z-cell > .z-label { color: #7f7f7f !important; font-size: 11px; }
.form-label-above-input, .form-label-above-input .form-label,
.form-label-above-input.form-label, .form-label-above-input .z-label,
.form-label-above-input .z-row-inner { text-align: left !important; }

<%-- 2. CAMPOS: editables BLANCO con linea fina, bloqueados GRIS --%>
.z-textbox, .z-decimalbox, .z-intbox, .z-longbox, .z-doublebox,
.z-combobox-input, .z-datebox-input, .z-timebox-input,
.z-spinner-input, .z-doublespinner-input, .z-bandbox-input, .editor-input {
	background-color: #ffffff !important;
	color: #404040 !important;
	border: 1px solid #cccccc !important;
	border-radius: 5px !important;
	box-shadow: none !important;
}
.z-combobox, .z-datebox, .z-timebox, .z-bandbox, .z-spinner, .z-doublespinner {
	border: none !important; box-shadow: none !important; background: transparent !important;
}
.z-combobox-button, .z-datebox-button, .z-timebox-button,
.z-bandbox-button, .z-spinner-button, .z-doublespinner-button {
	border: none !important; background: transparent !important; color: #7f7f7f !important;
}
.z-textbox-readonly, .z-intbox-readonly, .z-longbox-readonly,
.z-doublebox-readonly, .z-decimalbox-readonly, .z-datebox-readonly, .z-timebox-readonly,
.z-textbox[readonly], .z-intbox[readonly], .z-longbox[readonly], .z-doublebox[readonly],
.z-decimalbox[readonly], .z-datebox[readonly], .z-timebox[readonly],
.z-textbox[disabled], .z-intbox[disabled], .z-longbox[disabled], .z-doublebox[disabled],
.z-decimalbox[disabled], .z-datebox[disabled], .z-timebox[disabled],
.z-combobox-disabled .z-combobox-input, .editor-input-disd {
	background-color: #f2f2f2 !important;
	color: #595959 !important;
	border: 1px solid #cccccc !important;
	box-shadow: none !important;
}
<%-- Foco: anillo turquesa (excluye checkbox/radio) --%>
input:not([type="checkbox"]):not([type="radio"]):focus, textarea:focus,
.z-textbox:focus, .z-decimalbox:focus, .z-intbox:focus, .z-longbox:focus,
.z-doublebox:focus, .z-combobox-input:focus, .z-datebox-input:focus,
.z-timebox-input:focus, .z-bandbox-input:focus, .z-spinner-input:focus,
.z-doublespinner-input:focus, .editor-input:focus, select:focus {
	border-color: #595959 !important;
	box-shadow: 0 0 0 2px var(--at-focus-shadow) !important;
	background-color: #ffffff !important;
	outline: none !important;
}
<%-- Obligatorios: tinte naranja muy tenue (acento Atlas) --%>
.idempiere-mandatory, .idempiere-mandatory input,
.idempiere-mandatory.z-textbox, .idempiere-mandatory.z-decimalbox,
.idempiere-mandatory.z-intbox, .idempiere-mandatory.z-longbox,
.idempiere-mandatory.z-doublebox, .idempiere-mandatory .z-combobox-input,
.idempiere-mandatory .z-datebox-input {
	background-color: #f2f2f2 !important; border: 1px solid #cccccc !important;
}
input[type="checkbox"]:checked, input[type="checkbox"]:indeterminate { background-color: #595959; }
input[type="radio"]:checked { border-color: #595959; }
input[type="radio"]:checked:before { background-color: #595959; }

<%-- 3. ESPACIADO de campos en misma linea --%>
.adwindow-form .z-separator-vertical { width: 6px !important; min-width: 6px !important; }
.adwindow-form .z-cell > .z-textbox, .adwindow-form .z-cell > .z-decimalbox,
.adwindow-form .z-cell > .z-intbox, .adwindow-form .z-cell > .z-longbox,
.adwindow-form .z-cell > .z-doublebox, .adwindow-form .z-cell > .z-combobox,
.adwindow-form .z-cell > .z-datebox, .adwindow-form .z-cell > .z-bandbox,
.adwindow-form .z-cell .z-div > .z-combobox, .adwindow-form .z-cell .z-div > .z-textbox { width: 100% !important; }
.adwindow-form.z-row > .z-cell, .adwindow-form.z-row > .z-row-inner { border-top: none !important; }

<%-- 4a. HEADERS de grilla/columna NEUTROS --%>
.z-grid-header, .z-grid-header:hover, .z-columns, .z-columns-bar,
.z-column, .z-column:hover, .z-listhead, .z-listheader, .z-listbox-header,
.z-column-content, .z-listheader-content, .z-auxheader-cnt {
	background: #e8e8e8 !important; background-image: none !important;
	border-color: #cccccc !important; color: #404040 !important;
}
.z-column-content, .z-listheader-content, .z-column .z-label, .z-listheader .z-label {
	color: #404040 !important; font-weight: 700;
}

<%-- 4a-bis. ZEBRA: filas impares en gris muy claro (legibilidad) --%>
.z-row.z-row-odd > .z-cell,
.z-row.z-row-odd > .z-row-inner,
.z-listitem.z-listbox-odd > .z-listcell,
.z-listitem.z-listitem-odd > .z-listcell,
.z-grid-odd > .z-cell, .z-grid-odd > .z-row-inner {
	background-color: #f7f7f7 !important;
}

<%-- 4b. HOVER / SELECCION de fila (turquesa suave) --%>
.z-row:hover > .z-row-inner, .z-row:hover > .z-cell,
.z-listitem:hover > .z-listcell, .z-treerow:hover > .z-treecell {
	background-color: #f2f2f2 !important;
}
.z-listitem.z-listitem-selected > .z-listcell,
.z-listitem.z-listitem-selected:hover > .z-listcell,
.z-listitem.z-listitem-selected.z-listitem-focus > .z-listcell,
.z-listitem.z-listitem-selected.z-listitem-focus:hover > .z-listcell,
.z-row.z-row-selected > .z-cell,
.z-treerow.z-treerow-selected > .z-treecell,
.z-treerow.z-treerow-selected:hover > .z-treecell {
	background-color: #e0e0e0 !important; color: #333333 !important;
}

<%-- 4c. BOTONES:
       OK + Accion (proceso/docaction)  -> AZUL OSCURO #404040
       Cancelar + alerta/destructivo     -> ROJO SANGRE #9b1c1c
       (el turquesa queda para acentos: foco, links, seleccion) --%>
.btn-ok, .btn-ok:focus,
.z-button:has(.z-icon-Ok):not(.login-btn) {
	background-color: #404040 !important; color: #fff !important;
}
.btn-ok:hover,
.z-button:has(.z-icon-Ok):not(.login-btn):hover { background-color: #2e2e2e !important; color: #fff !important; }

.btn-cancel, .btn-cancel:focus,
.z-button:has(.z-icon-Cancel):not(.login-btn),
.z-button:has(.z-icon-Ignore):not(.login-btn) {
	background-color: #9b1c1c !important; color: #fff !important;
}
.btn-cancel:hover,
.z-button:has(.z-icon-Cancel):not(.login-btn):hover { background-color: #7a1515 !important; color: #fff !important; }

.btn-ok [class^="z-icon-"]:before, .btn-cancel [class^="z-icon-"]:before,
.z-button:has(.z-icon-Ok):not(.login-btn) [class^="z-icon-"]:before,
.z-button:has(.z-icon-Cancel):not(.login-btn) [class^="z-icon-"]:before { color: #fff !important; }
.z-button { border-radius: 5px; transition: background-color .15s ease; }

<%-- Chrome interactivo en azul Atlas #595959:
       menu (sitemap), boton "+" de crear, dia seleccionado del calendario,
       boton de busqueda activo. Refuerzo por si quedo algun azul base. --%>
.btn-small, .btn-small:focus { background-color: #595959 !important; color: #fff !important; }
.btn-small:hover { background-color: #404040 !important; }
.btn-small [class^="z-icon-"], .btn-small [class^="z-icon-"]:before { color: #fff !important; }
<%-- botones de formulario: "+" (crear) y "Accion" (DocAction)
     ambos en azul #595959 --%>
.form-button.z-button, .form-button.z-button:focus,
.z-button:has(.z-icon-New):not(.login-btn):not(.z-toolbarbutton),
.quick-create-button, .image-field-new-btn {
	background-color: #595959 !important; color: #fff !important;
}
.form-button.z-button:hover { background-color: #404040 !important; color: #fff !important; }
.form-button.z-button [class^="z-icon-"]:before,
.z-button:has(.z-icon-New):not(.login-btn):not(.z-toolbarbutton) [class^="z-icon-"]:before { color: #fff !important; }
.z-calendar-selected, .z-calendar-cell-selected,
.z-calendar-selected:hover { background: #595959 !important; color: #fff !important; }
.z-calendar-today { color: #595959 !important; }

.z-group-icon { font-family: "ZK85Icons", FontAwesome !important; color: #595959; }
.z-group td.z-group-inner {
	border-bottom: 1px solid #cccccc !important;
	padding: 10px 2px 5px 2px !important; background: #fff !important;
}
.z-group-header .z-label { color: #404040; font-weight: 700; }
.z-a, .z-a:visited, .idempiere-zoomable-label { color: #595959; }
.z-a:hover { color: #595959; }

<%-- tabs estilo Atlas: activa con subrayado turquesa --%>
.z-tabbox .z-tab-selected .z-tab-text, .desktop-tabbox .z-tab-selected .z-tab-text { color: #595959 !important; }
.desktop-tabbox .z-tab-selected { border-bottom: 2px solid #595959 !important; }

<%-- 5. TOOLBAR --%>
.btn-ok [class^="z-icon-"], .btn-cancel [class^="z-icon-"],
.form-button [class^="z-icon-"], .login-btn [class^="z-icon-"] { color: #fff; }
.z-toolbarbutton[disabled], .disableFilter { opacity: 1 !important; }
.z-toolbarbutton[disabled] [class^="z-icon-"],
.z-button[disabled] [class^="z-icon-"],
.disableFilter [class^="z-icon-"] { color: #b0b0b0 !important; opacity: 1 !important; }
.z-toolbarbutton-checked { color: #595959 !important; background-color: #e0e0e0 !important; border-radius: 4px; }
.z-toolbarbutton:hover { color: #595959 !important; background-color: #f2f2f2 !important; }
.disableFilter img { opacity: 0.35; }

<%-- 6. LOGIN PANTALLA PARTIDA (estilo Atlas) --%>
.login-window { background: #ffffff !important; }
.login-window .z-window-content,
.login-north-panel, .login-south-panel { background-color: transparent !important; }
.login-east-panel, .login-north-panel, .login-south-panel { display: none !important; }
.login-west-panel {
	width: 46% !important; max-width: 620px; min-width: 320px;
	border: none !important; padding: 0 !important; overflow: hidden;
	<%-- imagen lateral: usa SysConfig ZK_LOGIN_SIDE_IMAGE si esta seteado
	     (imagen subida por el usuario), si no el ../images/login-side.png del tema --%>
	background: url("${u:sysConfig('ZK_LOGIN_SIDE_IMAGE','../images/login-side.png')}") center center / cover no-repeat !important;
}
.login-brand-panel { width: 100%; height: 100%; min-height: 100vh; }
<%-- ocultamos logo y tagline: el panel es solo la imagen --%>
.login-brand-content { display: none !important; }
.login-window .z-window.z-window-embedded {
	background: transparent !important; border: none !important; box-shadow: none !important; overflow: visible;
}
.login-window .z-window.z-window-embedded > .z-window-content { background: transparent !important; }
.login-box-body, .login-box-header, .login-box-footer { background: transparent !important; }
.login-box-header-txt { display: none !important; }
.login-box-header-logo { text-align: center; padding-bottom: 10px; }
.login-label { color: #7f7f7f !important; font-weight: 600; }
.login-field input:not([type="checkbox"]), .login-field .z-combobox-input, .login-field .z-textbox {
	color: #404040; background: #fff; border: 1px solid #cccccc !important; border-radius: 5px;
}
.login-field input:not([type="checkbox"]):focus, .login-field .z-combobox-input:focus {
	border-color: var(--at-primary) !important; box-shadow: 0 0 0 2px var(--at-focus-shadow-login); outline: none;
}
.login-field input[type="checkbox"] { accent-color: #595959; }
.login-btn { border-radius: 5px !important; font-weight: 700; border: 1px solid transparent; }
<%-- Botones del login (igual en TODOS los temas):
     OK = azul #066798 (texto blanco) · Cancelar + Ayuda = gris #c5c8cd (texto oscuro) --%>
.login-btn.z-button:has(.z-icon-Ok) { background-color: #066798 !important; color: #fff !important; border: 1px solid transparent !important; }
.login-btn.z-button:has(.z-icon-Ok):hover { background-color: #055580 !important; }
.login-btn.z-button:has(.z-icon-Ok) .z-icon-Ok:before { color: #fff !important; }
.login-btn.z-button:has(.z-icon-Cancel),
.login-btn.z-button:has(.z-icon-Help) { background-color: #c5c8cd !important; color: #404040 !important; border: 1px solid transparent !important; }
.login-btn.z-button:has(.z-icon-Cancel):hover,
.login-btn.z-button:has(.z-icon-Help):hover { background-color: #b3b7bd !important; color: #404040 !important; }
.login-btn.z-button:has(.z-icon-Cancel) .z-icon-Cancel:before,
.login-btn.z-button:has(.z-icon-Help) .z-icon-Help:before { color: #404040 !important; }

<%-- ============================================================
     CORRECCIONES (cliente) - al final, ganan la cascada
     ============================================================ --%>
<%-- (1) LOGIN: OK = color principal (texto blanco); Cancelar/Ayuda = gris claro (texto oscuro) --%>
.login-btn.z-button:has(.z-icon-Ok){background-color:#595959!important;color:#fff!important;border-color:transparent!important;}
.login-btn.z-button:has(.z-icon-Ok):hover{background-color:#404040!important;}
.login-btn.z-button:has(.z-icon-Ok) [class^="z-icon-"]:before,.login-btn.z-button:has(.z-icon-Ok) .z-icon-Ok:before{color:#fff!important;}
.login-btn.z-button:has(.z-icon-Cancel),.login-btn.z-button:has(.z-icon-Help){background-color:#c5c8cd!important;color:#2b2b2b!important;border-color:transparent!important;}
.login-btn.z-button:has(.z-icon-Cancel) [class^="z-icon-"]:before,.login-btn.z-button:has(.z-icon-Help) [class^="z-icon-"]:before{color:#2b2b2b!important;}

<%-- (2) TOPBAR: panel de usuario y enlaces SIEMPRE blancos (sin tocar el buscador) --%>
.desktop-user-panel,.desktop-user-panel *,.desktop-header-username,.desktop-header-font,.desktop-header .link{color:#fff!important;}
.desktop-user-panel [class*="z-icon-"]{color:#fff!important;}

<%-- (3) BOTONES form "+"/Accion, menu, calendario: fondo del tema + texto blanco --%>
.form-button.z-button,.form-button.z-button:focus,.z-button.btn-small,.calendar-box .z-button,[class*="calendar"] .z-button,.z-cal-time .z-button{background-color:#595959!important;color:#fff!important;border-color:transparent!important;}
.form-button.z-button:hover,.z-button.btn-small:hover{background-color:#404040!important;}
.form-button.z-button [class^="z-icon-"]:before,.z-button.btn-small [class^="z-icon-"]:before,.calendar-box .z-button [class^="z-icon-"]:before{color:#fff!important;}

<%-- (4) TITULOS de cuadros/paneles/dashboard: color del tema (no celeste) --%>
.z-panel-header,.z-panel-head,.z-panel-head .z-panel-header,.z-caption{background-color:#e0e0e0!important;background-image:none!important;color:#404040!important;}
.z-panel-header .z-label,.z-panel-header *,.z-caption .z-label{color:#404040!important;}

<%-- (5) VENTANAS blancas; headers neutros; solo pestañas y filas impares con tinte del tema --%>
.adwindow-form,.adwindow-form .z-row,.adwindow-form .z-cell,.adwindow-form .z-row-inner,.z-window,.z-window-content,.z-panel,.z-panel-children{background-color:#fff!important;}
.z-grid-header,.z-columns,.z-column,.z-listhead,.z-listheader,.z-column-content,.z-listheader-content{background:#f5f5f5!important;background-image:none!important;color:#444!important;}
.z-row.z-row-odd > .z-cell,.z-row.z-row-odd > .z-row-inner,.z-listitem.z-listbox-odd > .z-listcell,.z-listitem.z-listitem-odd > .z-listcell,.z-grid-odd > .z-cell,.z-grid-odd > .z-row-inner{background-color:#f2f2f2!important;}
.desktop-tabbox .z-tab-selected{border-bottom:2px solid #595959!important;background-color:#f2f2f2!important;}
.desktop-tabbox .z-tab-selected .z-tab-text{color:#404040!important;}

<%-- (6) Favoritos/Recientes: item seleccionado/hover = color de fila impar --%>
.menu-href:hover,.menu-href:active,.menu-href-selected,.menu-href.menu-href-selected,.favourite-item:hover,.recentitems-box .z-toolbarbutton:hover{background-color:#f2f2f2!important;text-decoration:none!important;}

<%-- ===== FIX FINAL (cliente) ===== --%>
<%-- Topbar: degradado BLANCO -> color del tema (logo sin transformar) --%>
.desktop-header{background:linear-gradient(90deg,#ffffff 0%,#595959 100%)!important;box-shadow:0 2px 6px rgba(0,0,0,0.10)!important;}
.desktop-user-panel,.desktop-user-panel *,.desktop-header-username,.desktop-header .link,.desktop-header-right [class*="z-icon-"],.desktop-user-panel [class*="z-icon-"]{color:#ffffff!important;}

<%-- Botones: FONDO SOLIDO (shorthand mata el degradado base que los dejaba claros) --%>
.login-box-footer .login-btn.btn-ok.z-button{background:#595959!important;background-image:none!important;color:#fff!important;}
.login-box-footer .login-btn.btn-ok.z-button .z-icon-Ok:before{color:#fff!important;}
.login-btn.btn-cancel.z-button,.login-btn.z-button:has(.z-icon-Help){background:#c5c8cd!important;background-image:none!important;color:#2b2b2b!important;}
.login-btn.btn-cancel.z-button .z-icon-Cancel:before,.login-btn.z-button:has(.z-icon-Help) .z-icon-Help:before{color:#2b2b2b!important;}
.z-button.btn-small{background:#595959!important;background-image:none!important;color:#fff!important;}
.z-button.btn-small:hover{background:#404040!important;}
.z-button.btn-small [class^="z-icon-"]:before{color:#fff!important;}
.form-button.z-button{background:#595959!important;background-image:none!important;color:#fff!important;}
.form-button.z-button [class^="z-icon-"]:before{color:#fff!important;}

<%-- Filas impares mas suaves y SOLO en grids/listas; el formulario de ventana queda blanco --%>
.z-listitem.z-listbox-odd > .z-listcell,.z-listitem.z-listitem-odd > .z-listcell,.z-row.z-row-odd > .z-cell,.z-row.z-row-odd > .z-row-inner,.z-grid-odd > .z-cell,.z-grid-odd > .z-row-inner{background-color:#f6f6f6!important;}
.adwindow-form .z-row > .z-cell,.adwindow-form .z-row > .z-row-inner{background-color:#ffffff!important;}

<%-- ===== FIX botones de dialogo/proceso (fondo solido, mata degradado base) ===== --%>
.btn-ok:not(.login-btn){background:#404040!important;background-image:none!important;color:#fff!important;}
.btn-new:not(.login-btn),.btn-save:not(.login-btn),.btn-reset:not(.login-btn),.btn-refresh:not(.login-btn){background:#595959!important;background-image:none!important;color:#fff!important;}
.btn-cancel:not(.login-btn),.btn-ignore:not(.login-btn){background:#9b1c1c!important;background-image:none!important;color:#fff!important;}
.btn-ok:not(.login-btn) [class^="z-icon-"]:before,.btn-new:not(.login-btn) [class^="z-icon-"]:before,.btn-save:not(.login-btn) [class^="z-icon-"]:before,.btn-reset:not(.login-btn) [class^="z-icon-"]:before,.btn-refresh:not(.login-btn) [class^="z-icon-"]:before,.btn-cancel:not(.login-btn) [class^="z-icon-"]:before,.btn-ignore:not(.login-btn) [class^="z-icon-"]:before{color:#fff!important;}

<%-- ===== FIX menu-tree (no celeste) + sin bold ===== --%>
<%-- Menu (arbol): hover/seleccion = color de fila impar, no el celeste base --%>
.z-tree .z-treerow:hover > .z-treecell,.z-tree .z-treerow:hover > .z-treecell > .z-treecell-content,.z-treerow.z-treerow-selected > .z-treecell,.z-treerow.z-treerow-selected > .z-treecell > .z-treecell-content,.z-treerow.z-treerow-seld > .z-treecell,.z-tree .z-treerow-over > .z-treecell,.z-treerow-selected .z-treecell-content,.z-treerow:hover .z-treecell-content{background-color:#f6f6f6!important;}
<%-- Sin negrita en botones y enlaces de la barra superior --%>
.login-btn,.btn-ok,.btn-cancel,.btn-new,.btn-reset,.btn-refresh,.btn-save,.btn-ignore,.btn-ok .z-button,.desktop-user-panel,.desktop-user-panel a,.desktop-header .link,.desktop-header-username,.desktop-header-font{font-weight:normal!important;}

<%-- ===== Boton Reinicia: tono neutro distinto (todos los temas) ===== --%>
.btn-reset:not(.login-btn){background:#6b7785!important;background-image:none!important;color:#fff!important;}
.btn-reset:not(.login-btn):hover{background:#566373!important;}
.btn-reset:not(.login-btn) [class^="z-icon-"]:before{color:#fff!important;}

<%-- ===== Boton Reinicia: tono derivado de la paleta del tema ===== --%>
.btn-reset:not(.login-btn){background:#8a8a8a!important;background-image:none!important;color:#fff!important;}
.btn-reset:not(.login-btn):hover{background:#737373!important;}
.btn-reset:not(.login-btn) [class^="z-icon-"]:before{color:#fff!important;}

<%-- FIX: icono/boton de la busqueda global (va sobre fondo blanco del topbar) --%>
.desktop-header .global-search-box .z-bandbox-input{color:var(--at-text)!important;}
.desktop-header .global-search-box .z-bandbox-button,
.desktop-header .global-search-box .z-bandbox-icon,
.desktop-header .global-search-box [class*="z-icon-"]{color:var(--at-text-muted)!important;}
.desktop-header .global-search-box .z-bandbox-button:hover .z-bandbox-icon,
.desktop-header .global-search-box .z-bandbox-button:hover [class*="z-icon-"]{color:var(--at-primary)!important;}

<%-- FIX: iconos de accion (New/estrella) en popup de busqueda global, favoritos y recientes (se veian en blanco) --%>
.global-search-box .z-toolbarbutton [class*="z-icon-"],
.global-search-box .z-toolbarbutton [class*="z-icon-"]:before,
.menu-search-list-toolbar-cell [class*="z-icon-"],
.menu-search-list-toolbar-cell [class*="z-icon-"]:before,
.fav-new-btn [class*="z-icon-"], .fav-new-btn [class*="z-icon-"]:before,
.new-toolbarbutton [class*="z-icon-"], .new-toolbarbutton [class*="z-icon-"]:before{
	color: var(--at-primary) !important;
}

<%-- FIX: botones txt-btn (dialogo Acerca de / Errores: Garbage Collect, Guardar, Enviar email, Ver) --%>
.txt-btn.z-button, .txt-btn.z-button:focus{
	background: var(--at-header) !important;
	background-image: none !important;
	color: var(--at-text) !important;
	border: 1px solid var(--at-border) !important;
	font-weight: normal !important;
}
.txt-btn.z-button:hover{ background: var(--at-hover) !important; background-image:none !important; }
.txt-btn.z-button [class*="z-icon-"], .txt-btn.z-button [class*="z-icon-"]:before{ color: var(--at-text) !important; }

<%-- AndesTI: barra superior - panel de usuario compacto (evita que "Soporte | Preferencia | ..." se corte) y logo del tenant --%>
.desktop-header-left .desktop-header-logo{max-height:36px!important;max-width:180px!important;width:auto!important;height:auto!important;object-fit:contain;cursor:pointer;margin-right:6px;}
.desktop-user-panel{height:auto!important;padding:0 8px 0 0!important;}
.desktop-user-panel .z-vbox-separator,.desktop-user-panel .z-hbox-separator{height:0!important;width:2px!important;padding:0!important;}
.desktop-user-panel td{padding-top:0!important;padding-bottom:0!important;}
.desktop-header .desktop-user-panel .desktop-header-font,
.desktop-header .desktop-user-panel .desktop-header-username,
.desktop-header .desktop-user-panel .link,
.desktop-header .desktop-user-panel .link .z-toolbarbutton-content{font-size:11px!important;line-height:15px!important;}
.desktop-header .desktop-user-panel .desktop-header-username{font-weight:600!important;padding:0 4px!important;white-space:nowrap;}
.desktop-header .desktop-user-panel .link{padding:1px 5px!important;height:auto!important;min-height:0!important;}
.desktop-header .desktop-user-panel .z-separator-vertical-bar{height:11px!important;border-color:rgba(255,255,255,0.6)!important;}
.desktop-header .desktop-user-panel .desktop-header-username,.desktop-header .desktop-user-panel .link{text-shadow:0 1px 2px rgba(0,0,0,0.35);}
