export default {
  'src/**/*.{ts,svelte}': [
    'eslint --fix',
    'yarn svelte-check',
  ],
};
