# Proyecto ALU (Unidad Aritmético-Lógica) en VHDL

## Descripción

Este proyecto implementa una Unidad Aritmético-Lógica (ALU) en VHDL. Una ALU es un componente esencial en los procesadores modernos, responsable de realizar operaciones aritméticas y lógicas sobre los datos. Este diseño modular permite la simulación y prueba de diferentes operaciones mediante bancos de pruebas detallados.

## Funcionalidades

La ALU soporta las siguientes operaciones:

- **Suma:** Realiza la suma de dos operandos de 4 bits y produce un resultado de 4 bits junto con un bit de acarreo.
- **Resta:** Realiza la resta entre dos operandos de 4 bits.
- **Multiplicación:** Calcula el producto de dos operandos de 4 bits.
- **División:** Realiza la división entre dos operandos de 4 bits y produce cociente y resto.
- **Operaciones Lógicas:** Incluye operaciones como AND, OR, y XOR entre los operandos de 4 bits.

## Estructura del Proyecto

El proyecto está organizado en varias carpetas para facilitar la gestión de componentes, bancos de pruebas y documentación:

- **src/**: Contiene los archivos fuente VHDL, organizados por componentes y módulos.
- **testbench/**: Incluye bancos de pruebas para verificar la funcionalidad de cada componente y de la ALU en conjunto.
- **sim/**: Archivos de simulación y scripts para ModelSim y GHDL.
- **doc/**: Documentación del proyecto, incluyendo especificaciones de diseño e informes de prueba.

## Requisitos

Para compilar y simular este proyecto, se necesita:

- ModelSim o GHDL para la simulación de archivos VHDL.
- Git para la gestión de versiones.

## Instrucciones de Uso

1. **Clonar el repositorio:**

   ```bash
   git clone https://github.com/cpatagon/ALU_project.git
```
## Estructura de Archivos


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
