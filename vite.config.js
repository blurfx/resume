import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'
import { fileURLToPath } from 'url';
import { dirname, resolve } from 'path';

const _filename = fileURLToPath(import.meta.url);
const _dirname = dirname(_filename);


// https://vitejs.dev/config/
export default defineConfig({
  plugins: [svelte()],
  resolve: {
    alias: {
      '~': resolve(_dirname, 'src')
    }
  }
})
