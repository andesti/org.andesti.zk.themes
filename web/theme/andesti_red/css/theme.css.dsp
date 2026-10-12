<%@ page contentType="text/css;charset=UTF-8" %>
<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>
<%@ taglib uri="http://www.idempiere.org/dsp/web/util" prefix="u" %>

@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap');

<%-- Tokens Andesti - paleta oficial ATLAS + fuente Inter --%>
:root {
	--at-bg: #fdf7f4;
	--at-surface: #ffffff;
	--at-surface-locked: #f5ede9;
	--at-header: #f7eae5;
	--at-text: #3d3a39;
	--at-text-muted: #9a8d88;
	--at-border: #f0ddd5;
	--at-primary: #f94144;      <%-- rojo (acentos suaves) --%>
	--at-primary-dark: #d32f32;
	--at-primary-soft: #fde0e0;
	--at-blue: #f3722c;         <%-- naranja-rojo (chrome interactivo) --%>
	--at-dark: #3d3a39;         <%-- azul oscuro (botones OK/Accion, texto) --%>
	--at-accent: #f8961e;       <%-- naranja --%>
	--at-hover: #fef4f0;
	--at-success: #f94144;
	--at-warning: #f8961e;
	--at-error: #9b1c1c;
	--at-focus-shadow: rgba(249, 65, 68, 0.22);
	--at-focus-shadow-login: rgba(249, 65, 68, 0.18);
	--at-header-shadow: rgba(61, 58, 57, 0.25);
}

html,body {
	margin: 0;
	padding: 0;
	height: 100%;
	width: 100%;
	background-color: #fdf7f4;
	color: #3d3a39;
	font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	overflow: hidden;
}

.z-html p{
	margin:0px;
}

.z-initing {
    background-image: url(${c:encodeURL('~./theme/andesti_red/images/zssosepowered.png')}) !important;
}

[class*="z-"]:not([class*="z-icon-"]):not([class*="z-group-icon-"]) {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
@media screen and (min-device-width: 2500px) {
	[class*="z-"]:not([class*="z-icon-"]):not([class*="z-group-icon-"]) {
		font-size: 14px;
	}
}
@media screen and (max-device-width: 2499px) {
	[class*="z-"]:not([class*="z-icon-"]):not([class*="z-group-icon-"]) {
		font-size: 13px;
	}
}
@media screen and (max-device-width: 1899px) {
	[class*="z-"]:not([class*="z-icon-"]):not([class*="z-group-icon-"]) {
		font-size: 12px;
	}
}
@media screen and (max-device-width: 1399px) {
	[class*="z-"]:not([class*="z-icon-"]):not([class*="z-group-icon-"]) {
		font-size: 11px;
	}
}

<%-- Mobile/Tablet --%>
.tablet-scrolling {
	-webkit-overflow-scrolling: touch;
}
<%-- default font size for mobile --%>
.mobile [class*="z-"]:not([class*="z-icon-"]):not([class*="z-group-icon-"]) {
    font-size: 13px;
}
<%-- the not=xyz is needed to get this selected over standard zk rule --%>
.mobile [class*="z-icon-"]:not([class*="xyz"]), .mobile [class*="z-group-icon-"] {
    font-size: 13px;
}

<%-- vbox fix for firefox and ie --%>
table.z-vbox > tbody > tr > td > table {
	width: 100%;	
}

<%-- decorate file drop area --%>
.attachment-drag-entered {
    border: 5px dashed #3fb900 !important;
}

<c:include page="fragment/login.css.dsp" />

<c:include page="fragment/desktop.css.dsp" />

<c:include page="fragment/application-menu.css.dsp" />

<c:include page="fragment/gadget.css.dsp" />

<c:include page="fragment/toolbar.css.dsp" />

<c:include page="fragment/button.css.dsp" />

<c:include page="fragment/adwindow.css.dsp" />
			
<c:include page="fragment/grid.css.dsp" />

<c:include page="fragment/input-element.css.dsp" />

<c:include page="fragment/tree.css.dsp" /> 

<c:include page="fragment/field-editor.css.dsp" />

<c:include page="fragment/group.css.dsp" />

<c:include page="fragment/tab.css.dsp" />

<c:include page="fragment/menu-tree.css.dsp" />

<c:include page="fragment/info-window.css.dsp" />

<c:include page="fragment/window.css.dsp" />

<c:include page="fragment/form.css.dsp" />

<c:include page="fragment/toolbar-popup.css.dsp" />	

<c:include page="fragment/setup-wizard.css.dsp" />

<c:include page="fragment/about.css.dsp" />

<c:include page="fragment/tab-editor.css.dsp" />

<c:include page="fragment/find-window.css.dsp" />

<c:include page="fragment/help-window.css.dsp" />

<c:include page="fragment/drill-window.css.dsp" />

<c:include page="fragment/borderlayout.css.dsp" />

<c:include page="fragment/parameter-process.css.dsp" />

<c:include page="fragment/window-size.css.dsp" />

<c:include page="fragment/font-icons.css.dsp" />

<c:include page="fragment/keikai.css.dsp" />

<%-- AndesTI: siempre incluido (el chequeo del core se cachea por tema de contexto y falla con temas por tenant) --%>
<c:include page="fragment/custom.css.dsp" />
