### **Universidad Fidélitas**

**Facultad de Ingeniería**

**Curso:** Programación para Dispositivos Móviles

**Código:** SC-703

**Estudiante:** Randy Martínez Sandí

**Profesor:** Rafael Villalta Vargas

**Fecha:** 10 de noviembre del 2026

---

#### Proyecto Final: ResQFood CR - Avance 2

Enlaces de Entrega del Proyecto

- **Enlace directo al proyecto en FlutterFlow:**
  - **ID:** res-q-food-app-cjpg22
  - **Enlace:** [https://app.flutterflow.io/project/res-q-food-app-cjpg22](https://app.flutterflow.io/project/res-q-food-app-cjpg22)
  - *(Nota: Permisos de visualización y edición concedidos al correo del docente según la consigna).*

- **Enlace al repositorio en GitHub:**
  - **Repo:** SC-703 - Proyecto Final (Avance 2)
  - **Enlace:** [https://github.com/randyma01/SC-703-Programacion-Dispositivos-Moviles/tree/main/proyecto-final](https://github.com/randyma01/SC-703-Programacion-Dispositivos-Moviles/tree/main/proyecto-final)
  - **Pull Request:** [https://github.com/randyma01/SC-703-Programacion-Dispositivos-Moviles/pull/X](https://github.com/randyma01/SC-703-Programacion-Dispositivos-Moviles/pull/X)

---

### Historias de Usuario Implementadas en este Avance (Cumplimiento: 66.7%)

El presente avance cubre la implementación funcional y reactiva de **8 de las 12 historias de usuario (66.7% del backlog total)** definidas en el Avance 1, integrando conexión activa a Firebase (Authentication y Cloud Firestore), fidelidad al prototipo de Figma y diferenciación real de roles de usuario:

#### A. Flujo de Consumidor (Cliente):

1. **HU-01: Registro e Inicio de Sesión Dual (EP-01)**
   - Autenticación dual por Google Sign-In y Correo electrónico/Contraseña mediante Firebase Auth.
   - Asignación, persistencia y control de navegación según el rol (`consumidor` / `comercio`).

2. **HU-02: Visualización de Comercios y Paquetes Disponibles (EP-02)**
   - Catálogo en tiempo real conectado a Firestore con información de comercios, inventario de paquetes y badge reactivo de "Agotado" cuando las existencias llegan a 0.

3. **HU-03: Búsqueda y Filtrado de Alimentos (EP-02)**
   - Barra de búsqueda de texto reactiva y filtrado interactivo mediante chips de categoría (Panadería, Repostería, Cafetería, Comida preparada).

4. **HU-04: Detalle de Paquete y Franja de Retiro (EP-03)**
   - Ficha técnica detallada, visualización de precio original tachado, precio de rescate, cálculo visual de porcentaje de ahorro (badge `-XX%`), franja horaria de recolección y advertencias de alérgenos.

5. **HU-05: Reserva y Pago Transaccional (EP-04)**
   - Flujo de compra con selección de método de pago simulado, descuento transaccional en tiempo real de existencias en Firestore (`available_stock - 1`) y generación del registro en la colección `orders`.

6. **HU-06: Comprobante y Código QR de Retiro (EP-05)**
   - Generación de comprobante digital dinámico con temporizador regresivo de tiempo límite de retiro y renderizado de código QR único para canje presencial.

#### B. Flujo de Administrador (Comercio):

7. **HU-12: Tablero de Pedidos y Unidades del Día / Dashboard (EP-07)**
   - Panel de control del comercio con 4 métricas clave en tiempo real: paquetes *Publicados*, *Reservados*, *Entregados* y *Caja total acumulada en ₡*.
   - Monitoreo en vivo de la lista de "Retiros pendientes" vinculada a las órdenes activas.
   - Indicador de impacto ecológico comunitario (*kg de comida rescatada*).

8. **HU-09: Publicación de Paquetes Sorpresa (EP-07)**
   - Formulario ágil para que el establecimiento publique paquetes sorpresa diarios indicando inventario disponible, precios con descuento, franja horaria y alérgenos, con persistencia inmediata en el catálogo de consumidores.
