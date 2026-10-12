# Temas AndesTI para iDempiere v13

Conjunto de temas ZK nombrados (no sobreescriben el tema del core). Cada uno es un
*fragment* de `org.adempiere.ui.zk` que aporta su propia carpeta `web/theme/{nombre}/`.
Se activan por configuración (`ZK_THEME`) y **conviven** en la misma instancia — incluso
se puede asignar un tema distinto por Cliente (tenant). El `iceblue_c` del core queda
intacto como default/fallback.

> Base: iDempiere **v13** (iceblue_c v13). Fuente: Inter/Nunito + paleta por tema.

---

## 1. Catálogo de temas

| Bundle | Nombre de tema (`ZK_THEME`) | Paleta |
|---|---|---|
| `org.andesti.zk.theme.teal`     | `andesti_teal`     | Atlas teal (turquesa `#27b1ae` + azul `#136f9a`) |
| `org.andesti.zk.theme.orange`   | `andesti_orange`   | Naranja `#ed7132` |
| `org.andesti.zk.theme.platinum` | `andesti_platinum` | Azul acero `#6096ba` / dusk `#274c77` |
| `org.andesti.zk.theme.charcoal` | `andesti_charcoal` | Monocromo gris `#595959` |
| `org.andesti.zk.theme.almond`   | `andesti_almond`   | Cálido tierra `#b08968` |
| `org.andesti.zk.theme.red`      | `andesti_red`      | Rojo/naranja `#f94144` → `#f3722c` |

Comunes a todos: tipografía, campos planos (editables blancos / bloqueados grises),
headers de grilla neutros, zebra striping, login de pantalla partida (imagen a la
izquierda), y botones de login **OK `#066798`** / **Cancelar+Ayuda `#c5c8cd`**.

---

## 2. Generar los .jar (para subir por Felix)

Requiere `jar` del JDK (ya disponible en el servidor de iDempiere).

```powershell
$base='C:\app\sources\plugin\temas'
$bundles='teal','orange','platinum','charcoal','almond','red'
foreach($n in $bundles){
  $b="org.andesti.zk.theme.$n"
  Push-Location "$base\$b"
  jar cfm "$base\$($b)_1.0.0.jar" META-INF\MANIFEST.MF metainfo web
  Pop-Location
}
```

(En Linux es el mismo comando `jar` desde dentro de cada carpeta del bundle.)

---

## 3. Instalar en Apache Felix Web Console

1. **Bundles → Install/Update** → subir el `.jar` del tema.
2. Queda como **Fragment / Resolved** (los fragments NO van a "Active" — es normal).
3. **Refresh Packages** sobre el bundle host `org.adempiere.ui.zk`.
   > Aviso: esto desconecta a los usuarios conectados y fuerza recarga.

> Alternativa (directorio explotado, imágenes reemplazables por FileZilla):
> copiar la **carpeta** del bundle a `plugins/` e instalar con
> `reference:file:/opt/idelumens/plugins/org.andesti.zk.theme.teal`.

---

## 4. Activar un tema

System Configurator → clave **`ZK_THEME`** = nombre del tema, p. ej. `andesti_teal`.
- Nivel **System** → afecta a todos los clientes.
- Nivel **Cliente** → ese tenant usa ese tema (otros siguen con el suyo / el default).

Luego: cerrar sesión + Ctrl+F5 (o ventana de incógnito). Si la primera vez no toma,
correr **Reinicia Cache**.

---

## 5. Imágenes (logo, favicon, panel del login)

Cada tema trae imágenes por defecto en `web/theme/{tema}/images/`. Se pueden
**sobrescribir por configuración** (sin tocar el jar) poniendo una URL en SysConfig;
si la clave está vacía, usa la imagen del directorio.

| Imagen | SysConfig | Notas |
|---|---|---|
| Logo del topbar | `ZK_LOGO_SMALL` | usar PNG **claro/blanco** (el topbar es oscuro) |
| Logo del login (formulario) | `ZK_LOGO_LARGE` | |
| Favicon (pestaña) | `ZK_BROWSER_ICON` | |
| Imagen lateral del login | `ZK_LOGIN_SIDE_IMAGE` | imagen vertical, se recorta a `cover` |

> La URL puede ser externa, una imagen servida por iDempiere, o un `data:` URI
> (base64) para no depender de hosting. Vacío = imagen del tema.

Si en cambio instalaste como **directorio explotado**, también puedes reemplazar
los archivos `images/header-logo.png`, `login-logo.png`, `icon.png`, `login-side.png`
directamente por FileZilla.

---

## 6. Agregar una paleta nueva

1. Copiar el bundle `org.andesti.zk.theme.teal` como base.
2. Renombrar carpeta `web/theme/andesti_teal` → `web/theme/andesti_<nuevo>` y actualizar
   las referencias `andesti_teal` en `.zul` / `.dsp`.
3. Hacer un *swap* de color por rol (primario, chrome, dark, fondo, header, borde,
   muted, soft, hover, selección, acento) y fijar el gradiente del topbar.
4. Actualizar `META-INF/MANIFEST.MF` (Bundle-SymbolicName, Bundle-Name) y
   `metainfo/zk/lang-addon.xml` (addon-name + javascript-module únicos).
   ⚠️ **El `lang-addon.xml` NO debe tener `<!DOCTYPE ...>`** — el parser XML de ZK v13
   (disallow-doctype-decl=true) lo rechaza y el webapp `/webui` no arranca (bucle de
   arranque). Va directo de `<?xml?>` a `<language>`.
5. Activar con `ZK_THEME = andesti_<nuevo>`.

---

## Notas

- No reemplaza el tema del core: `ZK_THEME` solo *selecciona* qué carpeta de tema usar.
- Si `ZK_THEME` apunta a un tema inexistente/roto, iDempiere cae a `iceblue_c`.
- Los botones del login (`#066798` / `#c5c8cd`) son iguales en todos los temas.
- Personalizaciones del tema viven en `web/theme/{tema}/css/fragment/custom.css.dsp`
  (hook oficial v13, incluido al final → gana la cascada).
