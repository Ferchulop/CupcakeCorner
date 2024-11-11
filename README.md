# CupcakeCorner
CupcakeCorner es una app desarrollada en SwiftUI. De pedidos de cupcakes que permite a los usuarios personalizar y realizar pedidos a través de un formulario. La app integra una funcionalidad de red asíncrona para enviar el pedido a un servidor y mostrar una confirmación de pedido tras su procesamiento.

## Características: 
- Lógica, clase Order: uso de @Observable, propiedades calculadas, **CodingKey**(mapeo de propiedades para que el servidor interprete correctamente las propiedades)
- Personalización de Pedido: Selecciona tipo y cantidad, uso de Stepper y Picker.
- Solicitud especial: Uso de Toogle para añadir ingrediente extra.
- Formulario para datos de cliente: Cumplimentar datos personales de cliente, uso de Form(datos personales), .disabled(para deshabilitar), @Bindable(actualizar vista automaticamente si alguna propiedad cambia)
- Cálculo de Coste en Tiempo Real: Propiedad calculada(considera cantidad, tipo y extras), solicitud HTTP asíncrona(uso de **async y await**), URLSession(gestión de solicitudes HTTP), ScrollView, AsyncImage(carga y muestra imagenes), ProgressView(indicador de carga)
