# Proyecto ALU

## Estructura de Archivos del Proyecto ALU


* Proyecto_ALU/: Directorio raíz del proyecto que contiene todas las subcarpetas y archivos relacionados.

### Subdirectorios

- **src/:** Carpeta para los archivos fuente VHDL.
* **components/:** Subcarpeta que contiene módulos individuales de la ALU, como sumador, restador, multiplicador, divisor, y multiplexor.
-  **top/:** Contiene la descripción de nivel superior del proyecto, como el archivo de la ALU completa (ALU.vhd).
- **utils/:** Archivos de utilidades y paquetes comunes.
- **testbench/:** Archivos de banco de pruebas para verificar el funcionamiento de cada módulo y del sistema completo.
- **sim/:** Carpeta para los archivos de configuración de simulación.
- **modelsim/:** Scripts de configuración para ModelSim.
- **ghdl/:** (si usas GHDL, puedes tener archivos relacionados aquí).

- **doc/:** Documentación del proyecto, incluyendo especificaciones de diseño e informes de prueba.

- **work/:** Directorio de trabajo que ModelSim utiliza para almacenar bibliotecas compiladas.



```plaintext
Proyecto_ALU/
├── src/
│ ├── components/
│ │ ├── sumador/
│ │ │ ├── sum1b.vhd
│ │ │ └── sumNb.vhd
│ │ ├── restador/
│ │ │ └── restador.vhd
│ │ ├── multiplicador/
│ │ │ └── multiplicador.vhd
│ │ ├── divisor/
│ │ │ └── divisor.vhd
│ │ └── mux.vhd
│ ├── top/
│ │ └── ALU.vhd
│ └── utils/
│ └── packages.vhd
├── testbench/
│ ├── ALU_tb.vhd
│ ├── sumNb_tb.vhd
│ ├── restador_tb.vhd
│ ├── multiplicador_tb.vhd
│ └── divisor_tb.vhd
├── sim/
│ ├── modelsim/
│ │ ├── waves.do
│ │ └── init.do
│ └── ghdl/
├── doc/
│ ├── design_spec.md
│ └── test_report.md
└── work/
```
