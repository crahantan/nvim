# Configuración Personal de Neovim

Este repositorio contiene mis archivos de configuración personalizados para Neovim, diseñados para optimizar y mejorar la experiencia de edición.

## Estructura del Repositorio

- `init.lua`: Archivo principal de configuración que inicializa y configura los plugins y ajustes personalizados.
- `lua/`: Directorio que contiene módulos Lua adicionales utilizados en la configuración.

## Instalación

1. **Clonar el repositorio:**

   ```sh
   git clone https://github.com/crahantan/nvim-dotfiles.git ~/.config/nvim
   ```

2. **Iniciar Neovim:**

   Al abrir Neovim, los plugins especificados en la configuración se instalarán automáticamente.

## Plugins Utilizados

Algunos de los plugins incluidos en esta configuración son:

- [**nvim-treesitter**](https://github.com/nvim-treesitter/nvim-treesitter)**:** Proporciona resaltado de sintaxis avanzado y mejoras en el parsing del código.
- [**telescope.nvim**](https://github.com/nvim-telescope/telescope.nvim)**:** Herramienta de búsqueda y exploración fácil de archivos y contenidos.
- [**nvim-lspconfig**](https://github.com/neovim/nvim-lspconfig)**:** Configuración para servidores de lenguaje en Neovim.
- [**packer.nvim**](https://github.com/wbthomason/packer.nvim)**:** Administrador de plugins para Neovim basado en Lua.

## Atajos de Teclado Personalizados

- ``: Buscar archivos con Telescope.
- ``: Buscar dentro de archivos.
- ``: Buscar buffers abiertos.
- ``: Cerrar buffer actual.

*(Nota: Puedes añadir más atajos personalizados según tu configuración.)*

## Personalización

Para ajustar esta configuración a tus necesidades:

- **Modificar **``: Ajusta los parámetros y opciones según tus preferencias.
- **Editar archivos en **``: Personaliza módulos específicos para funcionalidades adicionales.

## Contribuciones

Si deseas contribuir a mejorar esta configuración:

1. Realiza un fork del repositorio.
2. Crea una nueva rama (`git checkout -b mejora/tu-mejora`).
3. Realiza tus cambios y haz commit (`git commit -m 'Descripción de la mejora'`).
4. Sube tus cambios (`git push origin mejora/tu-mejora`).
5. Abre un Pull Request detallando tus modificaciones.

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.


